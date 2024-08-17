Use DesenvolvedorIoCourse;

--backup FULL
/* 
BACKUP DATABASE DesenvolvedorIoCourse 
TO DISK = '/var/opt/data/backup_devIoCourse_DB'
WITH INIT,
NAME = 'backup_dev_DB';
 */

BACKUP DATABASE DesenvolvedorIoCourse 
TO DISK = '/var/opt/data/differential_backup_devIoCourse_DB'
WITH DIFFERENTIAL,
NAME = 'differential_backup_dev_DB';