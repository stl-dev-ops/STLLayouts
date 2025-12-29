-- extracted from current_longest_running.csv (session_id 376, login SUPERLABEL\austinme)
SET QUOTED_IDENTIFIER ON;

SELECT "dbo"."stlST_PressRollXstlST_RewindBrick"."stlST_PressRollID",
       "dbo"."stlST_RewindBrick"."created_hlf__ref",
       "dbo"."flatRollSpool"."spoolID",
       "dbo"."flatRollSpool"."flatRollID",
       "dbo"."flatRollSpool"."brickID"
FROM "dbo"."stlST_PressRollXstlST_RewindBrick",
     "dbo"."stlST_RewindBrick",
     "dbo"."flatRollSpool",
     "dbo"."brick"
WHERE (("dbo"."stlST_RewindBrick"."stlST_RewindBrickID" = "dbo"."stlST_PressRollXstlST_RewindBrick"."stlST_RewindBrickID")
  AND (("dbo"."brick"."sku__ref" = "dbo"."stlST_RewindBrick"."created_hlf__ref")
       AND ("dbo"."brick"."brickID" = "dbo"."flatRollSpool"."brickID")));

GO
