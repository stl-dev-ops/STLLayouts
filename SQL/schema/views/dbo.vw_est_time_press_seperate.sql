SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_est_time_press_seperate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_est_time_press_seperate
AS
SELECT     off__ref, SUM(dbo.GetMinutesFromCERMTimeString(stel_tyd)) AS ESTMR, SUM(dbo.GetMinutesFromCERMTimeString(druk_tyd)) AS ESTPR, 
                      SUM(dbo.GetMinutesFromCERMTimeString(was__tyd)) AS ESTWU
FROM         dbo.v4eti___
GROUP BY off__ref
' 
