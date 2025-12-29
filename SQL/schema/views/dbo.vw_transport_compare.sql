SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_transport_compare]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_transport_compare
AS
SELECT     MAX(dbo.hafgfk__.dok__dat) AS datumfrom, MAX(dbo.hafgfk__.dok__dat) AS datumto, dbo.hafgfk__.kla__ref, dbo.hafgfk__.kla__rpn, dbo.bstlyn__.ord__ref, 
                      SUM(dbo.hafgfl__.tota__vm) AS sales,
                          (SELECT     SUM(tot___vm) AS Expr1
                            FROM          dbo.hakpfl__
                            WHERE      (fakl_ref IN
                                                       (SELECT     fakl_ref
                                                         FROM          dbo.hakpfr__
                                                         WHERE      (arek_ref = ''600020''))) AND (ord__ref = dbo.bstlyn__.ord__ref)) AS Cost
FROM         dbo.hafgfl__ LEFT OUTER JOIN
                      dbo.bstlyn__ ON dbo.hafgfl__.fak__ref = dbo.bstlyn__.fak__ref LEFT OUTER JOIN
                      dbo.hafgfk__ ON dbo.hafgfl__.fak__ref = dbo.hafgfk__.fak__ref
WHERE     (dbo.hafgfl__.fpl__ref = ''100003'') AND (dbo.bstlyn__.ord__ref <> '''')
GROUP BY dbo.hafgfk__.kla__ref, dbo.hafgfk__.kla__rpn, dbo.bstlyn__.ord__ref
' 
