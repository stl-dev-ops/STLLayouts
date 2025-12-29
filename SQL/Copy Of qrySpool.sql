SELECT spool.*, qrySumFRQtyInSpool.FRQty, [FRQty]-[Qty] AS FRDiff
FROM (spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID) LEFT JOIN qrySumFRQtyInSpool ON spool.spoolID = qrySumFRQtyInSpool.spoolID
ORDER BY spool.spoolNo;

