
SELECT description FROM test_table WHERE LEFT(description,16) = 'DESCRICAO 900000'  --VERIFY EXECUTION PLAN

SELECT description FROM test_table WHERE description like 'DESCRICAO 900000%'  --VERIFY EXECUTION PLAN