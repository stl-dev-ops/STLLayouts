SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CreateNewCohesioRoll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCC_CreateNewCohesioRoll] AS' 
END



-- =============================================
-- Author:		jeff Rupp
-- Create date: 6/16/2023
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlCC_CreateNewCohesioRoll]
	-- Add the parameters for the stored procedure here
	@CohesioRollID int OUTPUT,
	@CohesioCardID int
AS
BEGIN TRANSACTION

BEGIN TRY
	INSERT INTO stlCC_CohesioCardRolls (CohesioCardID)
	VALUES (@CohesioCardID)

	SELECT @CohesioRollID = SCOPE_IDENTITY();

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

