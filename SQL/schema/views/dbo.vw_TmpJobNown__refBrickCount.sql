SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_TmpJobNown__refBrickCount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_TmpJobNown__refBrickCount
AS
SELECT        dbo.pressRollWaste.ord__ref, dbo.pressRollWaste.wn___ref, COUNT(dbo.rewindBrick.rewindBrickID) AS CountOfrewindBrickID
FROM            dbo.pressRollWaste INNER JOIN
                         dbo.rewindBrick ON dbo.pressRollWaste.rewindBrickID = dbo.rewindBrick.rewindBrickID
GROUP BY dbo.pressRollWaste.ord__ref, dbo.pressRollWaste.wn___ref
' 
