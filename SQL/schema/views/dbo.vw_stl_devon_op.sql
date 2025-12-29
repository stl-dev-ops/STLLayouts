SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_op]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_op
AS
SELECT     oflinsvo, tedrkd__, SUM(dbo.GetMinutesFromCERMTimeString(stel_tyd)) AS MakeReady, SUM(dbo.GetMinutesFromCERMTimeString(was__tyd)) AS Breakdown, 
                      SUM(dbo.GetMinutesFromCERMTimeString(druk_tyd)) AS Printing, off__ref
FROM         dbo.v4eti___
GROUP BY off__ref, oflinsvo, tedrkd__
' 
