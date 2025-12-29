SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTrackingUpsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlOT_OvertimeTrackingUpsert] AS' 
END

-- =============================================
-- Author:		<jeff> 
-- Create date: <Create Date,,>
-- Description:	Track overtime reasons
-- 
-- =============================================
ALTER PROCEDURE [dbo].[stlOT_OvertimeTrackingUpsert]
	-- Add the parameters for the stored procedure here
	@MachineID int,
	@PeriodID int,
	@OT_Date nvarchar(10),
	@Overtime tinyint,
	@ReasonID int
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @RECORD_COUNT int,
				@pReasonID int

		BEGIN TRY

			SELECT @RECORD_COUNT = 
				(SELECT COUNT(ID) 
				 FROM stlOT_OvertimeTracking
				 WHERE OT_Date = @OT_Date AND MachineID = @MachineID AND PeriodID = @PeriodID);

			IF @ReasonID <> 0
			BEGIN
				SET @pReasonID = @ReasonID;
			END

			IF @RECORD_COUNT = 0
			BEGIN
				--Have to INSERT record
				INSERT INTO stlOT_OvertimeTracking 
						( MachineID,  PeriodID,  OT_Date,  Overtime,  ReasonID ) 
				VALUES ( @MachineID, @PeriodID, @OT_Date, @Overtime, @pReasonID );
			END
			ELSE
			BEGIN
				UPDATE stlOT_OvertimeTracking 
				SET Overtime = @Overtime,
					ReasonID = @pReasonID,
					Updated = GETDATE(),
					UpdatedBy = SUSER_NAME()
				WHERE OT_Date = @OT_Date AND MachineID = @MachineID AND PeriodID = @PeriodID;
			END
		END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS



