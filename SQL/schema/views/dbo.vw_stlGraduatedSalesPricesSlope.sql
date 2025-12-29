SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlGraduatedSalesPricesSlope]'))
EXEC dbo.sp_executesql @statement = N'
CREATE   VIEW [dbo].[vw_stlGraduatedSalesPricesSlope]
AS
SELECT RR1.bon__ref, RR1.off__ref, RR1.oplage__ oplage__1, RR1.vkp_1000 vkp_1000_1, RR1.Total Total_1, RR2.oplage__ oplage__2, RR2.vkp_1000 vkp_1000_2, RR2.Total Total_2,
m =
CASE WHEN RR2.oplage__ - RR1.oplage__ <> 0 THEN (RR2.Total - RR1.Total) / (RR2.oplage__ - RR1.oplage__) ELSE NULL END,
b = 
CASE WHEN RR2.oplage__ - RR1.oplage__ <> 0 THEN RR1.Total - ((RR2.Total - RR1.Total) / (RR2.oplage__ - RR1.oplage__)) * RR1.oplage__ ELSE NULL END
FROM 
(
 SELECT TOP 1 WITH TIES bon__ref, off__ref, oplage__, vkp_1000, oplage__ / 1000 * vkp_1000 Total
 FROM vw_stlGraduatedSalesPrices
 WHERE oplage__ <> 0
 ORDER BY row_number() OVER (partition BY off__ref ORDER BY oplage__)
) RR1 INNER JOIN
(
 SELECT TOP 1 WITH TIES bon__ref, off__ref, oplage__, vkp_1000, oplage__ / 1000 * vkp_1000 Total
 FROM vw_stlGraduatedSalesPrices
 WHERE oplage__ <> 0
 ORDER BY row_number() OVER (partition BY off__ref ORDER BY oplage__ DESC)
) RR2 ON RR1.bon__ref = RR1.bon__ref AND RR1.off__ref = RR2.off__ref 

' 
