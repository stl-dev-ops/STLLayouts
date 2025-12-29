SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ActRewindCount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_ActRewindCount
AS
SELECT     ord__ref, COUNT(rewindBrickID) AS BrickCount
FROM         dbo.rewindBrick
GROUP BY ord__ref
' 
