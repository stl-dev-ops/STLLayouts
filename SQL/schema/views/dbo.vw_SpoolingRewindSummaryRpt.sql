SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_SpoolingRewindSummaryRpt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_SpoolingRewindSummaryRpt
AS
SELECT     dbo.order___.ord__ref, dbo.order___.kla__rpn AS CustomerKeyword, dbo.order___.omschr__ AS Description, dbo.vw_FirstProductionDate.FirstProductionDate, 
                      dbo.order___.oplage__ AS OrderQty, dbo.vw_PressProducedQty.PressProducedQty, dbo.vw_RewindQty.RewindQty, 
                      dbo.vw_RewindBadPressQty.RewindBadPressQty, dbo.vw_RewindWasteQty.RewindWasteQty, 
                      dbo.vw_PressProducedQty.PressProducedQty - (dbo.vw_RewindQty.RewindQty + dbo.vw_RewindBadPressQty.RewindBadPressQty + dbo.vw_RewindWasteQty.RewindWasteQty)
                       AS PressRewindDiffQty, dbo.vw_RewindBrickCount.RewindBrickCount,
                          (SELECT     SUM(ant____w) AS Expr1
                            FROM          dbo.v4etaf__
                            WHERE      (etap_ref IN
                                                       (SELECT     etap_ref
                                                         FROM          dbo.stdeap__
                                                         WHERE      (etap_typ = ''2'') AND (kombrf_9 = ''Rewinding''))) AND (off__ref = dbo.order___.ord__ref)
                            GROUP BY off__ref) AS EstRewindBricks,
                          (SELECT     SUM(ant____w) AS Expr1
                            FROM          dbo.v4etaf__ AS v4etaf___1
                            WHERE      (etap_ref IN
                                                       (SELECT     etap_ref
                                                         FROM          dbo.stdeap__ AS stdeap___1
                                                         WHERE      (etap_typ = ''2'') AND (kombrf_9 = ''Spooling''))) AND (off__ref = dbo.order___.ord__ref)
                            GROUP BY off__ref) AS EstSpools, dbo.vw_SpoolQty.SpoolQty, dbo.vw_SpoolWasteQty.SpoolWasteQty, 
                      dbo.vw_RewindQty.RewindQty - (dbo.vw_SpoolQty.SpoolQty + dbo.vw_SpoolWasteQty.SpoolWasteQty) AS RewindSpoolDiffQty, 
                      dbo.vw_SpoolCount.Spools AS SpoolCount, dbo.vw_MaxShipDate.MaxShipDate AS FromDate, dbo.vw_MaxShipDate.MaxShipDate AS ToDate, 
                      dbo.vw_MaxShipDate.MaxShipDate, dbo.vw_CurrentRewindingClockings.totminutes AS ActRewindingMins, dbo.vw_EstRewindingMins.EstRewindingMins
FROM         dbo.order___ LEFT OUTER JOIN
                      dbo.vw_FirstProductionDate ON dbo.order___.ord__ref = dbo.vw_FirstProductionDate.ord__ref LEFT OUTER JOIN
                      dbo.vw_MaxShipDate ON dbo.order___.ord__ref = dbo.vw_MaxShipDate.ord__ref LEFT OUTER JOIN
                      dbo.vw_PressProducedQty ON dbo.order___.ord__ref = dbo.vw_PressProducedQty.ord__ref LEFT OUTER JOIN
                      dbo.vw_RewindQty ON dbo.order___.ord__ref = dbo.vw_RewindQty.ord__ref LEFT OUTER JOIN
                      dbo.vw_RewindBadPressQty ON dbo.order___.ord__ref = dbo.vw_RewindBadPressQty.ord__ref LEFT OUTER JOIN
                      dbo.vw_RewindWasteQty ON dbo.order___.ord__ref = dbo.vw_RewindWasteQty.ord__ref LEFT OUTER JOIN
                      dbo.vw_RewindBrickCount ON dbo.order___.ord__ref = dbo.vw_RewindBrickCount.ord__ref LEFT OUTER JOIN
                      dbo.vw_SpoolQty ON dbo.order___.ord__ref = dbo.vw_SpoolQty.ord__ref LEFT OUTER JOIN
                      dbo.vw_SpoolWasteQty ON dbo.order___.ord__ref = dbo.vw_SpoolWasteQty.ord__ref LEFT OUTER JOIN
                      dbo.vw_SpoolCount ON dbo.order___.ord__ref = dbo.vw_SpoolCount.ord__ref LEFT OUTER JOIN
                      dbo.vw_CurrentRewindingClockings ON dbo.order___.ord__ref = dbo.vw_CurrentRewindingClockings.ord__ref LEFT OUTER JOIN
                      dbo.vw_EstRewindingMins ON dbo.order___.ord__ref = dbo.vw_EstRewindingMins.off__ref
' 
