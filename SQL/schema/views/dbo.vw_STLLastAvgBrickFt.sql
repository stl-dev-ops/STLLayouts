SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLLastAvgBrickFt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLLastAvgBrickFt
AS
SELECT     TOP (100) PERCENT b.afg__ref, AVG(dbo.rewindBrick.qtyFt) AS LastAvgBrickFt
FROM         dbo.bstlyn__ AS b INNER JOIN
                      dbo.rewindBrick ON b.ord__ref = dbo.rewindBrick.ord__ref
WHERE     (b.ord__ref <> '''') AND (b.ord__ref IN
                          (SELECT     MAX(dbo.bstlyn__.ord__ref) AS Expr1
                            FROM          dbo.bstlyn__ INNER JOIN
                                                   dbo.rewindBrick AS rewindBrick_1 ON dbo.bstlyn__.ord__ref = rewindBrick_1.ord__ref
                            WHERE      (dbo.bstlyn__.afg__ref = b.afg__ref) AND (dbo.bstlyn__.ord__ref <> '''')))
GROUP BY b.afg__ref
ORDER BY b.afg__ref
' 
