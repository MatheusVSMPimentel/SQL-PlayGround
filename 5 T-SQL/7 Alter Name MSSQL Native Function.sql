--ALTER TABLE categories ADD Test VARCHAR(1000);

--EXECUTE sp_rename 'dbo.categories.Test', 'Observation', 'COLUMN'

--select * FROM categories

EXECUTE sp_rename 'dbo.TableTest', 'test_changed'  --Caution: Changing any part of an object name could break scripts and stored procedures.