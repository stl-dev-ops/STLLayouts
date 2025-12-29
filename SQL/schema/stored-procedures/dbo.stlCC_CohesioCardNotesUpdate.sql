SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardNotesUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CohesioCardNotesUpdate] AS' 
END


-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/13/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CohesioCardNotesUpdate]
	-- Add the parameters for the stored procedure here
	@CohesioCardID int,
	@Notes nvarchar(1000)
AS
BEGIN TRANSACTION
	DECLARE @oldValue nvarchar(1000);

BEGIN TRY

	SET @oldValue = (
						SELECT Notes
						FROM stlCC_CohesioCardNotes
						WHERE Deleted = 0
						AND CohesioCardID = @CohesioCardID
					);

	IF @Notes <> ISNULL(@oldValue, '')
	BEGIN
		UPDATE stlCC_CohesioCardNotes
		SET Deleted = 1 
		WHERE CohesioCardID = @CohesioCardID;
	
		IF @Notes <> ''
		BEGIN
			INSERT INTO stlCC_CohesioCardNotes (CohesioCardID, Notes)
			VALUES (@CohesioCardID, @Notes);
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

