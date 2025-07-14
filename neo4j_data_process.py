import json
from neo4j import GraphDatabase


def import_path(tx, path_data):
    path_data = path_data["p"]
    start = path_data["start"]
    end = path_data["end"]
    rel = path_data["segments"][0]["relationship"]

    # 解析属性（注意 attributes 是 JSON 字符串）
    start_props = start["properties"]
    end_props = end["properties"]
    rel_props = rel.get("properties", {})

    # 解析 attributes 字段中的 JSON 字符串（如有）
    for node in [start_props, end_props]:
        if "attributes" in node and isinstance(node["attributes"], str):
            try:
                node["attributes"] = json.loads(node["attributes"])
                node.update(node["attributes"])
                del node["attributes"]
            except json.JSONDecodeError:
                pass  # 保持原样
        # 必须字段检查
        if "name" not in start_props or "name" not in end_props:
            raise KeyError("Missing 'name' in start or end node properties")
        # 构建 Cypher 查询
        query = f"""
            MERGE (a:{':'.join(start['labels'])} {{name: $start_name}})
            SET a += $start_props

            MERGE (b:{':'.join(end['labels'])} {{name: $end_name}})
            SET b += $end_props

            MERGE (a)-[r:{rel['type']}]->(b)
            SET r += $rel_props
            """

        tx.run(query,
               start_name=start_props["name"],
               end_name=end_props["name"],
               start_props=start_props,
               end_props=end_props,
               rel_props=rel_props
               )

driver = GraphDatabase.driver("bolt://10.109.253.85:7687", auth=("neo4j", "password"))
data_path = "./data/GB-extraction-data-neo4j.json"
with open(data_path, "r", encoding="utf-8") as f:
    data = json.load(f)

with driver.session() as session:
    for record in data:
        try:
            session.write_transaction(import_path, record)
        except Exception as e:
            print(f"Error data: {record}")
driver.close()

