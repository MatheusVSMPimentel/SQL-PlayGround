--SELECT * FROM categories;
--SELECT * FROM courses;

--SELECT * FROM courses c INNER JOIN categories ca on ca.id = c.category_id;

--SELECT c.description Course, ca.description Category   FROM courses c INNER JOIN categories ca on ca.id = c.category_id;
--insert INTO categories(description) values ('categoy test');
--SELECT * FROM categories

--SELECT  ca.description Category ,c.description Course   FROM categories ca LEFT JOIN  courses c on ca.id = c.category_id;
--SELECT c.description Course, ca.description Category   FROM courses c RIGHt JOIN categories ca on ca.id = c.category_id;
--SELECT c.description Course, ca.description Category   FROM courses c FULL JOIN categories ca on ca.id = (c.category_id+4);

/* SELECT description FROM courses where id = 1
union
select description from categories where id = 2
UNION 
SELECT 'Valor dinamico' */

/* SELECT description FROM courses where id = 1
union ALL
select description from categories where id = 2
UNION ALL 
SELECT 'Valor dinamico'
UNION ALL
SELECT 'Valor dinamico'
 */

SELECT description FROM courses where id = 1
union 
select description from categories where id = 2
UNION  
SELECT 'Valor dinamico'
UNION 
SELECT 'Valor dinamico'
