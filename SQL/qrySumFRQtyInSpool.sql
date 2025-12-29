SELECT flatRollSpool.spoolID, Sum(IIf(IsNull([aant__in]),[qty],[aant__in])/[flatrolls]) AS FRQty
FROM (brick INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) LEFT JOIN dbo_hlfvrd__ ON brick.sku__ref = dbo_hlfvrd__.hlf__ref
GROUP BY flatRollSpool.spoolID
ORDER BY flatRollSpool.spoolID;

