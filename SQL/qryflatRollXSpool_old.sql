SELECT flatRoll.brickID, flatRollSpool.spoolID, flatRollSpool.flatRollID, flatRoll.flatRollNo, flatRoll.notUsedBad, flatRoll.notUsedGood, flatRoll.notUsedNote, flatRoll.machine, spool.spoolNo
FROM spool INNER JOIN ((brick INNER JOIN flatRoll ON brick.brickID = flatRoll.brickID) INNER JOIN flatRollSpool ON flatRoll.flatRollID = flatRollSpool.flatRollID) ON spool.spoolID = flatRollSpool.spoolID;

