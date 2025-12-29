SELECT rewindBrickSKU.rewindBrickSKUID, rewindBrickSKU.rewindBrickID, rewindBrick.rewindBrickNo, rewindBrickSKU.brickID, rewindBrick.ord__ref, rewindBrick.qtyLabels
FROM rewindBrickSKU INNER JOIN rewindBrick ON rewindBrickSKU.rewindBrickID = rewindBrick.rewindBrickID
ORDER BY rewindBrickSKU.rewindBrickSKUID;

