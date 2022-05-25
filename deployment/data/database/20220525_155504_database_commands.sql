DROP INDEX "idx_mysecondmodule$template_system$owner";
ALTER TABLE "mysecondmodule$template" RENAME TO "2b8e3f598f5448a2b56de7094b7c9d38";
DROP INDEX "idx_mysecondmodule$template_variable_mysecondmodule$variable_mysecondmodule$template";
ALTER TABLE "mysecondmodule$template_variable" RENAME TO "36fea54233de41f0bf66eb48c407c0f3";
DROP INDEX "idx_mysecondmodule$variable_system$owner";
ALTER TABLE "mysecondmodule$variable" RENAME TO "d50dbd5ecac543769b8dadd02633d444";
ALTER TABLE "mysecondmodule$document" RENAME TO "78333d2126904c5295cf3aa1f6d71282";
ALTER TABLE "mysecondmodule$document_template" DROP CONSTRAINT "uniq_mysecondmodule$document_template_mysecondmodule$documentid";
DROP INDEX "idx_mysecondmodule$document_template_mysecondmodule$template_mysecondmodule$document";
ALTER TABLE "mysecondmodule$document_template" RENAME TO "b2151e550c634ffdad875a1bb63d0eaa";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '0524ec44-0b9d-4fab-86d8-45945603cb2b';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '0524ec44-0b9d-4fab-86d8-45945603cb2b';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '0524ec44-0b9d-4fab-86d8-45945603cb2b');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '0524ec44-0b9d-4fab-86d8-45945603cb2b';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '0524ec44-0b9d-4fab-86d8-45945603cb2b';
DELETE FROM "mendixsystem$index" 
 WHERE "table_id" = '0524ec44-0b9d-4fab-86d8-45945603cb2b';
DELETE FROM "mendixsystem$index_column" 
 WHERE "index_id" IN ('bb7d3500-536e-3ed5-98c4-4b884d7599bd');
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '3bf65ad0-041d-369a-a3a6-ee4ae583e759';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '07840319-092c-46ed-abed-65822128e1f5';
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '0d9ba123-2e3f-47e8-8442-79b585d03d02';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '0d9ba123-2e3f-47e8-8442-79b585d03d02';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '0d9ba123-2e3f-47e8-8442-79b585d03d02');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '0d9ba123-2e3f-47e8-8442-79b585d03d02';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '0d9ba123-2e3f-47e8-8442-79b585d03d02';
DELETE FROM "mendixsystem$index" 
 WHERE "table_id" = '0d9ba123-2e3f-47e8-8442-79b585d03d02';
DELETE FROM "mendixsystem$index_column" 
 WHERE "index_id" IN ('78b100e0-0219-3042-8465-edaa3b72312f');
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '7e876f94-e10e-3fd2-8c1f-ea6e5f04c656';
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '176a0c66-c1ae-4764-b098-ac3abc0d1472';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '176a0c66-c1ae-4764-b098-ac3abc0d1472';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '176a0c66-c1ae-4764-b098-ac3abc0d1472');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '176a0c66-c1ae-4764-b098-ac3abc0d1472';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '176a0c66-c1ae-4764-b098-ac3abc0d1472';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '0c1ac633-83f5-4a5b-8906-c6ce6c7636ae';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_mysecondmodule$document_template_mysecondmodule$documentid' AND "column_id" = 'e68a44f3-b274-37a3-9405-393973724a1b';
CREATE TABLE "myfirstmodule$persoon" (
	"id" BIGINT NOT NULL,
	"voornaam" VARCHAR_IGNORECASE(200) NULL,
	"achternaam" VARCHAR_IGNORECASE(200) NULL,
	"geboortedatum" TIMESTAMP NULL,
	"hobby" VARCHAR_IGNORECASE(200) NULL,
	"gender" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('f60c8777-6219-4475-9176-72437fc7640d', 
'MyFirstModule.persoon', 
'myfirstmodule$persoon', 
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
 VALUES ('81d67851-b1fa-4361-b87a-b6edfbdaacbb', 
'f60c8777-6219-4475-9176-72437fc7640d', 
'voornaam', 
'voornaam', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('7cd02f02-149e-46b6-ba86-1b6f4294f6a0', 
'f60c8777-6219-4475-9176-72437fc7640d', 
'achternaam', 
'achternaam', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('97b73198-4640-4c94-98bf-863fc380e850', 
'f60c8777-6219-4475-9176-72437fc7640d', 
'geboortedatum', 
'geboortedatum', 
20, 
0, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('d3335e60-e1fd-42b6-9647-3b03c68e3f36', 
'f60c8777-6219-4475-9176-72437fc7640d', 
'hobby', 
'hobby', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('17dd0aa2-2841-49af-be91-e53f02f18d4f', 
'f60c8777-6219-4475-9176-72437fc7640d', 
'gender', 
'gender', 
30, 
200, 
'', 
false);
DROP TABLE "2b8e3f598f5448a2b56de7094b7c9d38";
DROP TABLE "36fea54233de41f0bf66eb48c407c0f3";
DROP TABLE "d50dbd5ecac543769b8dadd02633d444";
DROP TABLE "78333d2126904c5295cf3aa1f6d71282";
DROP TABLE "b2151e550c634ffdad875a1bb63d0eaa";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220525 15:55:04';
