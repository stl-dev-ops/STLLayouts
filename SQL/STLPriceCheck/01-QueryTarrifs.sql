-- QueryTarrifs query from QueryModule.bas
-- Retrieves tariff pricing information for sales orders
-- Used by VBA to load tariff prices with graduated pricing tiers

SELECT b.lyn__ref, t.bon__ref, ISNULL(sov1.best_dat, pv1.best_dat) EstimateCreatedDate, t.comment, t.beg__dat, t.end__dat, MinQuantity, Price, PreviousPrice, PercentIncreaseFromPreviousPrice,
       MaxQuantity = CASE WHEN (SELECT COUNT(tc.bon__ref) FROM vw_stlGraduatedTarrifPrices tc WHERE tc.bon__ref = t.bon__ref AND tc.comment = t.comment AND Price <> 0) = ROW_NUMBER() OVER(PARTITION BY t.bon__ref, t.comment ORDER BY t.bon__ref, t.comment) THEN 999999999 ELSE MaxQuantity END
FROM bstlyn__ b 
LEFT JOIN afgart__ AS p ON p.afg__ref = b.afg__ref 
LEFT JOIN v1off___ AS pv1 ON pv1.off__ref = p.off1_ref 
LEFT JOIN v1off___ AS sov1 ON sov1.off__ref = b.off1_ref 
LEFT JOIN vw_stlGraduatedTarrifPrices t ON t.bon__ref = ISNULL(sov1.bon__ref, pv1.bon__ref)
WHERE b.kla__ref NOT IN ('100208', '100349', '100377', '100490', '100376', '100222', '100109')
  AND (b.bst__com + b.afg_oms1 + b.afg_oms2 + b.bsbn_kla + b.bsbn_kl2) NOT LIKE '%sample%'
  AND t.Price <> 0
  -- Filter by date based on SpoolingOnly parameter:
  -- IF SpoolingOnly: AND b.afg_oms1 LIKE '%spool%' AND b.vrz__dat BETWEEN @StartDate AND @EndDate
  -- ELSE: AND b.bst__dat BETWEEN @StartDate AND @EndDate
ORDER BY t.bon__ref, t.beg__dat, t.MinQuantity
