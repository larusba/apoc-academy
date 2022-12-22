:begin
CREATE CONSTRAINT UNIQUE_IMPORT_NAME FOR (node:`UNIQUE IMPORT LABEL`) REQUIRE (node.`UNIQUE IMPORT ID`) IS UNIQUE;
:commit
:begin
UNWIND [{_id:20, properties:{paused:false, database:"neo4j", name:"prova2", statement:"return 12", selector:"{}", params:"{}"}}, {_id:18, properties:{paused:false, database:"neo4j", name:"prova", statement:"return 1", selector:"{}", params:"{}"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ApocTrigger;
:commit
:begin
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
:commit
:begin
DROP CONSTRAINT UNIQUE_IMPORT_NAME;
:commit
