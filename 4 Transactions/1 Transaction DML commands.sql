select * from categories;

BEGIN TRANSACTION
update categories set description= UPPER(description) where id >0
GO
delete categories where id =1002
GO
--try execute another instance the Trasaction 2nd instance DQL command with concurrency.sql
--Now execute the rollback and trying execute the 2nd instance again
--after, execute this file until the 7th line and close the file and try to execute the 2nd instance again
ROLLBACK