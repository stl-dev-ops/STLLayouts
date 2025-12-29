SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_class2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_class2
AS
SELECT     dbo.hispnt__.datum___, CASE WHEN dbo.hispnt__.datum___ IS NULL THEN ''0'' ELSE ''Average'' END AS wn___rpn, 
                      SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) / COUNT(DISTINCT dbo.hispnt__.wn___rpn) AS Minutes, 
                      CASE WHEN dbo.wpakt___.klasse__ = ''1'' THEN ''Make Ready'' WHEN dbo.wpakt___.klasse__ = ''2'' THEN ''Printing'' WHEN dbo.wpakt___.klasse__ = ''3'' THEN ''Tear Down''
                       WHEN dbo.wpakt___.klasse__ = ''4'' THEN ''Breaks Lunch'' ELSE ''Interrupt'' END AS Class
FROM         dbo.hispnt__ INNER JOIN
                      dbo.wpakt___ ON dbo.hispnt__.wp___ref = dbo.wpakt___.wp___ref AND dbo.hispnt__.akt__ref = dbo.wpakt___.akt__ref
WHERE     (dbo.hispnt__.wp___ref = ''5001'' OR
                      dbo.hispnt__.wp___ref = ''5002'' OR
                      dbo.hispnt__.wp___ref = ''5003'') AND (dbo.hispnt__.wn___rpn = ''GENER'' OR
                      dbo.hispnt__.wn___rpn = ''DESMONDK'' OR
                      dbo.hispnt__.wn___rpn = ''KEELY PRESS'' OR
                      dbo.hispnt__.wn___rpn = ''PHIL PRESS'' OR
                      dbo.hispnt__.wn___rpn = ''ALEXR'' OR
                      dbo.hispnt__.wn___rpn = ''QUOCD'')
GROUP BY dbo.hispnt__.datum___, dbo.wpakt___.klasse__
' 
