SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPressRewindFtLabels]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlPressRewindFtLabels
AS
SELECT        hlf__ref, MAX(pressGoodLabels) AS PressGoodLabels, SUM(actualGoodLabels) AS sumActualGoodLabels, MAX(aantm_in) AS PressGoodFt, SUM(actualGoodFt) AS sumActualGoodFt, SUM(rewindWasteFt) AS sumRewindWasteFt,
                          SUM(pressBadMaterialFt) AS sumPressBadMaterialFt, SUM(badRowsMaterialFt) AS sumBadRowsMaterialFt
FROM            dbo.pressRollWaste
GROUP BY hlf__ref
' 
