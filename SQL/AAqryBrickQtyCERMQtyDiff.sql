SELECT brick.sku__ref, dbo_hlfvrd__.hlf__ref, brick.qty, dbo_hlfvrd__.aant__in, [qty]-[aant__in] AS Expr1, brick.lastModified
FROM dbo_hlfvrd__ RIGHT JOIN brick ON dbo_hlfvrd__.hlf__ref = brick.sku__ref
WHERE ((([qty]-[aant__in])<>0));

