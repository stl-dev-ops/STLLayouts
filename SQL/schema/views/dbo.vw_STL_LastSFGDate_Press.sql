SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_LastSFGDate_Press]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_LastSFGDate_Press
AS
SELECT        ord__ref, wp___ref, MAX(dt___end) AS LastSFGDt
FROM            dbo.hlfvrd__
WHERE        (toestand IN (''1'', ''2'')) AND (wp___ref IN (''5001'', ''5002'', ''5003''))
GROUP BY ord__ref, wp___ref
' 
