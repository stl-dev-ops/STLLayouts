SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_lam_compare]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_lam_compare
AS
SELECT     TOP (100) PERCENT art__ref, SUM(aantal__) AS Consume, ord__ref, 
                      CASE WHEN wp___ref = ''5001'' THEN ''A10'' WHEN wp___ref = ''5002'' THEN ''B2'' ELSE ''F16'' END AS wp___ref
FROM         dbo.stobew__
WHERE     (ord__ref <> ''N'') AND (wp___ref = ''5001'') OR
                      (wp___ref = ''5002'') OR
                      (wp___ref = ''5003'')
GROUP BY ord__ref, art__ref, wp___ref
ORDER BY ord__ref
' 
