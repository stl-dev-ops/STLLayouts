SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_EstPressMin]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_EstPressMin
AS
SELECT        off__ref, SUM(dbo.GetMinutesFromCERMTimeString(stel_tyd) + dbo.GetMinutesFromCERMTimeString(druk_tyd) + dbo.GetMinutesFromCERMTimeString(was__tyd)) AS estPressMin, dg___vnr, dg___ref
FROM            dbo.v4edg___
GROUP BY off__ref, dg___vnr, dg___ref
' 
