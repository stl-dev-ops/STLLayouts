SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardMeasurementUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CohesioCardMeasurementUpdate] AS' 
END


-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/16/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CohesioCardMeasurementUpdate]
	-- Add the parameters for the stored procedure here
	@CohesioCardRollID int,
	@AdhesiveTypeID int null,
	@SideID int,
	@Measurement nvarchar(50)
AS
BEGIN TRANSACTION
	DECLARE @measurement__Count int
	DECLARE @measurement_float float

	BEGIN TRY
		IF @AdhesiveTypeID IS NULL
			BEGIN
				SELECT @measurement__Count = 
							(
								SELECT COUNT(ID) 
								FROM stlCC_CohesioCardRollMeasurements 
								WHERE Deleted = 0 
								AND CohesioRollID = @CohesioCardRollID 
								AND SideID = @SideID 
							);
			END
		ELSE
			BEGIN
				SELECT @measurement__Count = 
							(
								SELECT COUNT(ID) 
								FROM stlCC_CohesioCardRollMeasurements 
								WHERE Deleted = 0 
								AND CohesioRollID = @CohesioCardRollID 
								AND AdhesiveTypeID = @AdhesiveTypeID
								AND SideID = @SideID 
							);
			END

		

		IF ISNUMERIC(@Measurement) = 1
			BEGIN
				SELECT @measurement_float = CAST(@Measurement AS float);

				IF @measurement__Count = 0  /*INSERT*/
					BEGIN
						IF @AdhesiveTypeID IS NULL
							BEGIN
								INSERT INTO stlCC_CohesioCardRollMeasurements (CohesioRollID, SideID, [Value])
								VALUES (@CohesioCardRollID, @SideID, @measurement_float);
							END
						ELSE
							BEGIN
								INSERT INTO stlCC_CohesioCardRollMeasurements (CohesioRollID, AdhesiveTypeID, SideID, [Value])
								VALUES (@CohesioCardRollID, @AdhesiveTypeID, @SideID, @measurement_float);
							END
					END
				ELSE
					BEGIN /*UPDATE*/
						IF @AdhesiveTypeID IS NULL
							BEGIN
								UPDATE stlCC_CohesioCardRollMeasurements
								SET [Value] = @measurement_float, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
								WHERE Deleted = 0 
								AND CohesioRollID = @CohesioCardRollID 
								AND SideID = @SideID;
							END
						ELSE
							BEGIN
								UPDATE stlCC_CohesioCardRollMeasurements
								SET [Value] = @measurement_float, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
								WHERE Deleted = 0 
								AND CohesioRollID = @CohesioCardRollID 
								AND AdhesiveTypeID = @AdhesiveTypeID
								AND SideID = @SideID;
							END
					END
			END
		ELSE
			BEGIN
				/* DELETE RECORD */
				IF @AdhesiveTypeID IS NULL
					BEGIN
						UPDATE stlCC_CohesioCardRollMeasurements
						SET Deleted = 1, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
						WHERE Deleted = 0 
						AND CohesioRollID = @CohesioCardRollID 
						AND SideID = @SideID;
					END
				ELSE
					BEGIN
						UPDATE stlCC_CohesioCardRollMeasurements
						SET Deleted = 1, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
						WHERE Deleted = 0 
						AND CohesioRollID = @CohesioCardRollID 
						AND AdhesiveTypeID = @AdhesiveTypeID
						AND SideID = @SideID;
					END
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

