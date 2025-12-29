SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdatePressesTheInkWasAddedTo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdatePressesTheInkWasAddedTo] AS' 
END


-- =============================================
-- Author:		<jeff> 
-- Create date: 5/1/2025

-- =============================================
ALTER PROCEDURE [dbo].[stlUpdatePressesTheInkWasAddedTo]
	-- Add the parameters for the stored procedure here
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		
		BEGIN TRY
			MERGE INTO gegdet__ AS target
			USING (
				SELECT 'artiky__' tabname_, art__ref det__ref, '000085' vrg__ref, CAST(STUFF 
				((SELECT N', ' + prs__oms 
				FROM 
				( 
					SELECT ic.ink__ref, p.prs__oms 
					FROM eprsiv__ ic JOIN 
					epersn__ p ON ic.prs__ref = p.prs__ref AND p.blokkeer = 'N' 
					WHERE ic.ink__ref IN (SELECT art__ref FROM artiky__) 
					UNION 
					SELECT ic.klpmsref, p.prs__oms 
					FROM eprsiv__ ic JOIN 
					epersn__ p ON ic.prs__ref = p.prs__ref AND p.blokkeer = 'N' 
					WHERE ic.klpmsref IN (SELECT art__ref FROM artiky__) 
				) presses 
				WHERE presses.ink__ref = ink.art__ref
				ORDER BY presses.prs__oms FOR XML PATH('')), 1, 2, '') AS NVARCHAR(255)) antw_txt 
				FROM artiky__ ink 
				WHERE CAST(STUFF 
				((SELECT N', ' + prs__oms 
				FROM 
				( 
					SELECT ic.ink__ref, p.prs__oms 
					FROM eprsiv__ ic JOIN 
					epersn__ p ON ic.prs__ref = p.prs__ref AND p.blokkeer = 'N' 
					WHERE ic.ink__ref IN (SELECT art__ref FROM artiky__) 
					UNION 
					SELECT ic.klpmsref, p.prs__oms 
					FROM eprsiv__ ic JOIN 
					epersn__ p ON ic.prs__ref = p.prs__ref AND p.blokkeer = 'N' 
					WHERE ic.klpmsref IN (SELECT art__ref FROM artiky__) 
				) presses 
				WHERE presses.ink__ref = ink.art__ref 
				ORDER BY presses.prs__oms FOR XML PATH('')), 1, 2, '') AS NVARCHAR(255)) IS NOT NULL 
				GROUP BY ink.art__ref 
			) AS source
			ON target.tabname_ = source.tabname_
			   AND target.det__ref = source.det__ref
			   AND target.vrg__ref = source.vrg__ref
			WHEN MATCHED THEN
				UPDATE SET target.antw_txt = source.antw_txt
			WHEN NOT MATCHED THEN
				INSERT (tabname_, det__ref, vrg__ref, antw_txt)
				VALUES (source.tabname_, source.det__ref, source.vrg__ref, source.antw_txt);
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



