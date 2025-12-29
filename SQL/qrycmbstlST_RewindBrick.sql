SELECT brick.brickID, brick.sku__ref, brick.spoolJobID, dbo_hlfvrd__.aant__in AS qty, brick.qty AS GrossGoodQty
FROM brick LEFT JOIN dbo_hlfvrd__ ON brick.sku__ref = dbo_hlfvrd__.hlf__ref
WHERE (((brick.spoolJobID)=[forms]![frmSpoolJob]![spoolJobID]));

