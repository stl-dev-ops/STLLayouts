SELECT pressRollWaste.pressRollWasteID, Count(pressRollBadRow.pressRollBadRowID) AS BadRowCt
FROM pressRollWaste INNER JOIN pressRollBadRow ON pressRollWaste.pressRollWasteID = pressRollBadRow.pressRollWasteID
GROUP BY pressRollWaste.pressRollWasteID;

