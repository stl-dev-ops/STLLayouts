SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Rowell_emp_daily_clocking_By_Shift]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_Rowell_emp_daily_clocking_By_Shift
AS
SELECT     TOP (100) PERCENT EmployeeID, datum___, SUM(tothours) AS tothours
FROM         (SELECT     dbo.stlRowellXCERM.EmployeeID, dbo.GetShiftDate(dbo.w_atl1__.datum___, dbo.w_atl1__.starten_) AS datum___, 
                                              SUM(CAST((CAST(LEFT(dbo.w_atl1__.stoppen_, CHARINDEX('':'', dbo.w_atl1__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl1__.stoppen_, 
                                              LEN(dbo.w_atl1__.stoppen_) - CHARINDEX('':'', dbo.w_atl1__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_atl1__.starten_, CHARINDEX('':'', 
                                              dbo.w_atl1__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl1__.starten_, LEN(dbo.w_atl1__.starten_) - CHARINDEX('':'', dbo.w_atl1__.starten_, 0)) 
                                              AS int)) AS money) / 60) AS tothours
                       FROM          dbo.w_atl1__ LEFT OUTER JOIN
                                              dbo.stlRowellXCERM ON dbo.w_atl1__.wn___ref = dbo.stlRowellXCERM.wn___ref
                       WHERE      (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.wp___ref = ''0000'')) OR
                                              (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.w_atl1__.datum___, dbo.w_atl1__.starten_), dbo.stlRowellXCERM.EmployeeID
                       UNION ALL
                       SELECT     stlRowellXCERM_3.EmployeeID, dbo.GetShiftDate(dbo.w_atl2__.datum___, dbo.w_atl2__.starten_) AS datum___, 
                                             SUM(CAST((CAST(LEFT(dbo.w_atl2__.stoppen_, CHARINDEX('':'', dbo.w_atl2__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl2__.stoppen_, 
                                             LEN(dbo.w_atl2__.stoppen_) - CHARINDEX('':'', dbo.w_atl2__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_atl2__.starten_, CHARINDEX('':'', 
                                             dbo.w_atl2__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl2__.starten_, LEN(dbo.w_atl2__.starten_) - CHARINDEX('':'', dbo.w_atl2__.starten_, 0)) 
                                             AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_atl2__ LEFT OUTER JOIN
                                             dbo.stlRowellXCERM AS stlRowellXCERM_3 ON dbo.w_atl2__.wn___ref = stlRowellXCERM_3.wn___ref
                       WHERE     (dbo.w_atl2__.soort___ = ''2'' OR
                                             dbo.w_atl2__.soort___ = ''b'') AND (NOT (dbo.w_atl2__.wp___ref = ''0000'')) OR
                                             (dbo.w_atl2__.soort___ = ''2'' OR
                                             dbo.w_atl2__.soort___ = ''b'') AND (NOT (dbo.w_atl2__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.w_atl2__.datum___, dbo.w_atl2__.starten_), stlRowellXCERM_3.EmployeeID
                       UNION ALL
                       SELECT     stlRowellXCERM_2.EmployeeID, dbo.GetShiftDate(dbo.w_pnt2__.datum___, dbo.w_pnt2__.starten_) AS datum___, 
                                             SUM(CAST((CAST(LEFT(dbo.w_pnt2__.stoppen_, CHARINDEX('':'', dbo.w_pnt2__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_pnt2__.stoppen_, 
                                             LEN(dbo.w_pnt2__.stoppen_) - CHARINDEX('':'', dbo.w_pnt2__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_pnt2__.starten_, CHARINDEX('':'', 
                                             dbo.w_pnt2__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_pnt2__.starten_, LEN(dbo.w_pnt2__.starten_) - CHARINDEX('':'', dbo.w_pnt2__.starten_, 0)) 
                                             AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_pnt2__ LEFT OUTER JOIN
                                             dbo.stlRowellXCERM AS stlRowellXCERM_2 ON dbo.w_pnt2__.wn___ref = stlRowellXCERM_2.wn___ref
                       WHERE     (NOT (dbo.w_pnt2__.wp___ref = ''0000'')) OR
                                             (NOT (dbo.w_pnt2__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.w_pnt2__.datum___, dbo.w_pnt2__.starten_), stlRowellXCERM_2.EmployeeID
                       UNION ALL
                       SELECT     stlRowellXCERM_1.EmployeeID, dbo.GetShiftDate(dbo.hispnt__.datum___, dbo.hispnt__.starten_) AS datum___, 
                                             SUM(CAST(CAST(LEFT(dbo.hispnt__.duur____, CHARINDEX('':'', dbo.hispnt__.duur____, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.hispnt__.duur____, 
                                             LEN(dbo.hispnt__.duur____) - CHARINDEX('':'', dbo.hispnt__.duur____, 0)) AS int) AS money) / 60) AS tothours
                       FROM         dbo.hispnt__ LEFT OUTER JOIN
                                             dbo.stlRowellXCERM AS stlRowellXCERM_1 ON dbo.hispnt__.wn___ref = stlRowellXCERM_1.wn___ref
                       WHERE     (NOT (dbo.hispnt__.wp___ref = ''0000'')) OR
                                             (NOT (dbo.hispnt__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.hispnt__.datum___, dbo.hispnt__.starten_), stlRowellXCERM_1.EmployeeID) AS emp_daily_clocking_By_Shift
GROUP BY datum___, EmployeeID
ORDER BY datum___
' 
