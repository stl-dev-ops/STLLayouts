UPDATE spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID SET spool.Qty = RoundUpSpool([Weight],[spoolJob].[weightPer20K]), spool.flatRollDiff = RoundUpSpool([Weight],[spoolJob].[weightPer20K])-[flatRollQty]
WHERE (((spoolJob.spoolJobID)=434));

