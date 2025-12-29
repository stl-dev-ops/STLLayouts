SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlShippingEstimatedMinutes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlShippingEstimatedMinutes
AS
SELECT DISTINCT J.ord__ref AS JobID, J.kla__rpn AS Customer, J.omschr__ AS Description, J.oplage__ AS OrderQty, dbo.bstlyn__.vrzv_dat AS ExpectedShipDate,
                             (SELECT        CAST(SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) + dbo.GetMinutesFromCERMTimeString(prod_tyd)) / 60 AS varchar) + '':'' + CASE WHEN SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) 
                                                         + dbo.GetMinutesFromCERMTimeString(prod_tyd)) - (SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) + dbo.GetMinutesFromCERMTimeString(prod_tyd)) / 60) 
                                                         * 60 < 10 THEN ''0'' + CAST(SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) + dbo.GetMinutesFromCERMTimeString(prod_tyd)) - (SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) 
                                                         + dbo.GetMinutesFromCERMTimeString(prod_tyd)) / 60) * 60 AS varchar) ELSE CAST(SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) + dbo.GetMinutesFromCERMTimeString(prod_tyd)) 
                                                         - (SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) + dbo.GetMinutesFromCERMTimeString(prod_tyd)) / 60) * 60 AS varchar) END AS Estimated_Shipping_Min
                               FROM            dbo.v4vpak__
                               WHERE        (off__ref = J.ord__ref)) AS Estimated_Shipping_Minutes
FROM            dbo.order___ AS J INNER JOIN
                         dbo.bstlyn__ ON J.ord__ref = dbo.bstlyn__.ord__ref
WHERE        (J.kla__ref <> ''100208'')
' 
