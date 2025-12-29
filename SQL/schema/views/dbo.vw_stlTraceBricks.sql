SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlTraceBricks]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlTraceBricks]
AS
/***************** --BRICKS-- *****************/

SELECT 
[ord__ref]      = srb.ord__ref, 
[rewindBrickNo] = b.rewindBrickNo, 
[sku__ref]      = b.sku__ref, 
[goodCount]     = srb.goodCount, 
[goodLabels]    = srb.goodLabels, 
[rows]          = srb.goodLabels / srb.labelsPerRow, 
[labelsPerRow]  = srb.labelsPerRow, 
[Operator]      = e.wn___rpn 

FROM stlST_RewindBrick srb JOIN
brick b on b.sku__ref = srb.created_hlf__ref JOIN 
stlST_PressRollXstlST_RewindBrick AS x ON srb.stlST_RewindBrickID = x.stlST_RewindBrickID LEFT JOIN 
werknm__ e ON x.wn___ref = e.wn___ref JOIN
stlST_PressRoll AS pr ON x.stlST_PressRollID = pr.stlST_PressRollID LEFT JOIN
hlfvrd__ AS sfg ON pr.hlf__ref = sfg.hlf__ref 

' 
