/* CREATE SEQUENCE MySequence
AS INT
START WITH 6
INCREMENT BY 1
MINVALUE 6
MAXVALUE 1000
--CYCLE
NO CYCLE */

--SELECt NEXT VALUE FOR  MySequence --first call 6, 2nd call forward will be the last value increment by 1

/* 
CREATE TABLE TableTest(
    id int DEFAULT NEXT VALUE FOR MySequence,
    DESCRIPTION varchar(20)
) 
*/

INSERT INTO TableTest(DESCRIPTION) VALUES('first 8'), ('second 9')

SELECT * FROM TableTest