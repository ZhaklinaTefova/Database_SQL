USE SEDCACADEMYDB

CREATE TABLE [Course](
[ID] int IDENTITY (1,1) NOT NULL,
[Name] nvarchar(100) NOT NULL,
[Credit] tinyint NOT NULL,
[AcademicYear] date NOT NULL,
[Semester] tinyint NOT NULL)

SELECT * FROM COURSE