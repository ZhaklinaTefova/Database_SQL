USE SEDCACADEMYDB

CREATE TABLE [GradeDetails](
[ID] int IDENTITY (1,1) NOT NULL,
[Name] nvarchar(50) NOT NULL,
[Credit] tinyint NOT NULL,
[AcademicYear] date NOT NULL,
[Semester] tinyint NOT NULL)

SELECT * FROM GradeDetails

DROP TABLE GradeDetails

CREATE TABLE [GradeDetails](
[ID] int IDENTITY (1,1) NOT NULL,
[GradeID] tinyint NOT NULL,
[AchievementTypeID] nvarchar(20) NOT NULL,
[AchievementPoints] int NOT NULL,
[AchievementMaxPoints] int NOT NULL,
[AchievementDate] date NOT NULL)


SELECT * FROM GradeDetails