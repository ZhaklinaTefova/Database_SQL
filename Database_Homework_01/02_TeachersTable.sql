USE SEDCACADEMYDB

CREATE TABLE [Teachers](
[ID] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NOT NULL,
[AcademicRank] int NOT NULL,
[HireDate] date NOT NULL)

SELECT * FROM Teachers

INSERT INTO Teachers (FirstName,LastName,DateOfBirth,AcademicRank,HireDate)
VALUES
('Zhak','Silevska','1992-05-26',3,'2001-02-17'),
('Todorka','Nikolov','1994-02-28',6,'1988-10-12'),
('Goran','Markovski','1965-07-16', 1,'1985-06-01'),
('Milica','Mitreva','1988-01-08',32,'2011-10-17'),
('Zoran','Trajkovski','1982-10-19',112,'2022-02-15');
