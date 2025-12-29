-- UpdateEstimateGraduatedPrice_v1off (v1 tables - main calculations)
-- Updates estimate graduated pricing information in v1off___ (calculation master)
-- Called when user updates estimate prices through the Price Modification sheet
-- Parameters: @EstimateID (bon__ref), @Quantity (oplage__), @PricePer1000, @TotalPrice

UPDATE v1off___
SET vkp_1000 = @PricePer1000,
    vk1000vm = @PricePer1000,
    vkp_eenh = @PricePer1000,
    vkeenhvm = @PricePer1000,
    vkp____b = @TotalPrice,
    vkp__bvm = @TotalPrice,
    stdvkp_b = @TotalPrice,
    marge2_b = ROUND((@TotalPrice - kst____b) / @TotalPrice * 100, 2),
    ratio1_b = ROUND((@TotalPrice - (SELECT SUM(papier__ + grdvb___ + oa______) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref)) / (SELECT SUM(lonen___ + machi___) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref), 2),
    ratio2_b = CASE WHEN (SELECT SUM(lonen___) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref) = 0 THEN 0 ELSE ROUND((@TotalPrice - (SELECT SUM(papier__ + grdvb___ + oa______) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref)) / (SELECT SUM(lonen___) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref), 2) END,
    tw_drukb = ROUND((@TotalPrice - (SELECT SUM(papier__ + grdvb___ + oa______) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref)) / vkp_uren, 2),
    dek_tw_b = ROUND((@TotalPrice - (SELECT SUM(papier__ + grdvb___ + oa______) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref)) / (SELECT SUM(machi___) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref), 2),
    vkp_tw_b = ROUND((@TotalPrice - (SELECT SUM(papier__ + grdvb___ + oa______) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref)) / @TotalPrice, 2),
    vkp_twlb = ROUND((@TotalPrice - (SELECT SUM(papier__ + grdvb___ + oa______ + lonen___) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref)) / @TotalPrice, 2),
    vkpakp_b = ROUND((SELECT SUM(papier__ + grdvb___ + oa______) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref) / @TotalPrice * 100, 2),
    vkppap_b = ROUND(@TotalPrice / (SELECT SUM(papier__) FROM v1kkst__ WHERE kst__srt = '0' AND v1kkst__.off__ref = v1off___.off__ref), 2),
    marge__b = ROUND((@TotalPrice - kst____b) / kst____b * 100, 2)
WHERE bon__ref = @EstimateID 
  AND oplage__ = @Quantity
