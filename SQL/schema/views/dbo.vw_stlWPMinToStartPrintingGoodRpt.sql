SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlWPMinToStartPrintingGoodRpt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlWPMinToStartPrintingGoodRpt
AS
SELECT     TOP (100) PERCENT st.starten_, st.datum___ AS FromDate, st.datum___ AS ToDate, st.wp___ref, st.wn___ref, 
                      dbo.GetMinutesFromCERMTimeString(spt.StartPrintTime) - dbo.GetMinutesFromCERMTimeString(st.starten_) AS StartToPrintMinutes, dbo.werkpo__.wp_naam_, 
                      dbo.werknm__.wn_naam_
FROM         dbo.vw_stlWPStartTime AS st INNER JOIN
                      dbo.vw_stlWPStartPrintTime AS spt ON st.datum___ = spt.datum___ AND st.wn___ref = spt.wn___ref AND st.wp___ref = spt.wp___ref INNER JOIN
                      dbo.werkpo__ ON st.wp___ref = dbo.werkpo__.wp___ref INNER JOIN
                      dbo.werknm__ ON st.wn___ref = dbo.werknm__.wn___ref
ORDER BY FromDate
' 
