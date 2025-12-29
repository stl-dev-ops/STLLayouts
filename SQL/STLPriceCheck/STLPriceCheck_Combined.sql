-- STL Price Check - Combined Analysis
-- Combines tariff queries, sales order analysis, and estimate pricing
-- Joins all pricing data per sales order line for side-by-side comparison

-- Calculate total PO quantities first
WITH POQuantities AS (
    SELECT 
        b.bsbn_kla,
        b.afg__ref,
        p.etiket_b,
        p.etiket_h,
        SUM(b.b_aantal) AS Total_PO_Quantity
    FROM bstlyn__ b
    LEFT JOIN afgart__ p ON b.afg__ref = p.afg__ref
    WHERE b.kla__ref NOT IN ('100208', '100349', '100377', '100490', '100376', '100222', '100109')
      AND (b.bst__com + b.afg_oms1 + b.afg_oms2 + b.bsbn_kla + b.bsbn_kl2) NOT LIKE '%sample%'
      AND b.b_aantal > 0
    GROUP BY b.bsbn_kla, b.afg__ref, p.etiket_b, p.etiket_h
)
SELECT 
    b.bsbn_kla AS CustomerPO,
    b.lyn__ref AS SalesOrderLineID,
    b.bst__dat AS OrderDate,
    b.vrz__dat AS ShipDate,
    b.kla__ref AS CustomerID,
    b.kla__rpn AS CustomerKeyword,
    prodfm__.prfm_rpn AS Brand,
    b.afg__ref AS ProductID,
    b.afg_oms1 AS ProductDescription,
    b.b_aantal AS OrderQuantity,
    POQ.Total_PO_Quantity,
    b.pr_excl_ AS ActualPrice,
    bs.tekst_15 AS PriceExplanation,
    TypeOfSale.omschr__ AS TypeOfSale,
    
    -- Estimate Information
    v1bon___.bon__ref AS EstimateID,
    v1bon___.omschr__ AS EstimateDescription,
    v1bon___.best_dat AS EstimateCreated,
    
    -- Tariff Pricing
    t.comment AS TariffComment,
    t.beg__dat AS TariffStartDate,
    t.end__dat AS TariffEndDate,
    t.MinQuantity AS TariffMinQuantity,
    t.MaxQuantity AS TariffMaxQuantity,
    t.Price AS TariffPrice,
    t.PreviousPrice AS TariffPreviousPrice,
    t.PercentIncreaseFromPreviousPrice AS TariffPriceIncreasePct,
    
    -- Estimate Graduated Pricing
    GSP.oplage__ AS EstimateQuantityTier,
    GSP.vkp_1000 AS EstimatePricePer1000,
    
    -- Book Prices
    StockedProducts.BookMinPrice,
    StockedProducts.BookMaxPrice,
    
    -- Calculated Tariff Graduated Price (based on Total PO Quantity)
    EstimateTarrifGraduatedPrice_1000 = CASE 
        WHEN v1bon___.bon__ref IS NULL THEN 0 
        ELSE ISNULL((
            SELECT TOP 1 WITH TIES t2.Price
            FROM vw_stlGraduatedTarrifPrices t2
            WHERE t2.bon__ref = v1bon___.bon__ref 
              AND t2.MinQuantity <= POQ.Total_PO_Quantity
              AND t2.Price <> 0.00 
              AND b.bst__dat BETWEEN t2.beg__dat AND t2.end__dat
            ORDER BY ROW_NUMBER() OVER (PARTITION BY t2.bon__ref ORDER BY t2.MinQuantity DESC)
        ), 999999999)
    END
    
FROM bstlyn__ b 
LEFT JOIN afgart__ p ON b.afg__ref = p.afg__ref 
LEFT JOIN v1off___ ON v1off___.off__ref = b.off1_ref 
LEFT JOIN v1bon___ ON v1bon___.bon__ref = v1off___.bon__ref 
LEFT JOIN prodfm__ ON p.prfm_ref = prodfm__.prfm_ref 
LEFT JOIN bstext__ bs ON b.lyn__ref = bs.lyn__ref 
LEFT JOIN (
    SELECT tstd_ref, omschr__
    FROM tstval__
    WHERE tabname_ = 'bstlyn__' AND tst__ref = '0807'
) TypeOfSale ON b.tstval07 = TypeOfSale.tstd_ref
LEFT JOIN (
    SELECT afg__ref, BookMinPrice, BookMaxPrice
    FROM vw_stlStockedProducts
) StockedProducts ON StockedProducts.afg__ref = b.afg__ref
-- Join to PO quantities
LEFT JOIN POQuantities POQ ON POQ.bsbn_kla = b.bsbn_kla 
    AND POQ.afg__ref = b.afg__ref
-- Join to tariffs
LEFT JOIN afgart__ AS p2 ON p2.afg__ref = b.afg__ref 
LEFT JOIN v1off___ AS pv1 ON pv1.off__ref = p2.off1_ref 
LEFT JOIN v1off___ AS sov1 ON sov1.off__ref = b.off1_ref 
-- Join to tariffs - get the matching tier based on TOTAL PO quantity
LEFT JOIN vw_stlGraduatedTarrifPrices t ON t.bon__ref = ISNULL(sov1.bon__ref, pv1.bon__ref)
    AND POQ.Total_PO_Quantity >= t.MinQuantity 
    AND (POQ.Total_PO_Quantity <= t.MaxQuantity OR t.MaxQuantity = 999999999)
    AND b.bst__dat BETWEEN t.beg__dat AND t.end__dat
-- Join to estimate graduated prices - get the matching tier based on order quantity
LEFT JOIN vw_stlGraduatedSalesPrices GSP ON b.off1_ref = GSP.off__ref
    AND GSP.oplage__ = (
        SELECT MAX(GSP2.oplage__)
        FROM vw_stlGraduatedSalesPrices GSP2
        WHERE GSP2.off__ref = b.off1_ref
          AND GSP2.oplage__ <= b.b_aantal
          AND GSP2.vkp_1000 > 0.01
    )

WHERE b.kla__ref NOT IN ('100208', '100349', '100377', '100490', '100376', '100222', '100109')
  AND (b.bst__com + b.afg_oms1 + b.afg_oms2 + b.bsbn_kla + b.bsbn_kl2) NOT LIKE '%sample%'
  AND b.b_aantal > 0
  -- Filter by date based on parameters:
  -- AND b.bst__dat BETWEEN @StartDate AND @EndDate
  -- OR for spooling: AND b.afg_oms1 LIKE '%spool%' AND b.vrz__dat BETWEEN @StartDate AND @EndDate

ORDER BY b.bst__dat DESC, b.bsbn_kla, b.lyn__ref;
