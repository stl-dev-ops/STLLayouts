SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLBricksPerSpoolJob]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLBricksPerSpoolJob
AS
SELECT        sj.spoolJobID, sj.ord__ref, COUNT(sj.ord__ref) AS NumberOfBricks
FROM            dbo.spoolJob AS sj INNER JOIN
                         dbo.brick AS b ON sj.spoolJobID = b.spoolJobID
GROUP BY sj.spoolJobID, sj.ord__ref
' 
