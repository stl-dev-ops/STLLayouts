SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateJobThatCreatedThisSKU]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateJobThatCreatedThisSKU] AS' 
END




-- =============================================
-- Author:		jeff rupp
-- Create date: 03/15/2023
-- Description:	stobew joined with grsbon to find the job that created a sku had a high impacted on queries
--              this updates stlJobThatCreatedThisSKU (artd_ref, ord__ref) which has indexes on both artd_ref, ord__ref to improve query performance
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateJobThatCreatedThisSKU]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlJobThatCreatedThisSKU (artd_ref, ord__ref)

		SELECT DISTINCT artd_ref, grsbon__.ord__ref 
		FROM stobew__ INNER JOIN        
		grsbon__ ON stobew__.grbonref = grsbon__.grbonref AND stobew__.grs__vnr = grsbon__.grs__vnr
		WHERE soort___ = '2' AND grsbon__.ord__ref <> '' AND artd_ref <> ''  
		AND artd_ref NOT IN
		(SELECT artd_ref FROM stlJobThatCreatedThisSKU);

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

