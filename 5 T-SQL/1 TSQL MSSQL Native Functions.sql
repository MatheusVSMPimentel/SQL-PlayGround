--select left(description,4) from categories
--select right(description,4) from categories

--select substring(description,2,5) from categories

--Select 'RAFAEL' + ' ALMEIDA'

--Select 'RAFAEL' + ' ALMEIDA' + null
--SELECT CONCAT('Rafael', ' Almeida', ' Santos')
--SELECT CONCAT('Rafael', ' Almeida', ' Santos', null)

--SELECT CONCAT(description, ' test') from categories
--SELECT ISNULL(null, 'Default')
--SELECT ISNULL(null, null)
--SELECT ISNULL(description, 'NO CATEGORY') FROm categories

--SELECT Coalesce(null, null, null, null, 'DEFAULT1')
--SELECT Coalesce(null, null, 'DEFAULT 2', null, 'DEFAULT')

--SELECT 2 / IIF(Coalesce(null, null, 0) = 0, 1,Coalesce(null, null, 0) )

--SELECT description, IIF(len(description)> 5, 'Greater than 5', 'Less than 5') from categories

SELECT GETDATE() 
SELECT CAST(GETDATE() as DATe ), CAST(GETDATE() AS TIME)
