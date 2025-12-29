SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_othertime]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_othertime
AS
SELECT     SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS Other, wn___ref, datum___, ord__ref
FROM         dbo.hispnt__
WHERE     (wp___ref = ''5001'' OR
                      wp___ref = ''5002'' OR
                      wp___ref = ''5003'') AND (NOT (akt__ref = ''10''))
GROUP BY wn___ref, datum___, ord__ref
' 
