/* 
Create FUNCTION Mask(@data varchar(255), @charVisible int)
RETURNS VARCHAR(255)
AS
BEGIN

RETURN LEFT(@data, @charVisible) + REPLICATE('*', LEN(@data)-@charVisible) 

END;
*/

--SELECT dbo.Mask('Rafael Almeida', 4)
--SELECT * FROM categories

--SELECT dbo.mask(description, 3) FROM categories;
/* 
CREATE FUNCTION countRegisters() RETURNS INT
AS
BEGIN
    RETURN ( SELECT count(*) FROM categories)
END
 */

--SELECT dbo.countRegisters()

/* 
CREATE FUNCTION getCategoriesById(@id int) RETURNS TABLE
AS
RETURN( SELECT * FROM categories where id=@id)
 */

SELECT * FROM dbo.getCategoriesById(3)