SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_devon_base]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_devon_base
AS
SELECT     TOP (100) PERCENT dbo.hispnt__.ord__ref, dbo.hispnt__.wn___ref, dbo.werknm__.wn_naam_ AS wn___rpn, dbo.vw_JobPrintOpStartDate.StartPrintDt AS date1, 
                      dbo.vw_JobPrintOpStartDate.StartPrintDt AS date2
FROM         dbo.hispnt__ LEFT OUTER JOIN
                      dbo.werknm__ ON dbo.hispnt__.wn___ref = dbo.werknm__.wn___ref LEFT OUTER JOIN
                      dbo.vw_JobPrintOpStartDate ON dbo.hispnt__.ord__ref = dbo.vw_JobPrintOpStartDate.ord__ref AND 
                      dbo.hispnt__.wn___ref = dbo.vw_JobPrintOpStartDate.wn___ref
WHERE     (dbo.hispnt__.wp___ref IN (''5001'', ''5002'', ''5003'')) AND (dbo.hispnt__.ord__ref <> '''')
GROUP BY dbo.hispnt__.ord__ref, dbo.hispnt__.wn___ref, dbo.werknm__.wn_naam_, dbo.vw_JobPrintOpStartDate.StartPrintDt
ORDER BY dbo.hispnt__.ord__ref
' 
