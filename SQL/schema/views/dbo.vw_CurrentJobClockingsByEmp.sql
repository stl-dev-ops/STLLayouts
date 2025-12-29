SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_CurrentJobClockingsByEmp]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_CurrentJobClockingsByEmp
AS
SELECT     TOP (100) PERCENT ord__ref, wn___ref, afd__ref, SUM(totminutes) AS totminutes
FROM         (SELECT     dbo.w_atl1__.ord__ref, dbo.w_atl1__.wn___ref, dbo.werknm__.afd__ref, SUM(dbo.GetMinutesFromCERMTimeString(dbo.w_atl1__.stoppen_) 
                                              - dbo.GetMinutesFromCERMTimeString(dbo.w_atl1__.starten_)) AS totminutes
                       FROM          dbo.w_atl1__ LEFT OUTER JOIN
                                              dbo.werknm__ ON dbo.w_atl1__.wn___ref = dbo.werknm__.wn___ref LEFT OUTER JOIN
                                              dbo.afdel___ ON dbo.werknm__.afd__ref = dbo.afdel___.afd__ref
                       WHERE      (dbo.w_atl1__.soort___ = ''2'' OR
                                              dbo.w_atl1__.soort___ = ''b'') AND (dbo.w_atl1__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl1__.starten_ <> ''      '') AND (dbo.w_atl1__.stoppen_ <> ''      '')
                       GROUP BY dbo.w_atl1__.ord__ref, dbo.w_atl1__.wn___ref, dbo.werknm__.afd__ref
                       UNION ALL
                       SELECT     dbo.w_atl2__.ord__ref, dbo.w_atl2__.wn___ref, werknm___3.afd__ref, SUM(dbo.GetMinutesFromCERMTimeString(dbo.w_atl2__.stoppen_) 
                                             - dbo.GetMinutesFromCERMTimeString(dbo.w_atl2__.starten_)) AS totminutes
                       FROM         dbo.w_atl2__ LEFT OUTER JOIN
                                             dbo.werknm__ AS werknm___3 ON dbo.w_atl2__.wn___ref = werknm___3.wn___ref LEFT OUTER JOIN
                                             dbo.afdel___ AS afdel____3 ON werknm___3.afd__ref = afdel____3.afd__ref
                       WHERE     (dbo.w_atl2__.soort___ = ''2'' OR
                                             dbo.w_atl2__.soort___ = ''b'') AND (dbo.w_atl2__.stoppen_ <> '' XX:XX'') AND (dbo.w_atl2__.starten_ <> ''      '') AND (dbo.w_atl2__.stoppen_ <> ''      '')
                       GROUP BY dbo.w_atl2__.ord__ref, dbo.w_atl2__.wn___ref, werknm___3.afd__ref
                       UNION ALL
                       SELECT     dbo.w_pnt2__.ord__ref, dbo.w_pnt2__.wn___ref, afdel____2.afd__ref, SUM(dbo.GetMinutesFromCERMTimeString(dbo.w_pnt2__.stoppen_) 
                                             - dbo.GetMinutesFromCERMTimeString(dbo.w_pnt2__.starten_)) AS totminutes
                       FROM         dbo.w_pnt2__ LEFT OUTER JOIN
                                             dbo.werknm__ AS werknm___2 ON dbo.w_pnt2__.wn___ref = werknm___2.wn___ref LEFT OUTER JOIN
                                             dbo.afdel___ AS afdel____2 ON werknm___2.afd__ref = afdel____2.afd__ref
                       GROUP BY dbo.w_pnt2__.ord__ref, dbo.w_pnt2__.wn___ref, afdel____2.afd__ref
                       UNION ALL
                       SELECT     dbo.hispnt__.ord__ref, dbo.hispnt__.wn___ref, afdel____1.afd__ref, SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) 
                                             AS totminutes
                       FROM         dbo.hispnt__ LEFT OUTER JOIN
                                             dbo.werknm__ AS werknm___1 ON dbo.hispnt__.wn___ref = werknm___1.wn___ref LEFT OUTER JOIN
                                             dbo.afdel___ AS afdel____1 ON werknm___1.afd__ref = afdel____1.afd__ref
                       GROUP BY dbo.hispnt__.ord__ref, dbo.hispnt__.wn___ref, afdel____1.afd__ref) AS MinutesClocked
GROUP BY ord__ref, wn___ref, afd__ref
ORDER BY ord__ref
' 
