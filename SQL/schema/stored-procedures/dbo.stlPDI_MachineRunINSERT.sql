SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_MachineRunINSERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlPDI_MachineRunINSERT] AS' 
END


-- =============================================
-- Author:		jeff rupp
-- Create date: 08/09/2021
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlPDI_MachineRunINSERT]
	-- Add the parameters for the stored procedure here
	@stlPDI_ID int OUTPUT,
	@RunDate nvarchar(10), 
	@MaterialCost decimal(19, 2), 
	@CoatingCost decimal(19, 2), 
	@ToolingCost decimal(19, 2)
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION
	DECLARE @_RunDate DATETIME;

	IF (ISDATE(@RunDate) = 1)
	BEGIN
		SET @_RunDate = CAST(@RunDate AS datetime)
	END

	BEGIN TRY

	INSERT INTO stlPDI_MachineRuns (stlPDI_ID, RunDate, MaterialCost, CoatingCost, ToolingCost)
	VALUES	(@stlPDI_ID, @_RunDate, @MaterialCost, @CoatingCost, @ToolingCost);

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

