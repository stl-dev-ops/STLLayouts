SELECT brick.brickID, brick.sku__ref, brick.spoolJobID, dbo_stlST_RewindBrick.goodLabels AS qty, brick.qty AS GrossGoodQty
FROM brick INNER JOIN dbo_stlST_RewindBrick ON brick.sku__ref = dbo_stlST_RewindBrick.created_hlf__ref
WHERE (((brick.spoolJobID)=[forms]![frmSpoolJob]![spoolJobID]));

