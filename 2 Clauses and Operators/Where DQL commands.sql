--SELECT * FROM students WHERE name = 'Rafael';

--SELECT * FROM students WHERE id >= 3;

--SELECT * FROM students WHERE id >= 3 and name='Bruno';

--SELECT * FROM students WHERE id >= 3 and (name='Bruno' or name='Heloysa');

--SELECT * FROM students WHERE name like 'Rafael'

--SELECT * FROM students WHERE name like 'Ra%' --search values that begins with

--SELECT * FROM students WHERE name like '%o' --search values that ends with

--SELECT * FROM students WHERE name like '%a%' --search values that contains 

--SELECT * FROM students WHERE name like 'R%l' --search values that contains 

--SELECT MAX(id) FROM students 
--SELECT min(id) FROM students 
--SELECT * FROM students WHERE id = (SELECT MAX(id) FROM students)
--SELECT * FROM students WHERE id = (SELECT min(id) FROM students)

--SELECT * FROM courses

--SELECT COUNT(*), sum(total_hours), sum([value]) FROM courses

--SELECT city, state, count(*) FROM students GROUP BY city, state
/* SELECT city, state, count(*) FROM students 
GROUP BY city, state
HAVING Count(*) > 1 */

--SELECT * FROM students WHERE id in (2,4)
--SELECT * FROM students WHERE id in (SELECT student_id FROM students_courses where course_id >= 3)

--SELECT * FROM students WHERE id BETWEEN 2 and 4
SELECT * FROM students WHERE birth_date BETWEEN '2000-04-04' and GETDATE()

