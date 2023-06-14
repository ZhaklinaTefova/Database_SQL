--WORKSHOP 02.2
--• Create new procedure called CreateGradeDetail
--• Procedure should add details for specific Grade (new record for new AchievementTypeID,
--Points, MaxPoints, Date for specific Grade)
--• Output from this procedure should be resultset with SUM of GradePoints calculated with
--formula AchievementPoints/AchievementMaxPoints*ParticipationRate for specific Grade

CREATE PROCEDURE CreateGradeDetail (
		@GradeID int,
		@AchievementTypeID int,
		@AchievementPoints int,
		@AchievementMaxPoints int,
		@AchievementDate date)

AS
BEGIN

INSERT INTO [dbo].[GradeDetails]
           ([GradeID]
           ,[AchievementTypeID]
           ,[AchievementPoints]
           ,[AchievementMaxPoints]
           ,[AchievementDate])
     VALUES
           (@GradeID
           ,@AchievementTypeID
           ,@AchievementPoints
           ,@AchievementMaxPoints
           ,@AchievementDate)

	Select SUM(gd.AchievementPoints/gd.AchievementMaxPoints*act.ParticipationRate) as SumOfGradePoints
	From GradeDetails gd
	INNER JOIN AchievementType act ON act.ID = gd.AchievementTypeID 
	INNER JOIN Grade g ON g.ID = gd.GradeID
	
END


