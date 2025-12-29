SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_MinutesBreakDown]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_MinutesBreakDown
AS
SELECT     wn___ref, ShiftDate, SUM(TotalMinutes) AS TotalMinutes, ord__ref
FROM         dbo.vw_MinutesShiftdateClass
GROUP BY wn___ref, ShiftDate, klasse__, ord__ref
HAVING      (klasse__ = N''3'')
' 
