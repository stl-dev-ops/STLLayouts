SELECT rewindBrick.rewindBrickID, Count(pressRollWaste.pressRollWasteID) AS RWBrickCt
FROM rewindBrick INNER JOIN pressRollWaste ON rewindBrick.rewindBrickID = pressRollWaste.rewindBrickID
GROUP BY rewindBrick.rewindBrickID;

