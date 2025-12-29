SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_coat_ft]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_coat_ft
AS
SELECT     TOP (100) PERCENT art__ref, SUM(aantal__) AS Consume, ord__ref, CASE WHEN wp___ref = ''4001'' THEN ''Coating'' ELSE ''Cohesio'' END AS wp___ref
FROM         dbo.stobew__
WHERE     (ord__ref > ''0'') AND (wp___ref = ''4001'') OR
                      (wp___ref = ''9801'')
GROUP BY ord__ref, art__ref, wp___ref
ORDER BY ord__ref
' 
