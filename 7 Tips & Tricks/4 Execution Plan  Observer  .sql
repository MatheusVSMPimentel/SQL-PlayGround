use DesenvolvedorIoCourse;
/*
CREATE TABLE test_table
(
  id INT,
  description varchar(80)
)
*/
/*
DECLARE @id INT = 1
DECLARE @p1 INT,@p2 INT,@p3 INT,@p4 INT
WHILE @id <= 200000
BEGIN 
  SET @p1=@id+200000
  SET @p2=@id+400000
  SET @p3=@id+600000
  SET @p4=@id+800000
  INSERT INTO test_table(id, description) 
	VALUES (@id,'Descricao '+cast(@id as varchar(7))),
		   (@p1,'Descricao '+cast(@p1 as varchar(7))),
		   (@p2,'Descricao '+cast(@p2 as varchar(7))),
		   (@p3,'Descricao '+cast(@p3 as varchar(7))),
		   (@p4,'Descricao '+cast(@p4 as varchar(7)));
  SET @id = @id+1
END 

SELECT description FROM test_table WHERE description='DESCRICAO 900000';

*/


/*
create index idx_table_test_description 
ON test_table(description)
*/

SELECT description FROM test_table WHERE description='DESCRICAO 900000';
