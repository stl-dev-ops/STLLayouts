SELECT pressRollSKU.pressRollSKUID, pressRollSKU.brickID, pressRollSKU.hlf__ref, dbo_hlfvrd__.inh__oms
FROM pressRollSKU INNER JOIN dbo_hlfvrd__ ON pressRollSKU.hlf__ref = dbo_hlfvrd__.hlf__ref;

