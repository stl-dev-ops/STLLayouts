SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLEmpDailyClockingXShiftXUsernbr]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLempDailyClockingXShiftXUsernbr
AS
SELECT     TOP (100) PERCENT usernbr_, datum___, SUM(tothours) AS tothours
FROM         (SELECT     dbo.stlCERMXEmployee.usernbr_, dbo.GetShiftDate(dbo.w_atl1__.datum___, dbo.w_atl1__.starten_) AS datum___, 
                                              SUM(CAST((CAST(LEFT(dbo.w_atl1__.stoppen_, CHARINDEX('':'', dbo.w_atl1__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl1__.stoppen_, 
                                              LEN(dbo.w_atl1__.stoppen_) - CHARINDEX('':'', dbo.w_atl1__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_atl1__.starten_, CHARINDEX('':'', 
                                              dbo.w_atl1__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl1__.starten_, LEN(dbo.w_atl1__.starten_) - CHARINDEX('':'', dbo.w_atl1__.starten_, 0)) 
                                              AS int)) AS money) / 60) AS tothours
                       FROM          dbo.w_atl1__ LEFT OUTER JOIN
                                              dbo.stlCERMXEmployee ON dbo.w_atl1__.wn___ref = dbo.stlCERMXEmployee.wn___ref
                       WHERE      (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.wp___ref = ''0000'')) OR
                                              (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '') AND 
                                              (NOT (dbo.w_atl1__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.w_atl1__.datum___, dbo.w_atl1__.starten_), dbo.stlCERMXEmployee.usernbr_
                       UNION ALL
                       SELECT     stlCERMXEmployee_3.usernbr_, dbo.GetShiftDate(dbo.w_atl2__.datum___, dbo.w_atl2__.starten_) AS datum___, 
                                             SUM(CAST((CAST(LEFT(dbo.w_atl2__.stoppen_, CHARINDEX('':'', dbo.w_atl2__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl2__.stoppen_, 
                                             LEN(dbo.w_atl2__.stoppen_) - CHARINDEX('':'', dbo.w_atl2__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_atl2__.starten_, CHARINDEX('':'', 
                                             dbo.w_atl2__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_atl2__.starten_, LEN(dbo.w_atl2__.starten_) - CHARINDEX('':'', dbo.w_atl2__.starten_, 0)) 
                                             AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_atl2__ LEFT OUTER JOIN
                                             dbo.stlCERMXEmployee AS stlCERMXEmployee_3 ON dbo.w_atl2__.wn___ref = stlCERMXEmployee_3.wn___ref
                       WHERE     (dbo.w_atl2__.soort___ = ''2'' OR
                                             dbo.w_atl2__.soort___ = ''b'') AND (NOT (dbo.w_atl2__.wp___ref = ''0000'')) OR
                                             (dbo.w_atl2__.soort___ = ''2'' OR
                                             dbo.w_atl2__.soort___ = ''b'') AND (NOT (dbo.w_atl2__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.w_atl2__.datum___, dbo.w_atl2__.starten_), stlCERMXEmployee_3.usernbr_
                       UNION ALL
                       SELECT     stlCERMXEmployee_2.usernbr_, dbo.GetShiftDate(dbo.w_pnt2__.datum___, dbo.w_pnt2__.starten_) AS datum___, 
                                             SUM(CAST((CAST(LEFT(dbo.w_pnt2__.stoppen_, CHARINDEX('':'', dbo.w_pnt2__.stoppen_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_pnt2__.stoppen_, 
                                             LEN(dbo.w_pnt2__.stoppen_) - CHARINDEX('':'', dbo.w_pnt2__.stoppen_, 0)) AS int)) - (CAST(LEFT(dbo.w_pnt2__.starten_, CHARINDEX('':'', 
                                             dbo.w_pnt2__.starten_, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.w_pnt2__.starten_, LEN(dbo.w_pnt2__.starten_) - CHARINDEX('':'', dbo.w_pnt2__.starten_, 0)) 
                                             AS int)) AS money) / 60) AS tothours
                       FROM         dbo.w_pnt2__ LEFT OUTER JOIN
                                             dbo.stlCERMXEmployee AS stlCERMXEmployee_2 ON dbo.w_pnt2__.wn___ref = stlCERMXEmployee_2.wn___ref
                       WHERE     (NOT (dbo.w_pnt2__.wp___ref = ''0000'')) OR
                                             (NOT (dbo.w_pnt2__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.w_pnt2__.datum___, dbo.w_pnt2__.starten_), stlCERMXEmployee_2.usernbr_
                       UNION ALL
                       SELECT     stlCERMXEmployee_1.usernbr_, dbo.GetShiftDate(dbo.hispnt__.datum___, dbo.hispnt__.starten_) AS datum___, 
                                             SUM(CAST(CAST(LEFT(dbo.hispnt__.duur____, CHARINDEX('':'', dbo.hispnt__.duur____, 0) - 1) AS int) * 60 + CAST(RIGHT(dbo.hispnt__.duur____, 
                                             LEN(dbo.hispnt__.duur____) - CHARINDEX('':'', dbo.hispnt__.duur____, 0)) AS int) AS money) / 60) AS tothours
                       FROM         dbo.hispnt__ LEFT OUTER JOIN
                                             dbo.stlCERMXEmployee AS stlCERMXEmployee_1 ON dbo.hispnt__.wn___ref = stlCERMXEmployee_1.wn___ref
                       WHERE     (NOT (dbo.hispnt__.wp___ref = ''0000'')) OR
                                             (NOT (dbo.hispnt__.akt__ref = ''00''))
                       GROUP BY dbo.GetShiftDate(dbo.hispnt__.datum___, dbo.hispnt__.starten_), stlCERMXEmployee_1.usernbr_) AS empDailyClockingXShiftXUsernbr
GROUP BY datum___, usernbr_
ORDER BY datum___
' 
