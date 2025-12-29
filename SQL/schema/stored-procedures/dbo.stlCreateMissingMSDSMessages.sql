SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateMissingMSDSMessages]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateMissingMSDSMessages] AS' 
END





-- =============================================
-- Author:		jeff rupp
-- Create date: 09/29/2023
-- Description:	Create popup in Material PO module if MSDS is missing!
--              When the material custom list vrg__ref = '000055' = 'No' then warn Purchasing when creating a PO that an MSDS is needed and Missing
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateMissingMSDSMessages]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	/* delete all existing MSDS popups */
	DELETE FROM artinf__ WHERE volgnr__ = 'SDS';

	/* add MSDS popups to all mats where SDS on file = No (000055) */
	INSERT INTO artinf__ (art__ref, volgnr__, rcl__ref, inf___01)

	SELECT art__ref, 'SDS', '300', 'Missing MSDS!!!'
	FROM artiky__ m
	WHERE ISNULL(
					(
						SELECT antw_oms 
						FROM gegant__ 
						WHERE vrg__ref = '000055' 
						AND antw_ref = 
							(
								SELECT antw_ref 
								FROM gegdet__ 
								WHERE det__ref = m.art__ref 
								AND gegdet__.tabname_ = 'artiky__' 
								AND gegdet__.vrg__ref = '000055'
							)
					)
					, ''
				) = 'No'


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

