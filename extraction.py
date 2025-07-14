from typing import List, Optional
from pydantic import BaseModel, Field
from langchain_core.documents import Document
from langchain_openai import ChatOpenAI
from langchain_experimental.graph_transformers import LLMGraphTransformer
import asyncio
from langchain_neo4j import Neo4jGraph
from utils.util import ReadFiles
import os
from documents2Cypher import MyNeo4jGraph
from neo4j import GraphDatabase

"""主函数：提取实体和关系"""
os.environ["NEO4J_URI"] = "neo4j+s://e7c3ef97.databases.neo4j.io"
os.environ["NEO4J_USERNAME"] = "neo4j"
os.environ["NEO4J_PASSWORD"] = "B8O3uwraPsAYh_ajTZp4MSBCGzdSwVReMTaDbq1WgWw"
node_labels = [
    "软件Software",
    "模块Module",
    "功能/特性Feature/Function",
    "用户界面元素InterfaceElement",
    "选择模式SelectionMode",
    "可选择实体类型SelectableEntityType",
    "文件格式FileFormat",
    "输入设备InputDevice",
    "修饰键KeyModifier",
    "操作样式OperationStyle",
    "对话框按钮DialogButton",
    "模型树类型ModelTreeType",
    "项目Project",
    "许可License",
]

allowed_relationships = [
    "包含模块HAS_MODULE",
    "执行功能PERFORMS_FUNCTION",
    "具有特性HAS_FEATURE",
    "包含界面元素HAS_INTERFACE_ELEMENT",
    "支持平台SUPPORTS_PLATFORM",
    "使用输入设备USES_INPUT_DEVICE",
    "具有选择模式HAS_SELECTION_MODE",
    "影响实体类型AFFECTS_ENTITY_TYPE",
    "支持文件格式SUPPORTS_FILE_FORMAT",
    "使用鼠标操作样式USES_MOUSE_OPERATION_STYLE",
    "与修饰键关联ASSOCIATED_WITH_KEY_MODIFIER",
    "具有按钮HAS_BUTTON",
    "是的一部分IS_PART_OF",
    "管理MANAGES",
    "与相关RELATED_TO",
    "激活ACTIVATES",
    "可执行于CAN_BE_EXECUTED_ON",
    "引用REFERENCES",
    "归还至RETURNS_TO",
    "启用ENABLES",
    "用于IS_USED_FOR"
]

attributes = [
    "名称name",
    "版本version",
    "平台platform",
    "描述description",
    "快捷键shortcut_key",
    "鼠标操作mouse_actions",
    "扩展名extension",
    "类型type",
    "功能function"
]

async def extract_entities_and_relationships():
    # 初始化LLM
    
    llm = ChatOpenAI(openai_api_key="",
                     model='gpt-4o-mini', base_url="https://api.key77qiqi.cn/v1",
                     max_tokens=2048,
                     temperature=0)

    # 创建自定义图转换器
    llm_transformer = LLMGraphTransformer(
        llm=llm,
        allowed_nodes=node_labels,
        allowed_relationships=allowed_relationships,
        node_properties=attributes,
        additional_instructions='在抽取节点的时候，请你尽可能的抽取出节点属性中的描述属性以及名称属性'

    )
    # 1. 读取待抽取的文件，并将文件分块
    docs = ReadFiles(file_path='./data').get_content()
    list = []
    for doc in docs:
        list.append(Document(page_content=doc))

    # 2. 使用LLM进行抽取
    documents = list
    graph_documents = await llm_transformer.aconvert_to_graph_documents(documents)
    return graph_documents


# 主执行函数
async def main():
    """主程序入口"""
    graph = MyNeo4jGraph(refresh_schema=False)
    uri = "neo4j+s://e7c3ef97.databases.neo4j.io"
    user = "neo4j"
    password = "B8O3uwraPsAYh_ajTZp4MSBCGzdSwVReMTaDbq1WgWw"

    # 提取实体和关系
    graph_documents = await extract_entities_and_relationships()

    cypher_lines = graph.save_node_rel(graph_documents, include_source=True)
    
    # 写入到文件
    with open("cypher_output.cql", "w", encoding="utf-8") as f:
        for cypher in cypher_lines:
            single_line = " ".join(cypher.strip().split())  # 清理换行/多余空格
            f.write(single_line + ";\n")  # 每条语句一行，以分号结尾
    
    
    driver = GraphDatabase.driver(uri, auth=(user, password))
    with open("cypher_output.cql", "r", encoding="utf-8") as f:
        cypher_lines = [line.strip().rstrip(';') for line in f if line.strip()]
    with driver.session() as session:
        for cypher in cypher_lines:
            session.run(cypher)
    graph.add_graph_documents(graph_documents,include_source=True)



# 运行示例
if __name__ == "__main__":
    asyncio.run(main())
