SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_timenew]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_timenew
AS
SELECT     dbo.hispnt__.wn___ref, dbo.hispnt__.datum___, dbo.hispnt__.datum___ AS ToDate, dbo.hispnt__.wp___ref, dbo.hispnt__.ord__ref, dbo.hispnt__.wn___rpn, 
                      SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) AS Minutes, 
                      CASE WHEN dbo.wpakt___.klasse__ = ''1'' THEN ''Make Ready'' WHEN dbo.wpakt___.klasse__ = ''2'' THEN ''Print'' WHEN dbo.wpakt___.klasse__ = ''3'' THEN ''Tear Down'' ELSE
                       ''Other'' END AS ''klasse__''
FROM         dbo.hispnt__ LEFT OUTER JOIN
                      dbo.wpakt___ ON dbo.hispnt__.wp___ref = dbo.wpakt___.wp___ref AND dbo.hispnt__.akt__ref = dbo.wpakt___.akt__ref
WHERE     (dbo.hispnt__.wp___ref = ''5001'') OR
                      (dbo.hispnt__.wp___ref = ''5002'') OR
                      (dbo.hispnt__.wp___ref = ''5003'')
GROUP BY dbo.hispnt__.wn___ref, dbo.hispnt__.datum___, dbo.hispnt__.wp___ref, dbo.hispnt__.ord__ref, dbo.hispnt__.wn___rpn, dbo.wpakt___.klasse__
' 
