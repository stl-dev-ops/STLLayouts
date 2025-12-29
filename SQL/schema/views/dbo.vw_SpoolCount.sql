SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_SpoolCount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_SpoolCount
AS
SELECT     TOP (100) PERCENT dbo.spoolJob.ord__ref, COUNT(dbo.spool.spoolID) AS Spools
FROM         dbo.spool INNER JOIN
                      dbo.spoolJob ON dbo.spool.spoolJobID = dbo.spoolJob.spoolJobID
GROUP BY dbo.spoolJob.ord__ref
ORDER BY dbo.spoolJob.ord__ref DESC
' 
