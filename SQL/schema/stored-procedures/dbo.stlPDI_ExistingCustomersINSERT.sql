SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_ExistingCustomersINSERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPDI_ExistingCustomersINSERT] AS' 
END



-- =============================================
-- Author:		jeff rupp
-- Create date: 11/22/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlPDI_ExistingCustomersINSERT]
	-- Add the parameters for the stored procedure here
	@stlPDI_ID int OUTPUT,
	@kla__ref nvarchar(6)
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlPDI_ExistingCustomers (stlPDI_ID, kla__ref)
	VALUES	(@stlPDI_ID, @kla__ref);

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

