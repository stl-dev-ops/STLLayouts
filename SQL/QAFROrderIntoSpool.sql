SELECT spoolJob.ord__ref, spool.spoolNo, flatRoll.flatRollNo, brick.sku__ref AS BRickSKU, flatRollSpool.lastModified AS FRAddedToSpoolDate, flatRoll.lastModified AS FRLastModDate, flatRollSpool.flatRollSpoolID
FROM spool INNER JOIN (flatRoll INNER JOIN ((spoolJob INNER JOIN brick ON spoolJob.spoolJobID = brick.spoolJobID) INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) ON flatRoll.flatRollID = flatRollSpool.flatRollID) ON spool.spoolID = flatRollSpool.spoolID
WHERE (((spoolJob.ord__ref)=[Job#]) AND ((spool.spoolNo)=[Spool#]))
ORDER BY flatRollSpool.flatRollSpoolID;

