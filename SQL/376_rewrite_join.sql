-- Rewritten query using explicit INNER JOINs and aliases
-- Extracted from session 376 (SUPERLABEL\austinme)

SET QUOTED_IDENTIFIER ON;

SELECT
  pr.stlST_PressRollID,
  rb.created_hlf__ref,
  frs.spoolID,
  frs.flatRollID,
  frs.brickID
FROM dbo.stlST_PressRollXstlST_RewindBrick AS pr
INNER JOIN dbo.stlST_RewindBrick AS rb
  ON rb.stlST_RewindBrickID = pr.stlST_RewindBrickID
INNER JOIN dbo.brick AS b
  ON b.sku__ref = rb.created_hlf__ref
INNER JOIN dbo.flatRollSpool AS frs
  ON b.brickID = frs.brickID;

GO
