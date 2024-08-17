use master;
BACKUP DATABASE DesenvolvedorIoCourse 
TO DISK = '/var/opt/data/backup_devIoCourse_DB'
WITH INIT,
NAME = 'backup_dev_DB';