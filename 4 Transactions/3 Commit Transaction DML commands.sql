select * from categories;

BEGIN TRANSACTION
update categories set description= UPPER(description) where id >0
GO
delete categories where id =1002
GO
COMMIT;
