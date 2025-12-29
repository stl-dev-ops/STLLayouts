-- UpdateEstimateGraduatedPrice_v1staf (cost details - staff/paper/machine costs)
-- Updates detailed cost allocation in v1staf__ (cost detail breakdown)
-- Called when user updates estimate prices through the Price Modification sheet
-- Parameters: @EstimateID (bon__ref), @Quantity (oplage__), @PricePer1000, @TotalPrice

UPDATE v1staf__
SET vkp_1000 = @PricePer1000,
    vk1000vm = @PricePer1000,
    vkp_eenh = @PricePer1000,
    vkeenhvm = @PricePer1000,
    vkp_____ = @TotalPrice,
    vkp___vm = @TotalPrice,
    stdvkp__ = @TotalPrice,
    marge2_p = ROUND((@TotalPrice - kostp___) / @TotalPrice * 100, 2),
    ratio1__ = ROUND((@TotalPrice - papier__ - grdvb___ - oa______) / (lonen___ + machi___), 2),
    ratio2__ = CASE WHEN lonen___ = 0 THEN 0 ELSE ROUND((@TotalPrice - papier__ - grdvb___ - oa______) / lonen___, 2) END,
    tw_druk_ = ROUND((@TotalPrice - papier__ - grdvb___ - oa______) / vkp_uren, 2),
    dek_tw__ = ROUND((@TotalPrice - papier__ - grdvb___ - oa______) / machi___, 2),
    vkp_tw__ = ROUND((@TotalPrice - papier__ - grdvb___ - oa______) / @TotalPrice * 100, 2),
    vkp_twl_ = ROUND((@TotalPrice - papier__ - grdvb___ - oa______ - lonen___) / @TotalPrice, 2),
    vkpakp_p = ROUND(((papier__ + grdvb___ + oa______) / @TotalPrice) * 100, 2),
    vkppap_p = ROUND(@TotalPrice / papier__, 2),
    marge__p = ROUND((@TotalPrice - kostp___) / kostp___ * 100, 2)
WHERE bon__ref = @EstimateID 
  AND oplage__ = @Quantity
