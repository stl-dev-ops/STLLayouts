SELECT spoolJob.ord__ref, brick.brickID, spool.spoolNo
FROM spool INNER JOIN ((spoolJob INNER JOIN brick ON spoolJob.spoolJobID = brick.spoolJobID) INNER JOIN flatRollSpool ON brick.brickID = flatRollSpool.brickID) ON spool.spoolID = flatRollSpool.spoolID
GROUP BY spoolJob.ord__ref, brick.brickID, spool.spoolNo
HAVING (((spoolJob.ord__ref)=forms!frmQASisterSpools!txtord__ref) And ((spool.spoolNo)=forms!frmQASisterSpools!txtSpoolNo));

