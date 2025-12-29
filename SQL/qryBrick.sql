SELECT brick.brickID, brick.spoolJobID, brick.brickNo, brick.sku__ref, brick.flatRolls, brick.wasteWeight, brick.lastModified, dbo_hlfvrd__.aant__in AS CERMSFGQty, brick.rewindBrickNo
FROM brick LEFT JOIN dbo_hlfvrd__ ON brick.sku__ref = dbo_hlfvrd__.hlf__ref
ORDER BY brick.brickID;

