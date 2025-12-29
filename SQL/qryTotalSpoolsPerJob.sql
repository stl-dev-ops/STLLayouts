SELECT Sum(spool.Qty) AS SumOfQty, spoolJob.ord__ref
FROM spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID
GROUP BY spoolJob.ord__ref
HAVING (((spoolJob.ord__ref)=[Forms]![frmSpoolJob]![ord__ref]));

