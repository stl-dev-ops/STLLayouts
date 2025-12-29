SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlST_RewindJobSignOff]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlST_RewindJobSignOff
AS
SELECT        TOP (100) PERCENT dbo.stlST_RewindBrick.stlST_RewindBrickID, dbo.stlST_RewindBrick.tmstamp, dbo.stlST_RewindBrick.ord__ref, dbo.stlST_RewindBrick.closed, dbo.stlST_RewindBrick.spoolJob, 
                         dbo.stlST_RewindBrick.qaHold, dbo.stlST_RewindBrick.lastModified, dbo.stlST_RewindBrick.rewindBrickNo, dbo.stlST_RewindBrick.goodCount, dbo.stlST_RewindBrick.goodLabels, dbo.stlST_RewindBrick.grossLabels, 
                         dbo.stlST_RewindBrick.roundedLabels, dbo.stlST_RewindBrick.labelsPerRow, dbo.stlST_RewindBrick.created_hlf__ref, dbo.stlST_RewindBrick.wn___ref, dbo.stlST_RewindBrick.vrs__ref, 
                         dbo.werknm__.wn_vnaam + '' '' + dbo.werknm__.wn_naam_ AS Operator, dbo.vw_STLafgskusPerBrick.skuCount AS CermSkuCount, dbo.vw_STLafgskusPerBrick.MinLabelsPerRow AS CermLabelPerRow, 
                         dbo.vw_stlST_SKUsPerBrick.STMinLabelsPerRow, dbo.vw_stlST_SKUsPerBrick.STSkuCount
FROM            dbo.stlST_RewindBrick LEFT OUTER JOIN
                         dbo.werknm__ ON dbo.stlST_RewindBrick.wn___ref = dbo.werknm__.wn___ref LEFT OUTER JOIN
                         dbo.vw_STLafgskusPerBrick ON dbo.stlST_RewindBrick.stlST_RewindBrickID = dbo.vw_STLafgskusPerBrick.stlST_RewindBrickID LEFT OUTER JOIN
                         dbo.vw_stlST_SKUsPerBrick ON dbo.stlST_RewindBrick.stlST_RewindBrickID = dbo.vw_stlST_SKUsPerBrick.stlST_RewindBrickID
' 
