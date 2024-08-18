SET STATISTICS IO, TIME ON

--SELECT COUNT(*) FROM test_table WITH (NOLOCK)

SELECT SUM(s.row_count) FROM sys.dm_db_partition_stats s 
where OBJECT_NAME(object_id) = 'test_table'
AND s.index_id IN (0,1)