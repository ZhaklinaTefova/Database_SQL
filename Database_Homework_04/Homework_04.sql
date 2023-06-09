-- Homework 04
USE SEDCHome

--● Declare scalar variable for storing FirstName values
--		• Assign value ‘Antonio’ to the FirstName variable
--		• Find all Students having FirstName same as the variable

DECLARE @FirstName nvarchar(50)
SET @FirstName = 'Antonio'
Select *
From Student
Where FirstName = @FirstName


--● Declare table variable that will contain StudentId, StudentName and DateOfBirth
--		• Fill the table variable with all Female students

DECLARE @Students TABLE
(StudentId INT NOT NULL, FirstName nvarchar(50) NULL, DateOfBirth date NULL)

INSERT INTO @Students
Select ID, FirstName, DateOfBirth
From Student
Where Gender = 'F'

Select *
From @Students


--● Declare temp table that will contain LastName and EnrolledDate columns
--		• Fill the temp table with all Male students having First Name starting with ‘A’
--		• Retrieve the students from the table which last name is with 7 characters

CREATE TABLE #StudentTemp
(LastName nvarchar(50) NULL, EnrollrdDate date NULL)

INSERT INTO #StudentTemp
Select LastName, EnrolledDate
From Student
Where FirstName LIKE 'A%' AND Gender = 'M'

Select *
From #StudentTemp
Where LEN(LastName) = 7


--● Find all teachers whose FirstName length is less than 5 and
--		• the first 3 characters of their FirstName and LastName are the same

DECLARE @TeachersName TABLE
(FirstName nvarchar(50) NULL, LastName nvarchar (50))

INSERT INTO @TeachersName
Select FirstName, LastName
From Teacher
Where LEN(FirstName) < 5

Select *
From @TeachersName
Where LEFT(FirstName, 3) = LEFT(LastName, 3)


