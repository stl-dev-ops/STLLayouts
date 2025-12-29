SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargetsUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargetsUpdate] AS' 
END


-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/14/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargetsUpdate]
	-- Add the parameters for the stored procedure here
	@CohesioCardID int,
	@AdhesiveTypeID int,
	@AdhesiveRangeID int,
	@Value nvarchar(255)
AS
BEGIN TRANSACTION
	DECLARE @floatValue float;
	DECLARE @oldValue float;

BEGIN TRY

	SET @oldValue = (
						SELECT [Value]
						FROM stlCC_CohesioCardAdhesiveCoatWeightTargets
						WHERE CohesioCardID = @CohesioCardID AND Deleted = 0 AND AdhesiveTypeID = @AdhesiveTypeID AND AdhesiveRangeID = @AdhesiveRangeID
					);
	
	IF ISNUMERIC(@Value) = 1
	BEGIN
		SET @floatValue = (SELECT CAST(@Value AS float));
	END
	
	IF ISNULL(@floatValue, '') <> ISNULL(@oldValue, '')
	BEGIN
		UPDATE stlCC_CohesioCardAdhesiveCoatWeightTargets
		SET Deleted = 1
		WHERE CohesioCardID = @CohesioCardID AND AdhesiveTypeID = @AdhesiveTypeID AND AdhesiveRangeID = @AdhesiveRangeID;

		IF ISNULL(@floatValue, '') <> ''
		BEGIN
			INSERT INTO stlCC_CohesioCardAdhesiveCoatWeightTargets (CohesioCardID, AdhesiveTypeID, AdhesiveRangeID, [Value])
			VALUES (@CohesioCardID, @AdhesiveTypeID, @AdhesiveRangeID, @floatValue);
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

