SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlOverrideCERMMinMaxWithOurMinMax]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlOverrideCERMMinMaxWithOurMinMax] AS' 
END






-- =============================================
-- Author:		jeff rupp
-- Create date: 02/14/2023
-- Description:	Override Min, Max, and MinMaxComment
-- =============================================
ALTER PROCEDURE [dbo].[stlOverrideCERMMinMaxWithOurMinMax]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	/* Add any new materials to stlMaterialMinMax */
	INSERT INTO stlMaterialMinMax (art__ref, min_stoc, max_stoc, kominfmx) 
	SELECT art__ref, min_stoc, max_stoc, kominfmx 
	FROM artiky__ 
	WHERE art__ref NOT IN (SELECT art__ref FROM stlMaterialMinMax WHERE Deleted = 0) 

	/* Update CERM Min, Max, and MinMaxComment */
	UPDATE m 
	SET 
		m.min_stoc = mm.min_stoc,
		m.max_stoc = mm.max_stoc,
		m.kominfmx = mm.kominfmx 
	FROM artiky__ m INNER JOIN
	stlMaterialMinMax mm ON m.art__ref = mm.art__ref 
	WHERE mm.Deleted = 0

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

