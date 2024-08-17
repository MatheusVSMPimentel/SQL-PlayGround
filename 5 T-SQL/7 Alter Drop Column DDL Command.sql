--ALTER TABLE categories DROP COLUMN Test; --error because Default constraint

--find the constraint
/* 
SELECT OBJECT_NAME(OBJECT_ID) AS ConstraintName
FROM sys.objects
WHERE OBJECT_NAME(parent_object_id) = 'categories' AND type_desc LIKE '%CONSTRAINT';
 */

--drop constraint
--ALTER TABLE categories DROP CONSTRAINT DF__categories__Test__6C190EBB;

--drop column
--ALTER TABLE categories DROP COLUMN Test;

SELECT * FROM categories