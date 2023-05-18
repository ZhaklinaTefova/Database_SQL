USE SEDCACADEMYDB

CREATE TABLE [Grade] (
[ID] int IDENTITY(1,1) NOT NULL,
[StudentID] int NOT NULL,
[CourseID] nvarchar (70) NOT NULL,
[Grade] nchar NOT NULL,
[Comment] nvarchar(max) Null,
[CreatedDate] date NOT Null
)

Select * From Grade