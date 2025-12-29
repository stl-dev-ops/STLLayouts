SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlST_SKUsPerBrick]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlST_SKUsPerBrick
AS
SELECT        dbo.stlST_RewindBrick.stlST_RewindBrickID, MIN(dbo.stlST_RewindBrick.labelsPerRow) AS STMinLabelsPerRow, COUNT(dbo.stlST_RewindBrickSKU.sku__ref) AS STSkuCount
FROM            dbo.stlST_RewindBrick INNER JOIN
                         dbo.stlST_RewindBrickSKU ON dbo.stlST_RewindBrick.stlST_RewindBrickID = dbo.stlST_RewindBrickSKU.stlST_RewindBrickID
GROUP BY dbo.stlST_RewindBrick.stlST_RewindBrickID
' 
