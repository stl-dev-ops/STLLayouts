SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ActSpoolCount]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_ActSpoolCount
AS
SELECT     dbo.spoolJob.ord__ref, COUNT(dbo.spool.spoolID) AS spoolCount
FROM         dbo.spoolJob INNER JOIN
                      dbo.spool ON dbo.spoolJob.spoolJobID = dbo.spool.spoolJobID
GROUP BY dbo.spoolJob.ord__ref
' 
