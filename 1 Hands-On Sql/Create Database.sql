--CREATE DATABASE DesenvolvedorIoCourse;

--Try Connect with another instance and drop database and will give a error
--DROP DATABASE DesenvolvedorIoCourse;

--Force Database to be accessible only by one use
--ALTER DATABASE DesenvolvedorIoCourse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
--DROP DATABASE DesenvolvedorIoCourse;

--Create Database
--CREATE DATABASE DesenvolvedorIoCourse;

CREATE DATABASE DesenvolvedorIoCourse 
ON (Name = 'DevIoCourse', FILENAME = '/var/opt/data/DevIoCourse.mdf')
LOG ON( Name = "DevIoCourse_ldf", FILENAME = '/var/opt/data/DevIoCourse.ldf') ;

