select * from categories;

BEGIN TRANSACTION
INSERT INTO categories(description) VALUES ('New Category 1')
INSERT INTO categories(description) VALUES ('New Category 2')
GO
SAVE TRANSACTION AtualizationPoint

UPDATE categories set DESCRIPTION='Web Application' WHERE DESCRIPTION='WEB'
GO
ROLLBACK TRANSACTION AtualizationPoint
commit;