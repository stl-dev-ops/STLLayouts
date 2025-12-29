SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSalesOrdersShipping]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlSalesOrdersShipping]
AS
SELECT so.bst__ref, so.vrzv_dat, so.vrzv_uur, t.trsp_rpn, TrackingNumber.TrackingNumber, so.lyn__ref, so.ord__ref, so.kla__ref, so.kla__rpn, so.afg_oms1, so.afg_oms2, so.b_aantal, OrderDetails.OrderDate, so.trn__srt, so.lok__ref, 
CASE WHEN so.lok__ref = '''' THEN 
	c.straat__ + '' '' + c.postnaam + '' '' + c.state___ + '' '' + c.post_ref + '' '' + c.land_ref 
ELSE 
	a.lev_loc3 + '' '' + a.postnaam + '' '' + a.state___ + '' '' + a.post_ref + '' '' + a.land_ref 
END AS DeliveryAddress, 
CASE WHEN so.lok__ref = '''' THEN c.straat__ ELSE a.lev_loc3 END AS DeliveryStreet, 
CASE WHEN so.lok__ref = '''' THEN c.postnaam ELSE a.postnaam END AS DeliveryCity, 
CASE WHEN so.lok__ref = '''' THEN c.state___ ELSE a.state___ END AS DeliveryState, 
CASE WHEN so.lok__ref = '''' THEN c.post_ref ELSE a.post_ref END AS DeliveryZip, 
CASE WHEN so.lok__ref = '''' THEN c.land_ref ELSE a.land_ref END AS DeliveryCountry, 
so.vrz__dat, so.vrzv_dat AS ShipFromDate, so.vrzv_dat AS ShipToDate, tov.omschr__ AS TermsOfDelivery, 
so.bst__ref + '' '' + CAST(MONTH(so.vrzv_dat) AS nvarchar) + ''/'' + CAST(DAY(so.vrzv_dat) AS nvarchar) + ''/'' + CAST(YEAR(so.vrzv_dat) AS nvarchar) + '' '' + CAST(so.vrzv_uur AS nvarchar) AS GroupBy, so.bsbn_kla
FROM levlok__ AS a RIGHT JOIN
bstlyn__ AS so ON a.lok__ref = so.lok__ref LEFT JOIN
lev_vw__ AS tov ON tov.levvwref = so.levvwref LEFT JOIN
trnlyn__ AS t ON t.lyn__ref = so.lyn__ref LEFT JOIN
klabas__ AS c ON so.kla__ref = c.kla__ref LEFT JOIN
(
	SELECT o.ord__ref, o.best_dat AS OrderDate, o.vrt__ref, v.vrt__rpn, v.naam____, o.bon__ref
	FROM order___ o INNER JOIN
	verte___ v ON o.vrt__ref = v.vrt__ref
) AS OrderDetails ON so.ord__ref = OrderDetails.ord__ref LEFT JOIN
(
	SELECT lyn__ref, tekst_02 AS TrackingNumber
	FROM bstext__
) AS TrackingNumber ON TrackingNumber.lyn__ref = so.lyn__ref
WHERE so.kla__ref <> ''100208''
' 
