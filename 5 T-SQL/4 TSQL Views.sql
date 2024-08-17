--SELECT * from courses;
--SELECT * from categories;

/* 
CREATE VIEW vwCourses
AS
SELECT c.description course, ca.description category FROM courses c 
INNER JOIN categories ca ON ca.id = c.category_id
 */

--SELECT * FROM vwCourses
--SELECT * FROM vwCourses WHERE course = 'EF Core'

--DROP VIEW vwCourses

/* 
CREATE VIEW vwCourses
AS
SELECT c.description course, ca.description category FROM courses c 
INNER JOIN categories ca ON ca.id = c.category_id
 */

--SELECT * FROM vwCourses

/* 
ALTER VIEW vwCourses
AS
SELECT c.description course, ca.description category, c.created_At register_date FROM courses c 
INNER JOIN categories ca ON ca.id = c.category_id
 */
 
SELECT * FROM vwCourses