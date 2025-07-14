import xml.etree.ElementTree as ET
from typing import List, Any, Dict
from hashlib import md5
import json

from langchain_neo4j.graphs.graph_document import GraphDocument
from langchain_neo4j.graphs.neo4j_graph import Neo4jGraph, _get_node_import_query, _get_rel_import_query, \
    _remove_backticks

from neo4j_graphrag.schema import BASE_ENTITY_LABEL


class MyNeo4jGraph(Neo4jGraph):
    """
    将GraphDocument对象导出为GraphML或Cypher文件的工具类
    """

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def save_node_rel(
            self,
            graph_documents: List[GraphDocument],
            include_source: bool = False,
            baseEntityLabel: bool = False,
    ) -> None:
        """
        This method constructs nodes and relationships in the graph based on the
        provided GraphDocument objects.

        Parameters:
        - graph_documents (List[GraphDocument]): A list of GraphDocument objects
        that contain the nodes and relationships to be added to the graph. Each
        GraphDocument should encapsulate the structure of part of the graph,
        including nodes, relationships, and optionally the source document information.
        - include_source (bool, optional): If True, stores the source document
        and links it to nodes in the graph using the MENTIONS relationship.
        This is useful for tracing back the origin of data. Merges source
        documents based on the `id` property from the source document metadata
        if available; otherwise it calculates the MD5 hash of `page_content`
        for merging process. Defaults to False.
        - baseEntityLabel (bool, optional): If True, each newly created node
        gets a secondary __Entity__ label, which is indexed and improves import
        speed and performance. Defaults to False.

        Raises:
            RuntimeError: If the connection has been closed.
        """
        cypher_lines = []

        self._check_driver_state()
        if baseEntityLabel:  # Check if constraint already exists
            constraint_exists = any(
                [
                    el["labelsOrTypes"] == [BASE_ENTITY_LABEL]
                    and el["properties"] == ["id"]
                    for el in self.structured_schema.get("metadata", {}).get(
                    "constraint", []
                )
                ]
            )
        # 1. 可选唯一约束
        if baseEntityLabel:
            cypher_lines.append(
                f"CREATE CONSTRAINT IF NOT EXISTS FOR (b:{BASE_ENTITY_LABEL}) REQUIRE b.id IS UNIQUE;"
            )

        # if not constraint_exists:
        #     # Create constraint
        #     self.query(
        #         f"CREATE CONSTRAINT IF NOT EXISTS FOR (b:{BASE_ENTITY_LABEL}) "
        #         "REQUIRE b.id IS UNIQUE;"
        #     )
        #     self.refresh_schema()  # Refresh constraint information

        # Check each graph_document has a source when include_source is true
        if include_source:
            for doc in graph_documents:
                if doc.source is None:
                    raise TypeError(
                        "include_source is set to True, "
                        "but at least one document has no `source`."
                    )

        node_import_query = _get_node_import_query(baseEntityLabel, include_source)
        rel_import_query = _get_rel_import_query(baseEntityLabel)
        for document in graph_documents:

            # 1.处理源ID
            if include_source and document.source:
                if not document.source.metadata.get("id"):
                    document.source.metadata["id"] = md5(document.source.page_content.encode("utf-8")).hexdigest()
            # 2. 构造 node 部分 Cypher
            node_data = [node.__dict__.copy() for node in document.nodes]

            for n in node_data:
                n['type'] = _remove_backticks(n['type'])
            for node in node_data:
                row = to_cypher_literal(node)
                if include_source:
                    d_meta = document.source.metadata
                    d_id = to_cypher_literal(d_meta["id"])
                    d_text = to_cypher_literal(document.source.page_content)
                    d_meta_str = to_cypher_literal(d_meta)
                else:
                    d_id, d_text, d_meta_str = "null", "null", "{}"
                cypher_lines.append(
                    f"MERGE (d:Document {{id: {d_id}}}) "
                    f"SET d.text = {d_text} "
                    f"WITH d "
                    f"CALL apoc.merge.node(['{node['type']}'], {{id: '{node['id']}'}}, {to_cypher_literal(node['properties'])}, {{}}) YIELD node "
                    f"MERGE (d)-[:MENTIONS]->(node);"
                )

            # 3. 构造关系 Cypher
            for rel in document.relationships:
                source_id = rel.source.id
                source_label = _remove_backticks(rel.source.type)
                target_id = rel.target.id
                target_label = _remove_backticks(rel.target.type)
                rel_type = _remove_backticks(rel.type.replace(" ", "_").upper())
                props = to_cypher_literal(rel.properties)

                cypher_lines.append(
                    f"CALL apoc.merge.node(['{source_label}'], {{id: '{source_id}'}}, {{}}, {{}}) YIELD node as source "
                    f"WITH source "
                    f"CALL apoc.merge.node(['{target_label}'], {{id: '{target_id}'}}, {{}}, {{}}) YIELD node as target "
                    f"WITH source, target "
                    f"CALL apoc.merge.relationship(source, '{rel_type}', {{}}, {props}, target) YIELD rel "
                    f"RETURN rel;"
                )
        return cypher_lines


def to_cypher_literal(value):
    if isinstance(value, str):
        escaped = value.replace("'", "\\'")
        return f"'{escaped}'"
    elif isinstance(value, bool):
        return "true" if value else "false"
    elif value is None:
        return "null"
    elif isinstance(value, (int, float)):
        return str(value)
    elif isinstance(value, dict):
        return "{" + ", ".join(f"{k}: {to_cypher_literal(v)}" for k, v in value.items()) + "}"
    elif isinstance(value, list):
        return "[" + ", ".join(to_cypher_literal(v) for v in value) + "]"
    else:
        raise ValueError(f"Unsupported type: {type(value)}")
