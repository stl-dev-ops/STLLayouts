SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_time2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_time2
AS
SELECT     SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS ActPrinting, ord__ref, MIN(datum___) AS Date1, MIN(datum___) AS Date2, wn___rpn, wn___ref
FROM         dbo.hispnt__
WHERE     (wp___ref = ''5001'' OR
                      wp___ref = ''5002'' OR
                      wp___ref = ''5003'') AND (akt__ref = ''10'')
GROUP BY ord__ref, wn___rpn, wn___ref
' 
