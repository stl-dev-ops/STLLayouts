SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlWPStartPrintTime]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlWPStartPrintTime
AS
SELECT     datum___, wp___ref, wn___ref, MIN(starten_) AS StartPrintTime
FROM         dbo.hispnt__ AS h2
WHERE     (dbo.GetMinutesFromCERMTimeString(starten_) >= 240) AND (akt__ref = ''10'')
GROUP BY datum___, wp___ref, wn___ref
' 
