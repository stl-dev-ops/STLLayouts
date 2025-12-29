SELECT spool.spoolID, spool.spoolNo, spool.spoolJobID
FROM spool
WHERE (((spool.spoolJobID)=[forms]![frmSpoolJob]![spoolJobID]))
ORDER BY spool.spoolNo;

