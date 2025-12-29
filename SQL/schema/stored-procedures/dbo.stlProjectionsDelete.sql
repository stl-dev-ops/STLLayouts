SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsDelete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsDelete] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsDelete] 
	-- Add the parameters for the stored procedure here
	@ID int
AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	BEGIN TRANSACTION

		BEGIN TRY
			DELETE FROM [dbo].[stlProjections]
			WHERE ID = @ID;
		END TRY

		BEGIN CATCH
			SELECT   
				ERROR_NUMBER()    AS ErrorNumber,  
				ERROR_SEVERITY()  AS ErrorSeverity,  
				ERROR_STATE()     AS ErrorState,  
				ERROR_PROCEDURE() AS ErrorProcedure,  
				ERROR_LINE()      AS ErrorLine,  
				ERROR_MESSAGE()   AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

