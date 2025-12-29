SELECT spool.spoolJobID, spool.spoolNo, brick.brickID, flatRoll.flatRollNo, brick.sku__ref
FROM brick INNER JOIN (flatRoll INNER JOIN (spool INNER JOIN flatRollSpool ON spool.spoolID = flatRollSpool.spoolID) ON flatRoll.flatRollID = flatRollSpool.flatRollID) ON (brick.brickID = flatRollSpool.brickID) AND (brick.brickID = flatRoll.brickID)
ORDER BY spool.spoolJobID, spool.spoolNo, flatRoll.flatRollNo, brick.sku__ref;

