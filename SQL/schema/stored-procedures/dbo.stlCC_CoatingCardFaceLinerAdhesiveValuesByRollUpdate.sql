SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardFaceLinerAdhesiveValuesByRollUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CoatingCardFaceLinerAdhesiveValuesByRollUpdate] AS' 
END


-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/21/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CoatingCardFaceLinerAdhesiveValuesByRollUpdate]
	-- Add the parameters for the stored procedure here
	@CoatingCardRollID int,
	@Face float,
	@Liner float,
	@AdhesiveTarget float,
	@AdhesiveThickness float,
	@ToleranceID int,
	@LockMeasurements tinyint
AS
BEGIN TRANSACTION
	DECLARE @oldFace float;
	DECLARE @oldLiner float;
	DECLARE @oldAdhesiveTarget float;
	DECLARE @oldAdhesiveThickness float;
	DECLARE @oldToleranceID int;
	DECLARE @oldLockMeasurements tinyint;

	BEGIN TRY

		SELECT @oldFace = Face, @oldLiner = Liner, @oldAdhesiveTarget = AdhesiveTarget, @oldToleranceID = ToleranceID, @oldAdhesiveThickness = AdhesiveThickness, @oldLockMeasurements = LockMeasurements 
 		FROM stlCC_CoatingCardRolls
		WHERE ID = @CoatingCardRollID AND Deleted = 0

		IF @Face <> @oldFace OR @Liner <> @oldLiner OR @AdhesiveTarget <> @oldAdhesiveTarget OR @AdhesiveThickness <> @oldAdhesiveThickness OR @ToleranceID <> @oldToleranceID OR @LockMeasurements <> @oldLockMeasurements 
		BEGIN
			UPDATE stlCC_CoatingCardRolls
			SET Face = @Face, Liner = @Liner, AdhesiveTarget = @AdhesiveTarget, ToleranceID = @ToleranceID, AdhesiveThickness = @AdhesiveThickness, LockMeasurements = @LockMeasurements, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
			WHERE Deleted = 0 AND ID = @CoatingCardRollID
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

