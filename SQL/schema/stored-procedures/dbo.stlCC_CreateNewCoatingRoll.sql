SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CreateNewCoatingRoll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CreateNewCoatingRoll] AS' 
END


-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/5/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CreateNewCoatingRoll]
	-- Add the parameters for the stored procedure here
	@CoatingRollID int OUTPUT,
	@CoatingCardID int
AS
BEGIN TRANSACTION

BEGIN TRY
	INSERT INTO stlCC_CoatingCardRolls (CoatingCardID)
	VALUES (@CoatingCardID)

	SELECT @CoatingRollID = SCOPE_IDENTITY();

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

