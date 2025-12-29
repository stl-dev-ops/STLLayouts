SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_SpoolWasteQty]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_SpoolWasteQty
AS
SELECT     dbo.spoolJob.ord__ref, SUM(dbo.waste.qty) AS SpoolWasteQty
FROM         dbo.waste INNER JOIN
                      dbo.spoolJob ON dbo.waste.spoolJobID = dbo.spoolJob.spoolJobID
GROUP BY dbo.spoolJob.ord__ref
' 
