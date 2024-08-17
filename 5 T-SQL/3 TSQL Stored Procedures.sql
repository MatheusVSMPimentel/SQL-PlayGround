/* 
CREATE PROCEDURE searchCategoriesById(@id int)
AS
BEGIN

SELECT * FROM categories where id= @id

END
 */

-- SELECT * FROM dbo.searchCategoriesById(3)    --don`t work this way


--EXECUTE dbo.searchCategoriesById @id = 3
--EXECUTE dbo.searchCategoriesById @id = 3, otherParam = `` -- when the procedure has more than 1 parameter 

--EXECUTE dbo.searchCategoriesById 3 --when procedure has 1 param
/* 
CREATE PROCEDURE saveNewCategory(@description varchar(80))
AS
BEGIN
INSERT INTO categories(description, created_At) VALUES (@description, GETDATE())
END

 */

--EXEC dbo.saveNewCategory @description = 'Procedure Category'

--SELECT * FROM categories

--DROP PROCEDURE saveNewCategory

/* 
CREATE PROCEDURE saveNewCategory(@description varchar(255))
AS
BEGIN
    if(@description is null)
    BEGIN
        RAISERROR('Description is not valid', 16, 1)
        RETURN
    END
    INSERT INTO categories
        (description, created_At)
    VALUES
        (@description, GETDATE())
END
 */

 EXEC dbo.saveNewCategory @description = null

