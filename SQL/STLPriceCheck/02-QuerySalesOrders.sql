-- QuerySalesOrders query from QueryModule.bas
-- Main query that retrieves sales order data with pricing information
-- Calculates EstimateTarrifGraduatedPrice based on graduated tariff tiers
-- Handles book prices, tariff prices, and estimate information

SELECT lyn__ref, bsbn_kla, bst__dat, vrz__dat, kla__ref, kla__rpn, afg__ref, afg_oms1, Quantity, pr_excl_, bedrf_bm, EstimateCreated, bon__ref, omschr__, Total_PO_Quantity, prfm_rpn, PriceExplanation, TypeOfSale,
       EstimateTarrifGraduatedPrice_1000 = 
       CASE WHEN bon__ref IS NULL THEN 0 ELSE
         ISNULL(
           (
             SELECT TOP 1 WITH TIES t.Price
             FROM vw_stlGraduatedTarrifPrices t
             WHERE t.bon__ref = SalesOrders.bon__ref 
               AND t.MinQuantity <= SalesOrders.Total_PO_Quantity 
               AND t.Price <> 0.00 
               AND SalesOrders.bst__dat BETWEEN t.beg__dat AND t.end__dat
             ORDER BY ROW_NUMBER() OVER (PARTITION BY t.bon__ref ORDER BY t.MinQuantity DESC)
           ), 999999999)
       END, 
       BookMinPrice, BookMaxPrice
FROM
(
  SELECT b.lyn__ref, b.bsbn_kla, b.bst__dat, b.vrz__dat, b.kla__ref, b.kla__rpn, b.afg__ref, b.afg_oms1, b.b_aantal Quantity, b.pr_excl_, b.bedrf_bm, v1bon___.bon__ref, v1bon___.omschr__, b.off1_ref, prodfm__.prfm_rpn, bs.tekst_15 PriceExplanation, TypeOfSale.omschr__ AS TypeOfSale,
         Total_PO_Quantity = 
         (
           SELECT SUM(PO.b_aantal)
           FROM bstlyn__ PO 
           LEFT JOIN afgart__ ON PO.afg__ref = afgart__.afg__ref
           WHERE PO.bsbn_kla = B.bsbn_kla 
             AND (PO.afg__ref = P.afg__ref OR (P.etiket_b = afgart__.etiket_b AND P.etiket_h = afgart__.etiket_h))
         ), 
         v1bon___.best_dat EstimateCreated, 
         BookMinPrice, BookMaxPrice
  FROM bstlyn__ b 
  LEFT JOIN v1off___ ON v1off___.off__ref = b.off1_ref 
  LEFT JOIN v1bon___ ON v1bon___.bon__ref = v1off___.bon__ref 
  LEFT JOIN afgart__ p ON b.afg__ref = p.afg__ref 
  LEFT JOIN prodfm__ ON p.prfm_ref = prodfm__.prfm_ref 
  LEFT JOIN (
    SELECT afg__ref, BookMinPrice, BookMaxPrice
    FROM vw_stlStockedProducts
  ) StockedProducts ON StockedProducts.afg__ref = b.afg__ref 
  LEFT JOIN bstext__ bs ON b.lyn__ref = bs.lyn__ref 
  LEFT JOIN (
    SELECT tstd_ref, omschr__
    FROM tstval__
    WHERE tabname_ = 'bstlyn__' AND tst__ref = '0807'
  ) TypeOfSale ON b.tstval07 = TypeOfSale.tstd_ref
  WHERE b.kla__ref NOT IN ('100208', '100349', '100377', '100490', '100376', '100222', '100109')
    AND (b.bst__com + b.afg_oms1 + b.afg_oms2 + b.bsbn_kla + b.bsbn_kl2) NOT LIKE '%sample%'
    AND b.b_aantal > 0
    -- Filter by date based on SpoolingOnly parameter:
    -- IF SpoolingOnly: AND b.afg_oms1 LIKE '%spool%' AND b.vrz__dat BETWEEN @StartDate AND @EndDate
    -- ELSE: AND b.bst__dat BETWEEN @StartDate AND @EndDate
) SalesOrders
ORDER BY bst__dat, kla__rpn, afg_oms1
