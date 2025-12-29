SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_RewindBadPressQty]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_RewindBadPressQty
AS
SELECT     ord__ref, CAST(SUM(CASE WHEN ((etiket_h + tssnaf_h) * flatrolls) = 0 THEN 0 ELSE ((pressBadMaterialFt + badRowsMaterialFt) * 12) / (etiket_h + tssnaf_h) 
                      * flatrolls END) AS int) AS RewindBadPressQty
FROM         dbo.pressRollWaste
GROUP BY ord__ref
' 
