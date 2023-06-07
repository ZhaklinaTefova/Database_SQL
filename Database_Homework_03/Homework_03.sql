USE SEDCHome

--Calculate the count of all grades per Teacher in the system
Select TeacherID,
	   Count(*) as TeachersGradesAmount
From Grade
Group By TeacherID
Order By TeacherID



--Calculate the count of all grades per Teacher in the system for first 100 Students (ID < 100)
Select TeacherID,
	   StudentID,
	   Count(*) as TeachersGradesAmount
From Grade
Where StudentId < 100
Group By TeacherID, StudentID
Order By TeacherID



--Find the Maximal Grade, and the Average Grade per Student on all grades in the system
Select StudentID,
	   MAX(Grade) as MaxGradePerStudent,
	   AVG(Grade) as AvgGradePerStudent
From Grade
Group By StudentID
Order By StudentID ASC




--Calculate the count of all grades per Teacher in the system and filter only grade count greater then 200
Select TeacherID, COUNT(*) as Grades
From Grade
Group By TeacherID
Having COUNT(*) > 200
Order By TeacherID ASC



--Find the Grade Count, Maximal Grade, and the Average Grade per Student on all grades in the system.
--Filter only records where Maximal Grade is equal to Average Grade
Select StudentID,
	   COUNT(*) as GradeCount,
	   MAX(Grade) as MaxGradePerStudent,
	   AVG(Grade) as AvgGradePerStudent
From Grade
Group by StudentID
Having MAX(Grade) = AVG(Grade)
Order By StudentID ASC



--List Student First Name and Last Name next to the other details from previous query
Select StudentID,
	   s.FirstName + ' ' + s.LastName as FullName,
	   COUNT(*) as GradeCount,
	   MAX(Grade) as MaxGradePerStudent,
	   AVG(Grade) as AvgGradePerStudent
From Grade g
INNER JOIN Student s ON s.ID = g.StudentID
Group by StudentID, s.FirstName , s.LastName
Having MAX(Grade) = AVG(Grade)
Order By StudentID ASC



--Create new view (vv_StudentGrades) that will List all StudentIds and count of Grades per student
CREATE VIEW vv_StudentGrades
AS
Select StudentID,
	   COUNT(*) as GradeCount
From Grade
Group By StudentID



--Change the view to show Student First and Last Names instead of StudentID
ALTER VIEW vv_StudentGrades
AS
Select s.FirstName + ' ' + s.LastName as FullName,
	   COUNT(*) as GradeCount
From Grade g
INNER JOIN Student s ON s.ID = g.StudentID
Group By s.FirstName, s.LastName

Select *
From vv_StudentGrades

--List all rows from view ordered by biggest Grade Count
Select *
From vv_StudentGrades
Order By GradeCount DESC
