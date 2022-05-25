ALTER TABLE "mysecondmodule$template_variable" DROP CONSTRAINT "uniq_mysecondmodule$template_variable_mysecondmodule$templateid";
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_mysecondmodule$template_variable_mysecondmodule$templateid' AND "column_id" = '2230b385-1195-30fd-8efb-8448209c9beb';
CREATE TABLE "mysecondmodule$document" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('176a0c66-c1ae-4764-b098-ac3abc0d1472', 
'MySecondModule.Document', 
'mysecondmodule$document', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('8fab4552-89a3-43e6-b004-a968a78fe6e7', 
'176a0c66-c1ae-4764-b098-ac3abc0d1472', 
'name', 
'name', 
30, 
200, 
'', 
false);
CREATE TABLE "mysecondmodule$document_template" (
	"mysecondmodule$documentid" BIGINT NOT NULL,
	"mysecondmodule$templateid" BIGINT NOT NULL,
	PRIMARY KEY("mysecondmodule$documentid","mysecondmodule$templateid"),
	CONSTRAINT "uniq_mysecondmodule$document_template_mysecondmodule$documentid" UNIQUE ("mysecondmodule$documentid"));
CREATE INDEX "idx_mysecondmodule$document_template_mysecondmodule$template_mysecondmodule$document" ON "mysecondmodule$document_template" ("mysecondmodule$templateid" ASC,"mysecondmodule$documentid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('0c1ac633-83f5-4a5b-8906-c6ce6c7636ae', 
'MySecondModule.Document_template', 
'mysecondmodule$document_template', 
'176a0c66-c1ae-4764-b098-ac3abc0d1472', 
'0524ec44-0b9d-4fab-86d8-45945603cb2b', 
'mysecondmodule$documentid', 
'mysecondmodule$templateid', 
'idx_mysecondmodule$document_template_mysecondmodule$template_mysecondmodule$document');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_mysecondmodule$document_template_mysecondmodule$documentid', 
'0c1ac633-83f5-4a5b-8906-c6ce6c7636ae', 
'e68a44f3-b274-37a3-9405-393973724a1b');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220525 15:07:46';
