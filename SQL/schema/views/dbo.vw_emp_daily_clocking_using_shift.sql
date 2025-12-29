SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_emp_daily_clocking_using_shift]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_emp_daily_clocking_using_shift
AS
SELECT     TOP (100) PERCENT wn___ref, ShiftDt, SUM(tothours) AS tothours
FROM         (SELECT     wn___ref, dbo.GetShiftDate(datum___, starten_) AS ShiftDt, SUM(CAST((CAST(LEFT(stoppen_, CHARINDEX('':'', stoppen_, 0) - 1) AS int) 
                                              * 60 + CAST(RIGHT(stoppen_, LEN(stoppen_) - CHARINDEX('':'', stoppen_, 0)) AS int)) - (CAST(LEFT(starten_, CHARINDEX('':'', starten_, 0) - 1) AS int) 
                                              * 60 + CAST(RIGHT(starten_, LEN(starten_) - CHARINDEX('':'', starten_, 0)) AS int)) AS money) / 60) AS tothours
                       FROM          dbo.w_atl1__
                       WHERE      (soort___ = ''2'' OR
                                              soort___ = ''b'') AND (stoppen_ <> '' XX:XX'') AND (starten_ <> ''      '') AND (stoppen_ <> ''      '') AND (NOT (wp___ref = ''0000'')) OR
                                              (soort___ = ''2'' OR
                                              soort___ = ''b'') AND (stoppen_ <> '' XX:XX'') AND (starten_ <> ''      '') AND (stoppen_ <> ''      '') AND (NOT (akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(datum___, starten_), wn___ref
                       UNION ALL
                       SELECT     wn___ref, dbo.GetShiftDate(datum___, starten_) AS ShiftDt, SUM(CAST((CAST(LEFT(stoppen_, CHARINDEX('':'', stoppen_, 0) - 1) AS int) 
                                             * 60 + CAST(RIGHT(stoppen_, LEN(stoppen_) - CHARINDEX('':'', stoppen_, 0)) AS int)) - (CAST(LEFT(starten_, CHARINDEX('':'', starten_, 0) - 1) AS int) 
                                             * 60 + CAST(RIGHT(starten_, LEN(starten_) - CHARINDEX('':'', starten_, 0)) AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_atl2__
                       WHERE     (soort___ = ''2'' OR
                                             soort___ = ''b'') AND (NOT (wp___ref = ''0000'')) OR
                                             (soort___ = ''2'' OR
                                             soort___ = ''b'') AND (NOT (akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(datum___, starten_), wn___ref
                       UNION ALL
                       SELECT     wn___ref, dbo.GetShiftDate(datum___, starten_) AS ShiftDt, SUM(CAST((CAST(LEFT(stoppen_, CHARINDEX('':'', stoppen_, 0) - 1) AS int) 
                                             * 60 + CAST(RIGHT(stoppen_, LEN(stoppen_) - CHARINDEX('':'', stoppen_, 0)) AS int)) - (CAST(LEFT(starten_, CHARINDEX('':'', starten_, 0) - 1) AS int) 
                                             * 60 + CAST(RIGHT(starten_, LEN(starten_) - CHARINDEX('':'', starten_, 0)) AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_pnt2__
                       WHERE     (NOT (wp___ref = ''0000'')) OR
                                             (NOT (akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(datum___, starten_), wn___ref
                       UNION ALL
                       SELECT     wn___ref, dbo.GetShiftDate(datum___, starten_) AS ShiftDt, SUM(CAST(CAST(LEFT(duur____, CHARINDEX('':'', duur____, 0) - 1) AS int) 
                                             * 60 + CAST(RIGHT(duur____, LEN(duur____) - CHARINDEX('':'', duur____, 0)) AS int) AS money) / 60) AS tothours
                       FROM         dbo.hispnt__
                       WHERE     (NOT (wp___ref = ''0000'')) OR
                                             (NOT (akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(datum___, starten_), wn___ref) AS emp_daily_clocking
GROUP BY ShiftDt, wn___ref
ORDER BY ShiftDt
' 
