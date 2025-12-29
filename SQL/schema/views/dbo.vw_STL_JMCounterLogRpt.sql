SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_JMCounterLogRpt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_JMCounterLogRpt
AS
SELECT        TOP (100) PERCENT cl.ord__ref, cl.wp___ref, cl.wn___ref, cl.counterLogDt, cl.counterLogDt AS FromDt, cl.counterLogDt AS ToDt, cl.plcFt, cl.counterFt, cl.consumptionFt, cl.activeRollFt, cl.totalConsumptionFt, 
                         cl.consumptionDiffPct, wp.wp_naam_, wn.wn_vnaam + '' '' + wn.wn_naam_ AS empName, cl.stlJM_CounterLogID
FROM            dbo.stlJM_CounterLog AS cl LEFT OUTER JOIN
                         dbo.werkpo__ AS wp ON cl.wp___ref = wp.wp___ref LEFT OUTER JOIN
                         dbo.werknm__ AS wn ON cl.wn___ref = wn.wn___ref
' 
