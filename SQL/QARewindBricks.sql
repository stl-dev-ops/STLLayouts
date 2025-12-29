PARAMETERS Job_No Text ( 255 );
SELECT rewindBrick.ord__ref AS Job_No, rewindBrick.rewindBrickNo AS [RWBrick#], rewindBrick.grossQtyLabels AS RWGrossQtyLabel, rewindBrick.qtyLabels AS RWQtyLabels, pressRollWaste.hlf__ref AS [PR-SKU], pressRollWaste.inh__oms AS [PR #], IIf([rewindBrick].[closed],'Yes','No') AS RWBrickClosed, IIf([pressRollWaste].[closed],'Yes','No') AS PRWasteClosed
FROM rewindBrick INNER JOIN pressRollWaste ON rewindBrick.rewindBrickID = pressRollWaste.rewindBrickID
WHERE (((rewindBrick.ord__ref)=[Job_No]))
ORDER BY rewindBrick.rewindBrickID;

