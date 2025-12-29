SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_type_time]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_type_time
AS
SELECT     dbo.hispnt__.ord__ref, dbo.afgprd__.prd__rpn, SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) AS Minute
FROM         dbo.hispnt__ INNER JOIN
                      dbo.v4off___ ON dbo.hispnt__.ord__ref = dbo.v4off___.off__ref INNER JOIN
                      dbo.afgprd__ ON dbo.v4off___.prd__ref = dbo.afgprd__.prd__ref
WHERE     (dbo.hispnt__.ord__ref > ''104600'') AND (dbo.hispnt__.wp___ref = ''5001'' OR
                      dbo.hispnt__.wp___ref = ''5002'' OR
                      dbo.hispnt__.wp___ref = ''5003'') AND (NOT (dbo.hispnt__.akt__ref = ''10''))
GROUP BY dbo.hispnt__.ord__ref, dbo.afgprd__.prd__rpn
' 
