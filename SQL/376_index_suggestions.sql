-- Suggested non-destructive index recommendations for the query
-- Review before applying. These are suggestions to improve JOIN performance.
-- Run in a test environment first. They are presented as CREATE INDEX statements wrapped in IF NOT EXISTS checks.

-- 1) On stlST_PressRollXstlST_RewindBrick: support join on stlST_RewindBrickID and include stlST_PressRollID
IF NOT EXISTS (
  SELECT 1 FROM sys.indexes i
  JOIN sys.objects o ON i.object_id = o.object_id
  WHERE o.name = 'stlST_PressRollXstlST_RewindBrick' AND i.name = 'IX_PressRoll_RewindBrickID'
)
BEGIN
  CREATE NONCLUSTERED INDEX IX_PressRoll_RewindBrickID
  ON dbo.stlST_PressRollXstlST_RewindBrick (stlST_RewindBrickID)
  INCLUDE (stlST_PressRollID);
END
GO

-- 2) On stlST_RewindBrick: if not primary key, ensure index on stlST_RewindBrickID; also index created_hlf__ref used in join
IF NOT EXISTS (
  SELECT 1 FROM sys.indexes i
  JOIN sys.objects o ON i.object_id = o.object_id
  WHERE o.name = 'stlST_RewindBrick' AND i.name = 'IX_RewindBuck_CreatedHlf'
)
BEGIN
  CREATE NONCLUSTERED INDEX IX_RewindBuck_CreatedHlf
  ON dbo.stlST_RewindBrick (created_hlf__ref)
  INCLUDE (stlST_RewindBrickID);
END
GO

-- 3) On brick: index sku__ref used for join; brickID should be primary key but ensure an index exists
IF NOT EXISTS (
  SELECT 1 FROM sys.indexes i
  JOIN sys.objects o ON i.object_id = o.object_id
  WHERE o.name = 'brick' AND i.name = 'IX_Brick_SkuRef'
)
BEGIN
  CREATE NONCLUSTERED INDEX IX_Brick_SkuRef
  ON dbo.brick (sku__ref)
  INCLUDE (brickID);
END
GO

-- 4) On flatRollSpool: index on brickID to support join and include spoolID, flatRollID
IF NOT EXISTS (
  SELECT 1 FROM sys.indexes i
  JOIN sys.objects o ON i.object_id = o.object_id
  WHERE o.name = 'flatRollSpool' AND i.name = 'IX_FlatRollSpool_BrickID'
)
BEGIN
  CREATE NONCLUSTERED INDEX IX_FlatRollSpool_BrickID
  ON dbo.flatRollSpool (brickID)
  INCLUDE (spoolID, flatRollID);
END
GO

-- Notes:
-- * These are recommendations. Creating indexes can improve reads but slow writes and use space.
-- * If tables are very small, indexes won't help; if very large, consider filtered or composite indexes tuned to real predicates.
-- * After creating indexes, update statistics: UPDATE STATISTICS dbo.<TableName>;
-- * Test each index one at a time and measure query plan change.
