SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSalesOrdersShippingAddressCounts]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlSalesOrdersShippingAddressCounts
AS
SELECT        GroupBy, COUNT(DeliveryAddress) AS DeliveryAddressCount
FROM            (SELECT        GroupBy, DeliveryAddress
                          FROM            (SELECT        TOP (100) PERCENT dbo.bstlyn__.bst__ref + '' '' + CAST(MONTH(dbo.bstlyn__.vrzv_dat) AS nvarchar) + ''/'' + CAST(DAY(dbo.bstlyn__.vrzv_dat) AS nvarchar) 
                                                                              + ''/'' + CAST(YEAR(dbo.bstlyn__.vrzv_dat) AS nvarchar) + '' '' + CAST(dbo.bstlyn__.vrzv_uur AS nvarchar) AS GroupBy, 
                                                                              (CASE WHEN dbo.bstlyn__.lok__ref = '''' THEN dbo.klabas__.straat__ + '' '' + dbo.klabas__.postnaam + '' '' + dbo.klabas__.state___ + '' '' + dbo.klabas__.post_ref + '' '' + dbo.klabas__.land_ref ELSE
                                                                               dbo.levlok__.lev_loc3 + '' '' + dbo.levlok__.postnaam + '' '' + dbo.levlok__.state___ + '' '' + dbo.levlok__.post_ref + '' '' + dbo.levlok__.land_ref END) 
                                                                              + dbo.trnlyn__.trsp_rpn + dbo.bstlyn__.levvwref AS DeliveryAddress
                                                    FROM            dbo.levlok__ RIGHT OUTER JOIN
                                                                              dbo.bstlyn__ ON dbo.levlok__.lok__ref = dbo.bstlyn__.lok__ref LEFT OUTER JOIN
                                                                              dbo.klabas__ ON dbo.bstlyn__.kla__ref = dbo.klabas__.kla__ref LEFT OUTER JOIN
                                                                              dbo.trnlyn__ ON dbo.trnlyn__.lyn__ref = dbo.bstlyn__.lyn__ref
                                                    WHERE        (dbo.bstlyn__.kla__ref <> 100208)) AS derivedtbl_1_1
                          GROUP BY GroupBy, DeliveryAddress) AS derivedtbl_1
GROUP BY GroupBy
' 
