PARAMETERS [Rw Brick ID] Long;
UPDATE rewindBrick SET rewindBrick.closed = 0
WHERE (((rewindBrick.rewindBrickID)=[Rw Brick ID]));

