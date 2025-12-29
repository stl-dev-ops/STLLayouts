SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_StockMovements]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_StockMovements
AS
SELECT        dbo.artiky__.art__ref AS MaterialID, dbo.artiky__.art__rpn AS Keyword, dbo.artiky__.art_oms1 AS Description1, dbo.artiky__.art_oms2 AS Description2, dbo.artcat__.omschr__ AS Category, Reservations.Stock, 
                         Reservations.QuantityReserved AS Reserved, Reservations.Quarantine, Reservations.Stock - Reservations.QuantityReserved - Reservations.Quarantine AS Available, Reservations.ToBeDelivered, 
                         Reservations.Stock - Reservations.QuantityReserved - Reservations.Quarantine + Reservations.ToBeDelivered AS FinalStock, Movements.QuantityIN, Movements.QuantityOUT, Movements.Quantity, dbo.artiky__.min_stoc, 
                         dbo.artiky__.max_stoc, dbo.artiky__.lev__ref AS SupplierID, dbo.levbas__.naam____ AS SupplierName, MaterialCustomFields.SupplierLogistics, TELT.TemporaryExtendedLeadTime
FROM            dbo.levbas__ RIGHT OUTER JOIN
                         dbo.artiky__ INNER JOIN
                         dbo.artcat__ ON dbo.artiky__.artc_ref = dbo.artcat__.artc_ref LEFT OUTER JOIN
                             (SELECT        det__ref, antw_txt AS TemporaryExtendedLeadTime
                               FROM            dbo.gegdet__
                               WHERE        (tabname_ = ''artiky__'') AND (vrg__ref = ''000024'')) AS TELT ON dbo.artiky__.art__ref = TELT.det__ref LEFT OUTER JOIN
                             (SELECT        gSL.det__ref, gSL.antw_ref, dbo.gegant__.antw_oms AS SupplierLogistics
                               FROM            dbo.gegdet__ AS gSL INNER JOIN
                                                         dbo.gegant__ ON gSL.vrg__ref = dbo.gegant__.vrg__ref AND gSL.antw_ref = dbo.gegant__.antw_ref AND gSL.tabname_ = ''artiky__'' AND gSL.vrg__ref = ''000023'') AS MaterialCustomFields ON 
                         dbo.artiky__.art__ref = MaterialCustomFields.det__ref ON dbo.levbas__.lev__ref = dbo.artiky__.lev__ref LEFT OUTER JOIN
                             (SELECT        art__ref, SUM(CASE WHEN aantal__ > 0 THEN aantal__ END) AS QuantityIN, SUM(CASE WHEN aantal__ < 0 THEN aantal__ END) AS QuantityOUT, SUM(aantal__) AS Quantity
                               FROM            dbo.stobew__
                               GROUP BY art__ref) AS Movements ON dbo.artiky__.art__ref = Movements.art__ref LEFT OUTER JOIN
                             (SELECT        art__ref, SUM(in_stock) AS Stock, SUM(reserve_) AS QuantityReserved, SUM(in___qrt) AS Quarantine, SUM(in_best_) AS ToBeDelivered
                               FROM            dbo.artikn__
                               GROUP BY art__ref) AS Reservations ON dbo.artiky__.art__ref = Reservations.art__ref
' 
