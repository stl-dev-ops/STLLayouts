SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_MinutesShiftdateClass]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_MinutesShiftdateClass
AS
SELECT     dbo.hispnt__.ord__ref, dbo.hispnt__.wn___ref, dbo.hispnt__.datum___ AS ActualDate, dbo.GetShiftDate(dbo.hispnt__.datum___, dbo.hispnt__.starten_) AS ShiftDate, 
                      dbo.wpakt___.klasse__, dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.stoppen_) - dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.starten_) 
                      AS TotalMinutes
FROM         dbo.hispnt__ INNER JOIN
                      dbo.wpakt___ ON dbo.hispnt__.wp___ref = dbo.wpakt___.wp___ref AND dbo.hispnt__.akt__ref = dbo.wpakt___.akt__ref
WHERE     (dbo.hispnt__.wp___ref LIKE ''5%'') AND (dbo.wpakt___.geblokk_ = ''N'') AND (dbo.wpakt___.klasse__ IN (1, 2, 3))
' 
