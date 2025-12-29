SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLLastSpoolQtyFt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLLastSpoolQtyFt
AS
SELECT     TOP (100) PERCENT v.afg__ref, v.LastSpoolQty, v.LastSpoolQty * ((a.etiket_h + a.lblgp___) / 12) AS LastSpoolFt
FROM         dbo.vw_STLLastSpoolQty AS v INNER JOIN
                      dbo.afgart__ AS a ON v.afg__ref = a.afg__ref
ORDER BY v.afg__ref
' 
