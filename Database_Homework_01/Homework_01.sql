--CREATE DATABASE SEDCHome

USE SEDCHome

			
--STUDENT TABLE
CREATE TABLE Student (
[ID] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(50) NULL,
[LastName] nvarchar(50) NULL,
[DateOfBirth] date NULL,
[EnrolledDate] date NULL,
[Gender] nvarchar(50) NULL,
[NationalIDNumber] nvarchar(50) NULL,
[StudentCardNumber] nvarchar(50) NULL,
CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED (
[Id] ASC
))

SELECT * FROM Student

INSERT INTO Student (FirstName,LastName,DateOfBirth,EnrolledDate,Gender,NationalIDNumber,StudentCardNumber)
VALUES
('Zhaklina','Tefova','1992-05-26','2022-10-17','F',234323,234),
('Ivana','Markova','1994-02-28','2022-10-17','F',234393,236),
('Trajche','Stojanov','1990-07-16','2022-10-17','M',734323,834),
('Martina','Nikolova','1988-01-08','2022-10-17','F',764323,984),
('Zoran','Trajkovski','1982-10-19','2022-10-17','',154323,634);

Update Student Set Gender = 'F' Where Gender = ''
Update Student Set Gender = 'M' Where ID = 5




-- TEACHER TABLE
CREATE TABLE [Teacher](
[ID] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(50) NULL,
[LastName] nvarchar(50) NULL,
[DateOfBirth] date NULL,
[AcademicRank] nvarchar(100) NULL,
[HireDate] date NULL,
CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED (
[Id] ASC
))

SELECT * FROM Teacher

INSERT INTO Teacher (FirstName,LastName,DateOfBirth,AcademicRank,HireDate)
VALUES
('Zhak','Silevska','1992-05-26',3,'2001-02-17'),
('Todorka','Nikolov','1994-02-28',6,'1988-10-12'),
('Goran','Markovski','1965-07-16', 1,'1985-06-01'),
('Milica','Mitreva','1988-01-08',32,'2011-10-17'),
('Zoran','Trajkovski','1982-10-19',112,'2022-02-15');






--GRADE TABLE
CREATE TABLE [Grade] (
[ID] int IDENTITY(1,1) NOT NULL,
[StudentID] int NULL,
[CourseID] int NULL,
[TeacherID] int NULL,
[Grade] int NULL,
[Comment] nvarchar(max) NULL,
[CreatedDate] date NULL,
CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED (
[Id] ASC
))
Select * From Grade







--GRADE_DETAILS TABLE
CREATE TABLE [GradeDetails](
[ID] int IDENTITY (1,1) NOT NULL,
[GradeID] int NULL,
[AchievementTypeID] int NOT NULL,
[AchievementPoints] int NOT NULL,
[AchievementMaxPoints] int NOT NULL,
[AchievementDate] date NOT NULL,
CONSTRAINT [PK_GradeDetails] PRIMARY KEY CLUSTERED (
[Id] ASC
))

SELECT * FROM GradeDetails




--COURSE TABLE
CREATE TABLE [Course](
[ID] int IDENTITY (1,1) NOT NULL,
[Name] nvarchar(100) NULL,
[Credit] int NULL,
[AcademicYear] int NULL,
[Semester] int NULL,
CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED (
[ID] ASC
))

SELECT * FROM COURSE



--ACHIEVEMENT_TYPE TABLE
CREATE TABLE [AchievementType] (
[ID] int IDENTITY (1,1) NOT NULL,
[Name] nvarchar (20) NULL,
[Description] nvarchar(max) NULL,
[ParticipationRate] int NULL,
CONSTRAINT [PK_AchievementType] PRIMARY KEY CLUSTERED (
[ID] ASC
))

SELECT * FROM AchievementType