SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLLastSpoolQty]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLLastSpoolQty
AS
SELECT     TOP (100) PERCENT b.afg__ref, MAX(dbo.spool.Qty) * .9 AS LastSpoolQty
FROM         dbo.bstlyn__ AS b INNER JOIN
                      dbo.spoolJob ON b.ord__ref = dbo.spoolJob.ord__ref INNER JOIN
                      dbo.spool ON dbo.spoolJob.spoolJobID = dbo.spool.spoolJobID
WHERE     (b.ord__ref <> '''') AND (b.ord__ref IN
                          (SELECT     MAX(dbo.bstlyn__.ord__ref) AS Expr1
                            FROM          dbo.bstlyn__ INNER JOIN
                                                   dbo.rewindBrick ON dbo.bstlyn__.ord__ref = dbo.rewindBrick.ord__ref
                            WHERE      (dbo.bstlyn__.afg__ref = b.afg__ref) AND (dbo.bstlyn__.ord__ref <> '''')))
GROUP BY b.afg__ref
ORDER BY b.afg__ref
' 
