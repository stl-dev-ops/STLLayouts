SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_pressRollWasteGrouped]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_pressRollWasteGrouped
AS
SELECT        hlf__ref, ord__ref
FROM            dbo.pressRollWaste
GROUP BY hlf__ref, ord__ref
' 
