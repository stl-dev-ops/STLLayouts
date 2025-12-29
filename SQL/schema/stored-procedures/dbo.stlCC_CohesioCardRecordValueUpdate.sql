SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRecordValueUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CohesioCardRecordValueUpdate] AS' 
END

-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/13/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CohesioCardRecordValueUpdate]
	-- Add the parameters for the stored procedure here
	@CohesioCardID int,
	@CohesioSectionID int,
	@CohesioSettingID int,
	@Value nvarchar(255)
AS
BEGIN TRANSACTION
	DECLARE @oldValue nvarchar(255);

BEGIN TRY

	SET @oldValue = (
						SELECT [Value]
						FROM stlCC_CohesioCardValues
						WHERE Deleted = 0
						AND CohesioCardID = @CohesioCardID AND CohesioSectionID = @CohesioSectionID AND CohesioSettingID = @CohesioSettingID
					);

	IF @Value <> ISNULL(@oldValue, '')
	BEGIN
		UPDATE stlCC_CohesioCardValues
		SET Deleted = 1 
		WHERE CohesioCardID = @CohesioCardID AND CohesioSectionID = @CohesioSectionID AND CohesioSettingID = @CohesioSettingID;
	
		IF @Value <> ''
		BEGIN
			INSERT INTO stlCC_CohesioCardValues (CohesioCardID, CohesioSectionID, CohesioSettingID, [Value])
			VALUES (@CohesioCardID, @CohesioSectionID, @CohesioSettingID, @Value);
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

