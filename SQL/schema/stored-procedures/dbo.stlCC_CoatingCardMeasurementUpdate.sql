SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardMeasurementUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CoatingCardMeasurementUpdate] AS' 
END

-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/5/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CoatingCardMeasurementUpdate]
	-- Add the parameters for the stored procedure here
	@CoatingCardRollID int,
	@MeasurementNumber int,
	@Measurement nvarchar(50)
AS
BEGIN TRANSACTION
	DECLARE @measurement__Count int
	DECLARE @measurement_float float

	BEGIN TRY
		SELECT @measurement__Count = 
				(
					SELECT COUNT(ID) 
					FROM stlCC_CoatingCardRollMeasurements 
					WHERE Deleted = 0 
					AND CoatingCardRollID = @CoatingCardRollID 
					AND MeasurementNumber = @MeasurementNumber
				);

		IF ISNUMERIC(@Measurement) = 1
			BEGIN
				SELECT @measurement_float = CAST(@Measurement AS float);

				IF @measurement__Count = 0  /*INSERT*/
					BEGIN
						INSERT INTO stlCC_CoatingCardRollMeasurements (CoatingCardRollID, MeasurementNumber, Measurement)
						VALUES (@CoatingCardRollID, @MeasurementNumber, @measurement_float);
					END
				ELSE
					BEGIN /*UPDATE*/
						UPDATE stlCC_CoatingCardRollMeasurements
						SET Measurement = @measurement_float, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
						WHERE Deleted = 0 
						AND CoatingCardRollID = @CoatingCardRollID 
						AND MeasurementNumber = @MeasurementNumber;
					END
			END
		ELSE
			BEGIN
				/* DELETE RECORD */
				UPDATE stlCC_CoatingCardRollMeasurements
				SET Deleted = 1, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
				WHERE Deleted = 0 
				AND CoatingCardRollID = @CoatingCardRollID 
				AND MeasurementNumber = @MeasurementNumber;
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

