SELECT dbo_stlST_RewindBrick.ord__ref, dbo_stlST_RewindBrick.rewindBrickNo, dbo_stlST_pressRollBadRow.flatRollNo, dbo_stlST_pressRollBadRow.reason, dbo_stlST_pressRollBadRow.comment
FROM dbo_stlST_pressRollBadRow INNER JOIN dbo_stlST_RewindBrick ON dbo_stlST_pressRollBadRow.stlST_RewindBrickID = dbo_stlST_RewindBrick.stlST_RewindBrickID
WHERE (((dbo_stlST_RewindBrick.[ord__ref])=[Job Number]))
ORDER BY dbo_stlST_RewindBrick.rewindBrickNo, dbo_stlST_pressRollBadRow.flatRollNo;

