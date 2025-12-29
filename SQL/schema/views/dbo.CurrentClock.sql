SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CurrentClock]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.CurrentClock
AS
SELECT     ord__ref, kla__ref, kla__rpn, best_dat, omschr__,
                          (SELECT     SUM(totminutes) AS Expr1
                            FROM          dbo.vw_CurrentPressClockings
                            WHERE      (ord__ref = dbo.order___.ord__ref)) AS CurrentClock,
                          (SELECT     SUM(dbo.GetMinutesFromCERMTimeString(stel_tyd) + dbo.GetMinutesFromCERMTimeString(druk_tyd) 
                                                   + dbo.GetMinutesFromCERMTimeString(was__tyd)) AS time
                            FROM          dbo.v4eti___
                            WHERE      (off__ref = dbo.order___.ord__ref)) AS AllowedClock,
                          (SELECT     SUM(vrbpap__) AS Expr1
                            FROM          dbo.v4etaf__
                            WHERE      (etap_ref IN
                                                       (SELECT     etap_ref
                                                         FROM          dbo.stdeap__
                                                         WHERE      (etap_typ = ''2'') AND (kombrf_9 = ''Rewinding''))) AND (off__ref = dbo.order___.ord__ref)) AS GoodFt,
                          (SELECT     SUM(tedrkdto) AS Expr1
                            FROM          dbo.v4eti___ AS v4eti____1
                            WHERE      (off__ref = dbo.order___.ord__ref)) AS TotalFt
FROM         dbo.order___
' 
