import json
import re
import mysql.connector
from neo4j import GraphDatabase
from langchain_openai import ChatOpenAI
from langchain.prompts import PromptTemplate
from langchain.chains import LLMChain
from typing import List, Dict, Any
import logging
from dataclasses import dataclass
from datetime import datetime

# 配置日志
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


@dataclass
class Entity:
    """实体类"""
    name: str
    type: str
    attributes: Dict[str, Any]
    confidence: float = 0.0


@dataclass
class Relation:
    """关系类"""
    head: str
    relation: str
    tail: str
    confidence: float = 0.0


class MoldKGExtractor:
    """模具领域知识图谱抽取器"""

    def __init__(self, openai_api_key: str, mysql_config: dict, neo4j_config: dict):
        self.openai_api_key = openai_api_key
        self.mysql_config = mysql_config
        self.neo4j_config = neo4j_config

        # 初始化LLM
        self.llm = ChatOpenAI(openai_api_key=openai_api_key,
                              temperature=0.4,
                              base_url="https://api.key77.cn/v1", max_tokens=2048
                              )

        # 加载Schema
        self.schema = self._load_schema()

        # 初始化数据库连接
        self.mysql_conn = None
        self.neo4j_driver = None

        # 创建Prompt模板
        self.entity_prompt = self._create_entity_prompt()
        self.relation_prompt = self._create_relation_prompt()

    def _load_schema(self) -> dict:
        """加载模具领域Schema"""
        schema = {
            "schema_name": "模具领域本体框架",
            "version": "1.0",
            "description": "适用于冲模、塑料压缩模等各类模具的实体关系抽取Schema",
            "entities": {
                "模具类型": {
                    "description": "各种模具的分类",
                    "attributes": ["模具名称", "英文名称", "定义描述", "所属大类"]
                },
                "模具零部件": {
                    "description": "构成模具的各种零件和部件",
                    "attributes": ["零件名称", "英文名称", "功能描述", "结构特征"]
                },
                "设计要素": {
                    "description": "模具设计中的关键参数和要素",
                    "attributes": ["要素名称", "英文名称", "定义", "影响因素"]
                },
                "几何参数": {
                    "description": "描述模具和工件几何特征的参数",
                    "attributes": ["参数名称", "参数值", "测量方法", "单位"]
                },
            },
            "relations": {
                "子类关系": ["模具类型", "模具类型"],
                "组成关系": ["模具类型", "模具零部件"],
                "包含要素": ["模具零部件", "设计要素"],
                "结构参数": ["设计要素", "几何参数"],
            }
        }

        return schema

    def _create_entity_prompt(self) -> PromptTemplate:
        """创建实体抽取Prompt模板"""
        template = """
你是一个模具领域的专家，请从以下文本中抽取实体信息。
Schema信息：
{schema_info}

文本内容：
{text}

抽取要求：
1. 识别文本中的实体，并分类为以下类型之一：模具类型、模具零部件、设计要素、几何参数
2. 对每个实体提取相关属性信息
3. 返回JSON格式结果

其中关于冲模的Json例子如下所示:
{{
    "entities": [
        {{
            "name": "冲模",
            "type": "模具类型",
            "attributes": {{
                "模具名称": "冲模",
                "英文名称": "stamping die,stamping tool",
                "定义描述": "使金属、非金属板料或型材在压力作用下分离、成形或接合为制品、制件的模具。",
                "所属大类": "模具"
            }},
            "confidence": 0.92
        }}
    ]
}}
请严格按照JSON Schema 格式输出结果，不要包含其他额外信息。属性名字也严格按照Schema中定义的进行给出。请开始抽取：
"""
        return PromptTemplate(template=template, input_variables=["schema_info", "text"])

    def _create_relation_prompt(self) -> PromptTemplate:
        """创建关系抽取Prompt模板"""
        template = """
你是一个模具领域的专家，请从以下文本和实体列表中抽取实体间的关系。
Schema中定义的关系类型：
{relation_types}
已识别的实体：
{entities}
文本内容：
{text}
抽取要求：
1. 识别实体间的关系，关系类型必须是Schema中定义的类型之一：子类关系、组成关系、包含要素、结构参数
2. 关系三元组格式：(头实体, 关系类型, 尾实体)
3. 返回JSON格式结果
输出格式：
其中关于冲裁模与冲模关系的Json例子如下所示。
{{
    "relations": [
        {{
            "head": "冲裁模",
            "relation": "子类关系", 
            "tail": "冲模",
            "confidence": 0.95
        }}
    ]
}}
在待抽取文本中如果描述文字的格式如下所示；XX模是XXX的冲模、XX模是XX模的冲裁模，类似这种描述请建立两实体之间的子类关系）
请严格按照JSON Schema 格式输出结果，不要包含其他额外信息。请开始抽取：


"""
        return PromptTemplate(template=template, input_variables=["relation_types", "entities", "text"])

    def extract_entities(self, text: str) -> List[Entity]:
        """从文本中抽取实体"""
        try:
            schema_info = json.dumps(self.schema["entities"], ensure_ascii=False, indent=2)

            # 使用新的调用方式替代已弃用的 LLMChain
            prompt = self.entity_prompt.format(schema_info=schema_info, text=text)
            result = self.llm.invoke(prompt)

            # 处理返回结果，确保是字符串格式
            if hasattr(result, 'content'):
                result_text = result.content
            elif hasattr(result, 'text'):
                result_text = result.text
            else:
                result_text = str(result)

            # 解析结果
            try:
                parsed_result = json.loads(result_text)
                entities = []
                for entity_data in parsed_result.get("entities", []):
                    entity = Entity(
                        name=entity_data["name"],
                        type=entity_data["type"],
                        attributes=entity_data.get("attributes", {}),
                        confidence=entity_data.get("confidence", 0.0)
                    )
                    entities.append(entity)
                return entities
            except json.JSONDecodeError:
                logger.error(f"Failed to parse entity extraction result: {result_text}")
                return []

        except Exception as e:
            logger.error(f"Entity extraction failed: {e}")
            return []

    def extract_relations(self, text: str, entities: List[Entity]) -> List[Relation]:
        """从文本中抽取关系"""
        try:
            relation_types = list(self.schema["relations"].keys())
            entity_names = [entity.name for entity in entities]

            # 使用新的调用方式替代已弃用的 LLMChain
            prompt = self.relation_prompt.format(
                relation_types=json.dumps(relation_types, ensure_ascii=False),
                entities=json.dumps(entity_names, ensure_ascii=False),
                text=text
            )
            result = self.llm.invoke(prompt)

            # 处理返回结果，确保是字符串格式
            if hasattr(result, 'content'):
                result_text = result.content
            elif hasattr(result, 'text'):
                result_text = result.text
            else:
                result_text = str(result)

            # 解析结果
            try:
                parsed_result = json.loads(result_text)
                relations = []
                for relation_data in parsed_result.get("relations", []):
                    relation = Relation(
                        head=relation_data["head"],
                        relation=relation_data["relation"],
                        tail=relation_data["tail"],
                        confidence=relation_data.get("confidence", 0.0)
                    )
                    relations.append(relation)
                return relations
            except json.JSONDecodeError:
                logger.error(f"Failed to parse relation extraction result: {result_text}")
                return []

        except Exception as e:
            logger.error(f"Relation extraction failed: {e}")
            return []

    def connect_mysql(self):
        """连接MySQL数据库"""
        try:
            self.mysql_conn = mysql.connector.connect(**self.mysql_config)
            logger.info("MySQL connected successfully")
            self._create_mysql_tables()
        except Exception as e:
            logger.error(f"Failed to connect MySQL: {e}")
            raise

    def _create_mysql_tables(self):
        """创建MySQL表结构"""
        cursor = self.mysql_conn.cursor()

        # 创建实体表
        create_entity_table = """
        CREATE TABLE IF NOT EXISTS entities (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            type VARCHAR(100) NOT NULL,
            attributes JSON,
            confidence FLOAT,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            UNIQUE KEY unique_entity (name, type)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        """

        # 创建关系表
        create_relation_table = """
        CREATE TABLE IF NOT EXISTS relations (
            id INT AUTO_INCREMENT PRIMARY KEY,
            head_entity VARCHAR(255) NOT NULL,
            relation_type VARCHAR(100) NOT NULL,
            tail_entity VARCHAR(255) NOT NULL,
            confidence FLOAT,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            UNIQUE KEY unique_relation (head_entity, relation_type, tail_entity)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        """

        cursor.execute(create_entity_table)
        cursor.execute(create_relation_table)
        self.mysql_conn.commit()
        cursor.close()
        logger.info("MySQL tables created successfully")

    def save_to_mysql(self, entities: List[Entity], relations: List[Relation]):
        """保存到MySQL数据库"""
        cursor = self.mysql_conn.cursor()

        try:
            # 保存实体
            for entity in entities:
                insert_entity = """
                INSERT IGNORE INTO entities (name, type, attributes, confidence)
                VALUES (%s, %s, %s, %s)
                """
                cursor.execute(insert_entity, (
                    entity.name,
                    entity.type,
                    json.dumps(entity.attributes, ensure_ascii=False),
                    entity.confidence
                ))

            # 保存关系
            for relation in relations:
                insert_relation = """
                INSERT IGNORE INTO relations (head_entity, relation_type, tail_entity, confidence)
                VALUES (%s, %s, %s, %s)
                """
                cursor.execute(insert_relation, (
                    relation.head,
                    relation.relation,
                    relation.tail,
                    relation.confidence
                ))

            self.mysql_conn.commit()
            logger.info(f"Saved {len(entities)} entities and {len(relations)} relations to MySQL")

        except Exception as e:
            self.mysql_conn.rollback()
            logger.error(f"Failed to save to MySQL: {e}")
            raise
        finally:
            cursor.close()

    def connect_neo4j(self):
        """连接Neo4j数据库"""
        try:
            self.neo4j_driver = GraphDatabase.driver(
                self.neo4j_config["uri"],
                auth=(self.neo4j_config["user"], self.neo4j_config["password"])
            )
            logger.info("Neo4j connected successfully")
        except Exception as e:
            logger.error(f"Failed to connect Neo4j: {e}")
            raise

    def migrate_to_neo4j(self):
        """从MySQL迁移数据到Neo4j"""
        cursor = self.mysql_conn.cursor(dictionary=True)

        try:
            with self.neo4j_driver.session() as session:
                # 清空Neo4j数据库（可选）
                # session.run("MATCH (n) DETACH DELETE n")

                # 迁移实体
                cursor.execute("SELECT * FROM entities")
                entities = cursor.fetchall()

                for entity in entities:
                    session.run(
                        f"CREATE (n:{entity['type'].replace(' ', '_')} {{name: $name, type: $type, attributes: $attributes, confidence: $confidence}})",
                        name=entity['name'],
                        type=entity['type'],
                        attributes=json.dumps(json.loads(entity['attributes']), ensure_ascii=False),
                        confidence=float(entity['confidence'])
                    )

                # 迁移关系
                cursor.execute("SELECT * FROM relations")
                relations = cursor.fetchall()

                for relation in relations:
                    # 清理关系类型名称，使其符合Neo4j规范
                    relation_type = relation['relation_type'].replace(' ', '_').upper()

                    session.run(
                        f"""
                        MATCH (h), (t)
                        WHERE h.name = $head AND t.name = $tail
                        CREATE (h)-[:{relation_type} {{confidence: $confidence}}]->(t)
                        """,
                        head=relation['head_entity'],
                        tail=relation['tail_entity'],
                        confidence=float(relation['confidence'])
                    )

                logger.info(f"Migrated {len(entities)} entities and {len(relations)} relations to Neo4j")

        except Exception as e:
            logger.error(f"Failed to migrate to Neo4j: {e}")
            raise
        finally:
            cursor.close()

    def process_document(self, text: str):
        """处理单个文档"""
        # 文本预处理
        processed_text = self._preprocess_text(text)

        # 分段处理（针对长文档）
        segments = self._split_text(processed_text)

        all_entities = []
        all_relations = []

        for segment in segments:
            # 抽取实体
            entities = self.extract_entities(segment)
            all_entities.extend(entities)

            # 抽取关系
            relations = self.extract_relations(segment, entities)
            all_relations.extend(relations)

        # 去重
        unique_entities = self._deduplicate_entities(all_entities)
        unique_relations = self._deduplicate_relations(all_relations)

        return unique_entities, unique_relations

    def _preprocess_text(self, text: str) -> str:
        """文本预处理"""
        # 清理特殊字符和多余空白
        text = re.sub(r'\s+', ' ', text)
        text = text.strip()
        return text

    def _split_text(self, text: str, max_length: int = 200) -> List[str]:
        """分割长文本"""
        if len(text) <= max_length:
            return [text]

        segments = []
        current_pos = 0

        while current_pos < len(text):
            end_pos = min(current_pos + max_length, len(text))

            # 尝试在句号处分割
            if end_pos < len(text):
                last_period = text.rfind('。', current_pos, end_pos)
                if last_period > current_pos:
                    end_pos = last_period + 1

            segments.append(text[current_pos:end_pos])
            current_pos = end_pos

        return segments

    def _deduplicate_entities(self, entities: List[Entity]) -> List[Entity]:
        """实体去重"""
        seen = set()
        unique_entities = []

        for entity in entities:
            key = (entity.name, entity.type)
            if key not in seen:
                seen.add(key)
                unique_entities.append(entity)

        return unique_entities

    def _deduplicate_relations(self, relations: List[Relation]) -> List[Relation]:
        """关系去重"""
        seen = set()
        unique_relations = []

        for relation in relations:
            key = (relation.head, relation.relation, relation.tail)
            if key not in seen:
                seen.add(key)
                unique_relations.append(relation)

        return unique_relations

    def close_connections(self):
        """关闭数据库连接"""
        if self.mysql_conn:
            self.mysql_conn.close()
        if self.neo4j_driver:
            self.neo4j_driver.close()


def main():
    """主函数"""
    # 配置信息
    config = {
        "openai_api_key": "sk-Cqtk6oSUbgKHlUiAuTX4Fc4cs7AvMqVEbBT838cLp4sXoj2e",
        "mysql_config": {
            "host": "localhost",
            "user": "root",
            "password": "szy5288123",
            "database": "bupt",
            "charset": "utf8mb4"
        },
        "neo4j_config": {
            "uri": "neo4j+s://3786e454.databases.neo4j.io",
            "user": "neo4j",
            "password": "xhqBLtzPPd_eD7OmvabF3FBUPNM3gzUjmVeaTYof2fY"
        }
    }

    # 示例文档内容（从冲模.md读取）
    sample_text = """
## 2.2 冲模术语
冲模 stamping die,stamping tool：使金属、非金属板料或型材在压力作用下分离、成形或接合为制品、制件的模具。
### 2.2.1 冲模类型
2.2.1.1
冲裁模 blanking die 沿封闭或敞开的轮廓线使板料产生分离的模具。
2.2.1.1.1
落料模 punching die 分离出带封闭外轮廓制品、制件的冲裁模。由落料凸模和落料凹模组成(见图 1)。
2.2.1.1.2
精冲模 fine blanking die
使板料变形区处于三向压应力状态下成形出截面光洁、尺寸精度高的制品、制件的冲裁模。
2.2.1.1.3
切断模 cutting-off die 使板料沿不封闭轮廓分离的冲裁模。
2.2.1.1.4
修边模 trimming die 用于切去制品、制件边缘多余材料的冲裁模。
2.2.1.1.5
整修模 shaving die
沿制品、制件被冲裁外缘或内孔修切掉少量材料，以提高制品、制件尺寸精度和降低冲裁截面粗糙度值的冲裁模。
2.2.1.2
卷边模 curling die 使制件边缘卷曲成形的冲模。
2.2.1.3
拉深模 drawing die 使坏件拉压成空心体制品、制件，或进一步改变空心体制件形状和尺寸的冲模(见图 3)。
2.2.1.3.1
正拉深模 obverse drawing die 完成与前次拉深相同方向再拉深工序的拉深模。
2.2.1.3.2
反拉深模 reverse drawing die 使空心体制件内壁外翻的拉深模。
2.2.1.3.3
液压拉深模 hydrodrawing die 利用液体作为传力介质与凸模或凹模配合成形的拉深模。
2.2.1.4
胀形模 bulging die 使空心坏件产生拉伸塑性变形以获得中间凸鼓形制品、制件的成形模。
2.2.1.5
翻边模 flanging die 使制件的边缘翻起呈竖立或一定角度直边的成形模。
2.2.1.6
翻孔模 plunging die 使制件的孔边缘翻起呈竖立或一定角度直边的成形模。
2.2.1.7
缩口模 necking die 使空心或管状制件端部的径向尺寸缩小的成形模
2.2.1.8
扩口模 flaring die 使空心或管状制件端部的径向尺寸扩大的成形模。
2.2.1.9
液压成形模 hydroforming die 利用液体作为传力介质与凸模或凹模配合成形制品、制件的成形模。
2.2.1.10
复合模 compound die：压力机的一次行程中，同时完成两道或两道以上冲压工序的单工位冲模(见图 4)。
2.2.1.10.1
正装复合模 obverse compound die 凸凹模装在上模，落料凹模和冲孔凸模装在下模的复合模。
2.2.1.10.2
倒装复合模 inverse compound die 凸凹模装在下模，落料凹模和冲孔凸模装在上模的复合模。
2.2.1.11
级进模 progressive die
在压力机的一次行程中,使条料连续定距送进，在送料方向排列的两个或两个以上工位同时完成多工序冲压的冲模（见图 5）。
2.2.1.12
单工序模 single die 在压力机的一次行程中，只完成一道冲压工序的冲模。2.2.1.13
组合冲模 combined die 通过模具零件的拆装组合，以完成不同冲压工序或冲制不同制品、制件的冲模。2.2.1.14
传递模 transfer di
借助自动化传送装置实现制件传递，在压力机的一次行程中，在送料方向排列的两个或两个以上工位同时完成多工序冲压的冲模。
2.2.1.15
柔性模 flexibledie
通过对各工位状态的调整，以分别成形不同规格制品、制件的冲模。2.2.1.16
热冲压模 hot stamping die 对加热的金属板材成形并冷却的模具。
2.2.1.17
多功能冲模 multi-function stamping die
具有自动冲切、叠压、计数、分组、扭斜和安全保护等多种功能的冲模。2.2.1.18
简易冲模 low-cost die
结构简单、制造周期短、成本低、适于小批量生产或试制生产的冲模。2.2.1.18.1
橡胶冲模 rubber die 凸模或凹模采用橡胶制成的冲模。
2.2.1.18.2
树脂冲模 resin die 工作零件采用高分子材料制成的冲模。
2.2.1.18.3
低熔点合金冲模 low-melting-point alloy die
工作零件采用低熔点合金制成的冲模。
2.2.1.19
校平模 flattening die 校平制件使其平面精度达到要求的冲模
2.2.1.20
微成形模 micro forming die 塑性成形部分至少有两维尺寸达到亚毫米级零件的成形模。
# 2.2.2 冲模零部件
2.2.2.1
后侧导柱模架 die set with two rear pillars 导向件安装于上、下模座后侧的模架。
2.2.2.2
对角导柱模架 die setwithtwodiagonal pillars 导向件安装于上、下模座对角点上的模架。
2.2.2.3
中间导柱模架 die set withtwo center pillars 导向件安装于上、下模座左右对称点上的模架。
2.2.2.4
四导柱模架 die set with four pillars：导向件安装于上、下模座四个角点上的模架。
2.2.2.5
精冲模架 fine blanking die set 适用于精冲成形，刚性好、导向精度高的模架
2.2.2.6
滑动导向模架 slide guide die set
2.2.2.7
滚动导向模架 ball guide die set:上、下模采用滑动导向件导向的模架。
2.2.2.8
上、下模采用滚动导向件导向的模架。
弹压导板模架 die set with spring guide plate
上、下模采用带有弹压装置的导板导向的模架。
2.2.2.9
圆凸模 round punch
圆柱形的凸模(见图 6）。
2.2.2.10
推杆凸模 punch with ejector 带有推杆安装孔的凸模。
2.2.2.11
球锁紧凸模 ball-lock punch 采用球锁紧方式安装的快换凸模。
2.2.2.12
快换凸模 quick change punch
可实现快速装卸和更换的凸模。
2.2.2.13
圆凹模 round die
2.2.2.14
圆柱形的凹模(见图 7）。
快换凹模 quick change die 可实现快速装卸和更换的凹模。
2.2.2.15
凸凹模 main punch 同时具有凸模和凹模作用的工作零件（见图 4 中 13）。
2.2.2.16
定距侧刃 pitch punch 在板料侧边冲切出缺口，以确定级进模送料步距的工作零件。2.2.2.17
定位销 locating pin 确定板料或制件正确位置的圆柱形零件（见图 4 中 6）。
2.2.2.18
定位板 locating plate 确定板料或制件正确位置的板状零件。2.2.2.19
挡料销 stop pin 确定板料送进距离的零件（见图 1 中 8）。
2.2.2.20
始用挡料销 finger stop pin
确定板料进给起始位置的零件。
2.2.2.21
导正销 pilot punch
与导正孔配合，确定制件正确位置和消除送料误差的圆柱形零件(见图 5 中 7)。2.2.2.22
抬料销 lift pin 具有抬料作用，有时兼具板料送进导向作用的圆柱形零件（见图 5 中 23)。2.2.2.23
导料板 stock guide plate 确定板料送进方向的板状零件。2.2.2.24
挡块 stop block 承受侧向力的板块状零件。
2.2.2.25
侧压板 side pressure plate 消除板料或带料与导料板侧面间隙的板状零件。 2.2.2.26
自动送料装置 automaticfeeder
将板料或带料连续定距送进的装置。
2.2.2.27
导向零件 guide component
保证运动导向和确定上、下模工作时相对位置的零件。2.2.2.27.1
滚动导柱 ball-bearing guide pillar 通过钢球保持圈与滚动导套配合，保证运动导向和确定上、下模相对位置的圆柱形零件。2.2.2.27.2
滚动导套 ball-bearingguidebush 与滚动导柱配合，保证运动导向和确定上、下模相对位置的圆套形零件。
2.2.2.27.3
钢球保持圈 cage
保持钢球有序排列，实现滚动导柱与导套滚动配合的圆套形组件。2.2.2.27.4
止动件 retainer 将钢球保持圈限制在导柱上或导套内的限位零件。
2.2.2.27.5
导滑板 sliding plate
用于导正上、下模各零部件间相对位置的高硬度或具有润滑特性的板状零件。
2.2.2.28
压料零件 clamping component
压住板料的零件。
2.2.2.28.1
承料板 stock-supporting plate
对进入模具之前的板料起支承作用的板状零件。
2.2.2.28.2
压料板 pressure plate 把板料压贴在凸模或凹模上的板状零件。
2.2.2.28.3
齿圈压板 vee-ring plate
精冲模中，为形成很强的三向压应力状态，防止板料自冲切层滑动和冲裁表面出现撕裂现象而采用的齿形强力压圈零件。
2.2.2.29
卸料零件 stripping component
卸下或推出制品、制件与废料的零件。
2.2.2.29.1
固定卸料板 fixed stripperplate
在冲模上固定不动，可兼具凸模导向作用的卸料板。
2.2.2.29.2
弹性卸料板 elastic stripperplate 借助弹性零件起压料、卸料作用，可兼具保护凸模和凸模导向作用的卸料板(见图 5 中 14)。2.2.2.29.3
卸料螺钉 stripper bolt
连接卸料板并调节卸料板卸料行程的杆状零件（见图 1 中 2）。
2.2.2.29.4
推件块(顶件块） ejector block
用于从凹模中推出制品、制件或废料的块状零件（见图 2 中 10、12）。
2.2.2.29.5
打杆 knock-out pin
穿过模柄孔，把压力机滑块上打杆横梁的力传给推板的杆状零件(见图 2 中 2)。 2.2.2.29.6
托板 cushion plate
装于下模座并将弹顶器或拉杆的力传递给推杆和托杆的板状零件（见图 1 中 10）。
28
2.2.2.29.7
托杆 cushion pin 连接托板并向压料板、压边圈或卸料板传递力的杆状零件。2.2.2.29.8
弹顶器 cushion 向压边圈或推件块传递推出力的装置。2.2.2.29.9
废料切刀 scrap cutter 冲压过程中切断废料的零件。
2.2.2.30
凸模保护套 punch-protecting bushing
用于提高细长凸模整体刚度的衬套零件。
2.2.2.31
模柄 die shank 使模具与压力机的中心线重合，并把上模固定在压力机滑块上的连接零件(见图 1 中 1)。2.2.2.31.1
浮动模柄 self-centering die shank
可自动定心的模柄。
2.2.2.32
斜楔机构 cam driver 通过驱动块和滑块的配合使用，变垂直运动为水平或倾斜运动的机构，通常简称斜楔。2.2.2.32.1
旋转斜楔 rotating cam driver
使整体为圆柱形的工作滑块(转轴)做旋转运动的斜楔。
2.2.2.32.2
摆动斜楔 swinging cam driver 使工作滑块绕轴心做钟摆式运动的斜楔。
2.2.2.33
排屑机构 scrap-removing mechanism
将切屑收集并排出模具或压力机的机构，包括废料滑板、振动器等。
2.2.2.34
送料安全检测机构 feedsafetydetectionmechanism
对自动送料机构未能正确送料的情况进行检测并退出模具工作区而适时停机的装置。
2.2.2.35
带料误送检测装置 strip delivery detection device
对高速自动冲压过程中带料不能正确到位的情况进行检测并适时停机的装置。
2.2.2.36
下死点检测装置 bottom dead center detectiondevice
对高速自动冲压过程中模具不能正确到达下死点的情况进行检测并适时停机的装置。
2.2.2.37
防跳屑装置 scrap-bouncing prevention device 为防止冲压生产中产生跳屑在模具上设置的辅助装置。
2.2.2.38
安全防护板 safety shield 安装在模具上起安全防护作用的薄板件。
# 2.2.3 冲模设计要素
2.2.3.1
凸模刃口 point 直接对板料进行冲切成形加工，使其达到所需形状和尺寸的凸模工作段(见图 6 中 6)。
2.2.3.2
凸模刃口直径 pointdiameter
凸模的刃口端直径(见图 6 中 5）。
2.2.3.3
凸模刃口长度 point length
2.2.3.4
凸模固定段 punch shank
凸模与固定板相应孔配合的圆柱体部分（见图 6 中 9）。
2.2.3.5
凸模固定段直径 punch shankdiameter
与凸模固定板相应孔配合的杆部直径（见图 6 中 10）。
2.2.3.6
凸模引导直径 punch leading diameter 为便于凸模正确压入固定板而在杆压入端设计的一段圆柱直径(见图 6 中 8)。
2.2.3.7
凸模圆角半径 punch radius 成形模中凸模工作端面向侧面过渡的圆角半径（见图 6 中 7）。
2.2.3.8
凸模总长 punch overall length 凸模的全部长度（见图 6 中 3）。
# 2.2.3.9
凹模刃口直径 holediameter 凹模的工作孔直径（见图 7 中 3）。
2.2.3.10
凹模刃口长度 land length
凹模工作段长度（见图 7 中 12）。
2.2.3.11
凹模刃口斜度 cutting edge angle
锥形凹模的刃口斜角值。
2.2.3.12
凹模固定段 die body
凹模与固定板相应孔配合的圆柱体部分（见图 7 中 5）。
2.2.3.13
凹模外径 die body diameter
凹模的模体直径（见图 7 中 1）。
2.2.3.14
凹模引导直径 dieleading diameter
为便于凹模正确压入固定板,在模体压入端设置的一段圆柱直径(见图 7 中 2)。
2.2.3.15
凹模圆角半径 die radius
成形模中凹模工作端面向内侧面过渡的圆角半径。
2.2.3.16
凹模总长 die overall length
凹模的全部长度（见图 7 中 11）。
2.2.3.17
排料孔 back hole
凹模及相接的模具零件上使废料排出的孔（见图 7 中 10）。
2.2.3.18
排料孔直径 backhole diameter
直排料孔的直径与斜排料孔的最大直径（见图 7 中 7）。
2.2.3.19
模具间隙 dieclearance
凸模与凹模之间缝隙的间距。
2.2.3.20
压力机最大闭合高度 maximum press shut height
压力机滑块在下极点位置时，滑块下表面至压力机工作台上表面间的距离。
2.2.3.21
冲模中心 center of stamping die 冲模的几何中心。
2.2.3.22
冲压方向 pressing direction 冲压力作用的方向。
2.2.3.23
排样 blank layout 制件或坏料在板料上的排列与设置。
2.2.3.24
搭边 web 排样时，制件与制件之间或制件与板料边缘之间的工艺余料。
2.2.3.25
送料步距 feed pitch 级进模中，板料或制件在送料方向每送进一步的移动距离。
2.2.3.26
毛刺 burr 在制件冲裁截面边缘产生的竖立尖状凸起物。
2.2.3.27
塌角 roll fillet 在制件冲裁截面边缘产生的微圆角。
2.2.3.28
光亮带 smooth cut zone 制件冲裁截面的光亮部分。
2.2.3.29
冲裁力 blanking force 冲裁时所需的压力。
2.2.3.30
弯曲力 bending force 弯曲时所需的压力。
2.2.3.31
拉深力 drawing force 拉深时所需的压力。
2.2.3.32
卸料力 stripping force 从凸模或凸凹模上将制品、制件或废料卸下来所需的力。
2.2.3.33
推件力（顶件力） ejectingforce
2.2.3.34
从凹模内将制品、制件或废料推出所需的力。
压料力 pressure plate force 压料板作用于板料的力。
2.2.3.35
压边力 blank holder force 压边圈作用于板料边缘的力。
2.2.3.36
成形极限图 forming limit diagram
板料在外力作用下发生塑性变形，其极限应变值所构成的曲线图。
2.2.3.37
工序件 blank 前道工序完成需后续工序进一步成形的坏件。
2.2.3.38
最小冲孔直径 minimumperforatingdiameter 一定厚度和材质的板料所能冲压加工的最小孔直径。
2.2.3.39
中性层 neutral layer
弯曲变形区内切向应变为零的金属层。
2.2.3.40
中性层系数 neutral layer coefficient 弯曲变形时中性层相对于内层偏移的比例。
2.2.3.41
弯曲线 bending line 板料产生弯曲变形时相应的直线或曲线。
2.2.3.42
弯曲角 bending angle 制件被弯曲加工的角度，即弯曲后制品、制件直边夹角的补角。
2.2.3.43
弯曲半径 bending radius 弯曲制品、制件内侧的曲率半径。
2.2.3.44
相对弯曲半径 relative bending radius
制品、制件的弯曲半径与板料厚度之比。
2.2.3.45
最小弯曲半径 minimumbendingradius 弯曲时板料最外层纤维濒于拉裂时的弯曲半径。
2.2.3.46
展开长度 unbent length
弯曲制件直线部分与弯曲部分中性层长度之和。2.2.3.47
回弹 spring back
弯曲和成形加工中，制品、制件在去除载荷并离开模具后产生的弹性回复现象。
2.2.3.48
拉深系数 drawing coefficient
拉深制品、制件的直径与其坏件直径之比。
2.2.3.49
SAC
拉深比 drawingratio
拉深系数的倒数。
2.2.3.50
拉深次数 drawing number 受极限拉深系数的限制，制品、制件拉深成形所需的次数。
2.2.3.51
缩口系数 neckingcoefficient 制品、制件的管口缩径后与缩径前直径之比。
2.2.3.52
扩口系数 flaring coefficient
制品、制件的管口扩径后的最大直径与扩口前直径之比。2.2.3.53
胀形系数 bulge coefficient
筒形制品、制件胀形后的最大直径与胀形前直径之比。
2.2.3.54
胀形高度 bulge height
板料局部胀形的高度。
2.2.3.55
翻孔系数 hole flanging coefficient 制品、制件翻孔前、后孔径之比。
2.2.3.56
扩孔率 hole expanding rate 制品、制件扩孔前、后孔径之差与扩孔前孔径之比。 2.2.3.57
相对高度 relative height 制品、制件高度与宽度之比。
2.2.3.58
相对厚度 relative thickness 制品、制件厚度与直径之比。
    """
    # 创建抽取器
    extractor = MoldKGExtractor(
        openai_api_key=config["openai_api_key"],
        mysql_config=config["mysql_config"],
        neo4j_config=config["neo4j_config"]
    )

    try:
        # 连接数据库
        extractor.connect_mysql()
        extractor.connect_neo4j()

        # # 处理文档
        # logger.info("开始处理文档...")
        # entities, relations = extractor.process_document(sample_text)
        #
        # logger.info(f"抽取到 {len(entities)} 个实体，{len(relations)} 个关系")
        #
        # # 保存到MySQL
        # extractor.save_to_mysql(entities, relations)

        # 验证数据无误后迁移到Neo4j
        user_confirm = input("数据已保存到MySQL，是否迁移到Neo4j？(y/n): ")
        if user_confirm.lower() == 'y':
            extractor.migrate_to_neo4j()
            logger.info("数据迁移完成！")

    except Exception as e:
        logger.error(f"处理过程中出现错误: {e}")
    finally:
        extractor.close_connections()


if __name__ == "__main__":
    main()
