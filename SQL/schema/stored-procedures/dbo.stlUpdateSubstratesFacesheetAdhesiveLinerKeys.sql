SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateSubstratesFacesheetAdhesiveLinerKeys]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateSubstratesFacesheetAdhesiveLinerKeys] AS' 
END


-- =============================================
-- Author:		jeff rupp
-- Create date: 11/16/2022
-- Description:	Converts the drg__rpn in drgers__.taal___7, drgers__.taal___8, and drgers__.taal___9 to drg__refs and inserts them into stlSubstrates.
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateSubstratesFacesheetAdhesiveLinerKeys]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY


	DELETE FROM stlSubstrates;

	INSERT INTO stlSubstrates 

	SELECT 
		S.drg__ref SubstrateID, 
		S2.drg__ref FaceSheetID, 
		S3.drg__ref AdhesiveID, 
		S4.drg__ref LinerID, 
		CASE S.geblokk_ WHEN 'Y' THEN 1 WHEN 'N' THEN 0 END Blocked
	FROM
	(
		SELECT TOP 1 WITH TIES drg__ref, drg__rpn AS SubstrateKey
		FROM drgers__
		WHERE drg__rpn <> ''
		ORDER BY ROW_NUMBER() OVER (PARTITION BY drg__rpn ORDER BY RowID)
	) AS S2 RIGHT JOIN
	(
		SELECT TOP 1 WITH TIES drg__ref, drg__rpn AS SubstrateKey
		FROM drgers__ AS drgers___2
		WHERE drg__rpn <> ''
		ORDER BY ROW_NUMBER() OVER (PARTITION BY drg__rpn ORDER BY RowID)
	) AS S3 RIGHT JOIN
	drgers__ AS S ON S3.SubstrateKey = S.taal___8 LEFT OUTER JOIN
	(
		SELECT TOP 1 WITH TIES drg__ref, drg__rpn AS SubstrateKey
		FROM drgers__ AS drgers___3
		WHERE drg__rpn <> ''
		ORDER BY ROW_NUMBER() OVER (PARTITION BY drg__rpn ORDER BY RowID)
	) AS S4 ON S.taal___9 = S4.SubstrateKey ON S2.SubstrateKey = S.taal___7;

	DELETE FROM stlMaterialsFaceSheetAdhesiveLinerIDs;

	INSERT INTO stlMaterialsFaceSheetAdhesiveLinerIDs

	SELECT m.art__ref, ISNULL((SELECT art__ref FROM artiky__ WHERE art__rpn = TRIM(s.taal___7)), ''), ISNULL((SELECT art__ref FROM artiky__ WHERE art__rpn = TRIM(s.taal___8)), ''), ISNULL((SELECT art__ref FROM artiky__ WHERE art__rpn = TRIM(s.taal___9)), '')
	FROM artiky__ m INNER JOIN
	drgers__ s ON m.drg__ref = s.drg__ref 

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

