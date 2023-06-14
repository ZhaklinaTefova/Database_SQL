--WORKSHOP 02.1
--• Create new procedure called CreateGrade
--• Procedure should create only Grade header info (not Grade Details)
--• Procedure should return the total number of grades in the system for the Student on input
--  (from the CreateGrade)
--• Procedure should return second resultset with the MAX Grade of all grades for the Student
--  and Teacher on input (regardless the Course)


CREATE PROCEDURE dbo.CreateGrade (
	@StudentID int,
	@TeacherID int)
AS
BEGIN
INSERT INTO [dbo].[Grade]
           ([StudentID]
           ,[TeacherID])
     VALUES
           (@StudentID
           ,@TeacherID)


	Select COUNT(g.Grade) AS TotalGradesPerStudent
	From Grade g
	Where g.StudentID = @StudentID

	Select MAX(g.Grade) AS MaxGrade
	From Grade g
	Where g.StudentID = @StudentID AND g.TeacherID = @TeacherID

END




