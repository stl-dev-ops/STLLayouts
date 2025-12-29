SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_RewindBrickCount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_RewindBrickCount
AS
SELECT     ord__ref, COUNT(rewindBrickID) AS RewindBrickCount
FROM         dbo.rewindBrick
GROUP BY ord__ref
' 
