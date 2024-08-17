--SELECT * FROM students ORDER BY id;

--SELECT TOP (4) * FROM students ORDER BY id ;

--SELECT TOP (10) PERCENT * FROM students ORDER BY id ;

--SELECT  * FROM students ORDER BY id LIMIT 100; -- anothers SGBDS usually uses the LIMIT keyword

SELECT * FROM students ORDER BY id OFFSET 2 ROWS;
