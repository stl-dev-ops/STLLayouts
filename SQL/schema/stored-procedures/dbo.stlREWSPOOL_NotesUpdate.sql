SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_NotesUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlREWSPOOL_NotesUpdate] AS' 
END


-- =============================================
-- Author:		jeff rupp
-- Create date: 12/5/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlREWSPOOL_NotesUpdate]
	-- Add the parameters for the stored procedure here
	@NotesID int OUTPUT,
	@Notes nvarchar(1000) 
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	UPDATE stlREWSPOOL_Notes
	SET Notes               = @Notes,
		Updated             = GETDATE(),
		UpdatedBy           = SUSER_SNAME()
	WHERE ID = @NotesID;


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

