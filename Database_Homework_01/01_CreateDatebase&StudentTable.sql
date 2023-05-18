CREATE DATABASE SEDCACADEMYDB

USE SEDCACADEMYDB

CREATE TABLE Students (
[ID] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NOT NULL,
[EnrolledDate] date NOT NULL,
[Gender] nchar(1) NULL,
[NationalIDNumber] int NOT NULL,
[StudentCardNumber] int NOT NULL
)

SELECT * FROM Students

INSERT INTO Students (FirstName,LastName,DateOfBirth,EnrolledDate,Gender,NationalIDNumber,StudentCardNumber)
VALUES
('Zhaklina','Tefova','1992-05-26','2022-10-17','F',234323,234),
('Ivana','Markova','1994-02-28','2022-10-17','F',234393,236),
('Trajche','Stojanov','1990-07-16','2022-10-17','M',734323,834),
('Martina','Nikolova','1988-01-08','2022-10-17','F',764323,984),
('Zoran','Trajkovski','1982-10-19','2022-10-17','',154323,634);

Update Students Set Gender = 'F' Where Gender = ''
Update Students Set Gender = 'M' Where ID = 5

