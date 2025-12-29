SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ActPressRolls]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_ActPressRolls
AS
SELECT     ord__ref, COUNT(ord__ref) AS ActPressRolls
FROM         dbo.hlfvrd__
WHERE     (wp___ref LIKE ''5%'') AND (aant__in > 0)
GROUP BY ord__ref
' 
