// Node, Relationship 타입
CALL db.schema.visualization();
CALL db.schema.nodeTypeProperties();
CALL db.schema.relTypeProperties();

// Node Label 목록, Relationship Type, Property Key
CALL db.labels();
CALL db.relationshipTypes();
CALL db.propertyKeys();

// 노드 추출
MATCH (n) RETURN elementId(n) AS id, labels(n) AS labels, properties(n) AS props;

// 관계 추출
MATCH (a)-[r]->(b) RETURN elementId(r) AS rid, elementId(a) AS start, elementId(b) AS end, type(r) AS type, properties(r) AS props;
MATCH (a)-[r]->(b) RETURN elementId(r) AS rid, labels(a) AS start, labels(b) AS end, type(r) AS type, properties(r) AS props;




// APOC
CALL apoc.meta.graph(); 