SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CreateNewCoatingCard]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CreateNewCoatingCard] AS' 
END

-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/5/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CreateNewCoatingCard]
	-- Add the parameters for the stored procedure here
	@CoatingCardID int OUTPUT,
	@ord__ref nvarchar(6)
AS
BEGIN TRANSACTION

BEGIN TRY
	INSERT INTO stlCC_CoatingCards (ord__reF)
	VALUES (@ord__ref)

	SELECT @CoatingCardID = SCOPE_IDENTITY();

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

