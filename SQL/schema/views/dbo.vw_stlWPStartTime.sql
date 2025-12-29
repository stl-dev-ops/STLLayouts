SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlWPStartTime]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlWPStartTime
AS
SELECT     MIN(starten_) AS starten_, datum___, wp___ref, wn___ref
FROM         dbo.hispnt__ AS h0
WHERE     (dbo.GetMinutesFromCERMTimeString(starten_) >= 240)
GROUP BY datum___, wp___ref, wn___ref
' 
