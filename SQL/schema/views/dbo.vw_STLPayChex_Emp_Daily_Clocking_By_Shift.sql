SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLPayChex_Emp_Daily_Clocking_By_Shift]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLPayChex_Emp_Daily_Clocking_By_Shift
AS
SELECT     TOP (100) PERCENT empNo, datum___, SUM(tothours) AS tothours
FROM         (SELECT     dbo.stlPayChexXCERMID.empNo, dbo.GetShiftDate(dbo.w_atl1__.datum___, dbo.w_atl1__.starten_) AS datum___, 
                                              SUM(CAST((CAST(LEFT(dbo.w_atl1__.stoppen_, CHARINDEX('':'', dbo.w_atl1__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl1__.stoppen_, 
                                              LEN(dbo.w_atl1__.stoppen_) - CHARINDEX('':'', dbo.w_atl1__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_atl1__.starten_, CHARINDEX('':'', 
                                              dbo.w_atl1__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl1__.starten_, LEN(dbo.w_atl1__.starten_) - CHARINDEX('':'', dbo.w_atl1__.starten_, 0)) 
                                              AS int)) AS money) / 60) AS tothours
                       FROM          dbo.w_atl1__ LEFT OUTER JOIN
                                              dbo.stlPayChexXCERMID ON dbo.w_atl1__.wn___ref = dbo.stlPayChexXCERMID.wn___ref
                       WHERE      (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.wp___ref = ''0000'')) OR
                                              (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.akt__ref = ''03''))
                       GROUP BY dbo.GetShiftDate(dbo.w_atl1__.datum___, dbo.w_atl1__.starten_), dbo.stlPayChexXCERMID.empNo
                       UNION ALL
                       SELECT     stlPayChexXCERMID_3.empNo, dbo.GetShiftDate(dbo.w_atl2__.datum___, dbo.w_atl2__.starten_) AS datum___, 
                                             SUM(CAST((CAST(LEFT(dbo.w_atl2__.stoppen_, CHARINDEX('':'', dbo.w_atl2__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl2__.stoppen_, 
                                             LEN(dbo.w_atl2__.stoppen_) - CHARINDEX('':'', dbo.w_atl2__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_atl2__.starten_, CHARINDEX('':'', 
                                             dbo.w_atl2__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl2__.starten_, LEN(dbo.w_atl2__.starten_) - CHARINDEX('':'', dbo.w_atl2__.starten_, 0)) 
                                             AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_atl2__ LEFT OUTER JOIN
                                             dbo.stlPayChexXCERMID AS stlPayChexXCERMID_3 ON dbo.w_atl2__.wn___ref = stlPayChexXCERMID_3.wn___ref
                       WHERE     (dbo.w_atl2__.soort___ = ''2'' OR
                                             dbo.w_atl2__.soort___ = ''b'') AND (NOT (dbo.w_atl2__.wp___ref = ''0000'')) OR
                                             (dbo.w_atl2__.soort___ = ''2'' OR
                                             dbo.w_atl2__.soort___ = ''b'') AND (NOT (dbo.w_atl2__.akt__ref = ''03''))
                       GROUP BY dbo.GetShiftDate(dbo.w_atl2__.datum___, dbo.w_atl2__.starten_), stlPayChexXCERMID_3.empNo
                       UNION ALL
                       SELECT     stlPayChexXCERMID_2.empNo, dbo.GetShiftDate(dbo.w_pnt2__.datum___, dbo.w_pnt2__.starten_) AS datum___, 
                                             SUM(CAST((CAST(LEFT(dbo.w_pnt2__.stoppen_, CHARINDEX('':'', dbo.w_pnt2__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_pnt2__.stoppen_, 
                                             LEN(dbo.w_pnt2__.stoppen_) - CHARINDEX('':'', dbo.w_pnt2__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_pnt2__.starten_, CHARINDEX('':'', 
                                             dbo.w_pnt2__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_pnt2__.starten_, LEN(dbo.w_pnt2__.starten_) - CHARINDEX('':'', dbo.w_pnt2__.starten_, 0)) 
                                             AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_pnt2__ LEFT OUTER JOIN
                                             dbo.stlPayChexXCERMID AS stlPayChexXCERMID_2 ON dbo.w_pnt2__.wn___ref = stlPayChexXCERMID_2.wn___ref
                       WHERE     (NOT (dbo.w_pnt2__.wp___ref = ''0000'')) AND (NOT (dbo.w_pnt2__.akt__ref = ''03''))
                       GROUP BY dbo.GetShiftDate(dbo.w_pnt2__.datum___, dbo.w_pnt2__.starten_), stlPayChexXCERMID_2.empNo
                       UNION ALL
                       SELECT     stlPayChexXCERMID_1.empNo, dbo.GetShiftDate(dbo.hispnt__.datum___, dbo.hispnt__.starten_) AS datum___, 
                                             SUM(CAST(CAST(LEFT(dbo.hispnt__.duur____, CHARINDEX('':'', dbo.hispnt__.duur____, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.hispnt__.duur____, 
                                             LEN(dbo.hispnt__.duur____) - CHARINDEX('':'', dbo.hispnt__.duur____, 0)) AS int) AS money) / 60) AS tothours
                       FROM         dbo.hispnt__ LEFT OUTER JOIN
                                             dbo.stlPayChexXCERMID AS stlPayChexXCERMID_1 ON dbo.hispnt__.wn___ref = stlPayChexXCERMID_1.wn___ref
                       WHERE     (NOT (dbo.hispnt__.wp___ref = ''0000'')) AND (NOT (dbo.hispnt__.akt__ref = ''03''))
                       GROUP BY dbo.GetShiftDate(dbo.hispnt__.datum___, dbo.hispnt__.starten_), stlPayChexXCERMID_1.empNo) AS emp_daily_clocking_By_Shift
GROUP BY datum___, empNo
ORDER BY datum___
' 
