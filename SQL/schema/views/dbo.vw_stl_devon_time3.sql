SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_time3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_time3
AS
SELECT     TOP (100) PERCENT SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) AS ActBreak, dbo.hispnt__.wn___ref, dbo.hispnt__.ord__ref
FROM         dbo.hispnt__ INNER JOIN
                      dbo.wpakt___ ON dbo.hispnt__.akt__ref = dbo.wpakt___.akt__ref AND dbo.hispnt__.wp___ref = dbo.wpakt___.wp___ref
WHERE     (dbo.hispnt__.wp___ref IN (''5001'', ''5002'', ''5003'')) AND (dbo.wpakt___.klasse__ = ''3'')
GROUP BY dbo.hispnt__.wn___ref, dbo.hispnt__.ord__ref
ORDER BY dbo.hispnt__.ord__ref
' 
