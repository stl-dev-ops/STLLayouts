SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_Time1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_Time1
AS
SELECT     SUM(dbo.GetMinutesFromCERMTimeString(h.duur____)) AS ActMakeReady, h.wn___ref, h.ord__ref
FROM         dbo.hispnt__ AS h INNER JOIN
                      dbo.wpakt___ ON h.akt__ref = dbo.wpakt___.akt__ref AND h.wp___ref = dbo.wpakt___.wp___ref
WHERE     (h.wp___ref IN (''5001'', ''5002'', ''5003'')) AND (dbo.wpakt___.klasse__ = ''1'')
GROUP BY h.wn___ref, h.ord__ref
' 
