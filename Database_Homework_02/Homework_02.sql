USE SEDCHome

--Find all Students with FirstName = Antonio
Select *
From Student
Where FirstName = 'Antonio'


--Find all Students with DateOfBirth greater than ‘01.01.1999’
Select *
From Student
Where DateOfBirth > '01.01.1999'


--Find all Students with LastName starting With ‘J’ enrolled in January/1998
Select *
From Student
Where LastName LIKE 'J%' AND EnrolledDate >= '1998-01-01' AND EnrolledDate < '1998-02-01'


--List all Students ordered by FirstName
Select *
From Student
Order by FirstName ASC


--List all Teacher Last Names and Student Last Names in single result set.
Select t.LastName
From Teacher t
UNION ALL
Select s.LastName
From Student s

--Remove duplicates
Select t.LastName
From Teacher t
UNION
Select s.LastName
From Student s



--Create Foreign key constraints from diagram or with script
ALTER TABLE Grade WITH CHECK
ADD CONSTRAINT FK_Grade_Student
FOREIGN KEY (StudentID)
REFERENCES Student (ID)

ALTER TABLE Grade WITH CHECK
ADD CONSTRAINT FK_Grade_Course
FOREIGN KEY (CourseID)
REFERENCES Course (ID)

ALTER TABLE Grade WITH CHECK
ADD CONSTRAINT FK_Grade_Teacher
FOREIGN KEY (TeacherID)
REFERENCES Teacher (ID)

ALTER TABLE GradeDetails WITH CHECK
ADD CONSTRAINT FK_GradeDetails_Grade
FOREIGN KEY (GradeID)
REFERENCES Grade (ID)

ALTER TABLE GradeDetails WITH CHECK
ADD CONSTRAINT FK_GradeDetails_AchievementType
FOREIGN KEY (AchievementTypeID)
REFERENCES AchievementType (ID)




--List all possible combinations of Courses names and AchievementType
--names that can be passed by student

Select c.Name , at.Name
From Course c
Cross Join AchievementType at




--List all Teachers without exam Grade
Select t.*
From Teacher t
Left Join Grade g ON t.ID = g.Grade
Where g.Grade IS NULL


