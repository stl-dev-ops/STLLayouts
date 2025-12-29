SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[stlTT_TargetTracker_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[stlTT_TargetTracker_Update] ON  [dbo].[stlTT_TargetTracker] FOR UPDATE 
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	IF not(update(lastUpdate))
	BEGIN
		UPDATE  dbo.stlTT_TargetTracker
			SET     lastUpdate = GETDATE()
			WHERE   stlTT_TargetTrackerID IN (SELECT stlTT_TargetTrackerID FROM     inserted )
	END
END' 
ALTER TABLE [dbo].[stlTT_TargetTracker] ENABLE TRIGGER [stlTT_TargetTracker_Update]
