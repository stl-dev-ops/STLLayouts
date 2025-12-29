SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLLastAvgBrickFT_LastSpoolQty]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLLastAvgBrickFT_LastSpoolQty
AS
SELECT     TOP (100) PERCENT dbo.vw_STLLastAvgBrickFt.afg__ref, dbo.vw_STLLastAvgBrickFt.LastAvgBrickFt, CASE WHEN dbo.vw_STLLastSpoolQtyFt.LastSpoolQty IS NULL 
                      THEN 0 ELSE dbo.vw_STLLastSpoolQtyFt.LastSpoolQty END AS LastSpoolQty, CASE WHEN dbo.vw_STLLastSpoolQtyFt.LastSpoolFt IS NULL 
                      THEN 0 ELSE dbo.vw_STLLastSpoolQtyFt.LastSpoolFt END AS LastSpoolFt
FROM         dbo.vw_STLLastAvgBrickFt LEFT OUTER JOIN
                      dbo.vw_STLLastSpoolQtyFt ON dbo.vw_STLLastAvgBrickFt.afg__ref = dbo.vw_STLLastSpoolQtyFt.afg__ref
ORDER BY dbo.vw_STLLastAvgBrickFt.afg__ref
' 
