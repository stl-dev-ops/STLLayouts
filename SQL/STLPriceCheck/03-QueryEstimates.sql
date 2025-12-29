-- QueryEstimates query from QueryModule.bas
-- Retrieves estimate and graduated price information
-- Groups by product and estimate to collect all graduated price tiers

SELECT DISTINCT B.afg__ref, GSP.bon__ref, GSP.off__ref, E.best_dat, E.omschr__, GSP.oplage__, GSP.vkp_1000, E.kla__ref
FROM bstlyn__ B 
INNER JOIN vw_stlGraduatedSalesPrices GSP ON B.off1_ref = GSP.off__ref 
INNER JOIN v1bon___ E ON E.bon__ref = GSP.bon__ref
-- Optional filters based on parameters:
-- IF ProductID provided: WHERE B.afg__ref = @ProductID AND E.best_dat >= DATEADD(year,-3,@CurrentDate)
-- ELSE IF SpoolingOnly: AND B.afg_oms1 LIKE '%spool%' with date range on vrz__dat
-- ELSE: Standard date range on bst__dat
WHERE GSP.vkp_1000 > 0.01
  AND B.kla__ref NOT IN ('100208', '100349', '100377', '100490', '100376', '100222', '100109')
  AND (B.bst__com + B.afg_oms1 + B.afg_oms2 + B.bsbn_kla + B.bsbn_kl2) NOT LIKE '%sample%'
ORDER BY B.afg__ref, E.best_dat, GSP.oplage__, GSP.vkp_1000
