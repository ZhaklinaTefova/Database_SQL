USE SEDCACADEMYDB

CREATE TABLE [AchievementType] (
[ID] int IDENTITY (1,1) NOT NULL,
[Name] nvarchar (20) NOT NULL,
[Description] nvarchar(max) NULL,
[ParticipationRate] int NOT NULL)

SELECT * FROM AchievementType