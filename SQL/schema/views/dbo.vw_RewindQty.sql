SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_RewindQty]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_RewindQty
AS
SELECT     ord__ref, SUM(qtyLabels) AS RewindQty
FROM         dbo.rewindBrick
GROUP BY ord__ref
' 
