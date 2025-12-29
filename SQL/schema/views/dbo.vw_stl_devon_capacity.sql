SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_capacity]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_capacity
AS
SELECT     dbo.hispnt__.ord__ref, dbo.hispnt__.datum___, SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) AS Minutes, 
                      CASE WHEN dbo.wpakt___.klasse__ = ''1'' THEN ''Make Ready'' WHEN dbo.wpakt___.klasse__ = ''2'' THEN ''Printing'' WHEN dbo.wpakt___.klasse__ = ''3'' THEN ''Tear Down''
                       WHEN dbo.wpakt___.klasse__ = ''4'' THEN ''Breaks Lunch'' ELSE ''Interrupt'' END AS Class, dbo.prodkl__.omschr__, dbo.order___.oplage__
FROM         dbo.hispnt__ INNER JOIN
                      dbo.wpakt___ ON dbo.hispnt__.wp___ref = dbo.wpakt___.wp___ref AND dbo.hispnt__.akt__ref = dbo.wpakt___.akt__ref INNER JOIN
                      dbo.order___ ON dbo.hispnt__.ord__ref = dbo.order___.ord__ref INNER JOIN
                      dbo.prodkl__ ON dbo.order___.prkl_ref = dbo.prodkl__.prkl_ref
WHERE     (dbo.hispnt__.wp___ref = ''5001'') OR
                      (dbo.hispnt__.wp___ref = ''5002'') OR
                      (dbo.hispnt__.wp___ref = ''5003'')
GROUP BY dbo.hispnt__.ord__ref, dbo.hispnt__.datum___, dbo.wpakt___.klasse__, dbo.prodkl__.omschr__, dbo.order___.oplage__
' 
