SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_MinutesShiftdateMakeReadyPrintingBreakdown]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_MinutesShiftdateMakeReadyPrintingBreakdown
AS
SELECT DISTINCT 
                      dbo.vw_MinutesShiftdateClass.ord__ref, dbo.vw_MinutesShiftdateClass.wn___ref, dbo.werknm__.wn_vnaam, dbo.werknm__.wn_naam_, 
                      CASE WHEN wn_naam_ IS NULL OR
                      wn_naam_ = '''' THEN wn_vnaam ELSE CASE WHEN wn_vnaam IS NULL OR
                      wn_vnaam = '''' THEN wn_naam_ ELSE wn_vnaam + '' '' + wn_naam_ END END AS EmployeeName, dbo.vw_MinutesShiftdateClass.ShiftDate, 
                      ISNULL(dbo.vw_MinutesMakeReady.TotalMinutes, 0) AS MakeReadyMinutes, ISNULL(dbo.vw_MinutesPrinting.TotalMinutes, 0) AS PrintingMinutes, 
                      ISNULL(dbo.vw_MinutesBreakDown.TotalMinutes, 0) AS BreakdownMinutes
FROM         dbo.vw_MinutesShiftdateClass INNER JOIN
                      dbo.werknm__ ON dbo.vw_MinutesShiftdateClass.wn___ref = dbo.werknm__.wn___ref LEFT OUTER JOIN
                      dbo.vw_MinutesMakeReady ON dbo.vw_MinutesShiftdateClass.ord__ref = dbo.vw_MinutesMakeReady.ord__ref AND 
                      dbo.vw_MinutesShiftdateClass.wn___ref = dbo.vw_MinutesMakeReady.wn___ref AND 
                      dbo.vw_MinutesShiftdateClass.ShiftDate = dbo.vw_MinutesMakeReady.ShiftDate LEFT OUTER JOIN
                      dbo.vw_MinutesBreakDown ON dbo.vw_MinutesShiftdateClass.ord__ref = dbo.vw_MinutesBreakDown.ord__ref AND 
                      dbo.vw_MinutesShiftdateClass.wn___ref = dbo.vw_MinutesBreakDown.wn___ref AND 
                      dbo.vw_MinutesShiftdateClass.ShiftDate = dbo.vw_MinutesBreakDown.ShiftDate LEFT OUTER JOIN
                      dbo.vw_MinutesPrinting ON dbo.vw_MinutesShiftdateClass.ord__ref = dbo.vw_MinutesPrinting.ord__ref AND 
                      dbo.vw_MinutesShiftdateClass.wn___ref = dbo.vw_MinutesPrinting.wn___ref AND dbo.vw_MinutesShiftdateClass.ShiftDate = dbo.vw_MinutesPrinting.ShiftDate
' 
