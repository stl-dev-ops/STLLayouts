SELECT brick.sku__ref, brick.rewindBrickNo, brick.qty, flatRollSpool.lastModified, spoolJob.ord__ref, spool.spoolNo
FROM brick INNER JOIN ((spoolJob INNER JOIN spool ON spoolJob.spoolJobID = spool.spoolJobID) INNER JOIN flatRollSpool ON spool.spoolID = flatRollSpool.spoolID) ON brick.brickID = flatRollSpool.brickID
WHERE (((spoolJob.ord__ref)=[Job #]) AND ((spool.spoolNo)=[Spool #]))
ORDER BY flatRollSpool.flatRollSpoolID;

