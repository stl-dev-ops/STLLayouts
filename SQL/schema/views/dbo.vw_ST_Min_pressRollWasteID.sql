SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ST_Min_pressRollWasteID]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_ST_Min_pressRollWasteID
AS
SELECT        MIN(pressRollWasteID) AS Min_pressRollWasteID, hlf__ref, COUNT(hlf__ref) AS Expr1
FROM            dbo.pressRollWaste
GROUP BY hlf__ref
' 
