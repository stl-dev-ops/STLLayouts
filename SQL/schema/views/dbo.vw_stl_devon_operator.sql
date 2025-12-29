SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_operator]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_operator
AS
SELECT     TOP (100) PERCENT ord__ref, wn___ref, SUM(totam_in) AS TotalFt, SUM(aantm_in) AS TotalGdFt,
                          (SELECT     SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS Expr1
                            FROM          dbo.hispnt__
                            WHERE      (ord__ref = dbo.hlfvrd__.ord__ref) AND (wn___ref = dbo.hlfvrd__.wn___ref)
                            GROUP BY ord__ref, wn___ref) AS Mins,
                          (SELECT     MAX(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__
                            WHERE      (ord__ref = dbo.hlfvrd__.ord__ref)) AS FromShipDate,
                          (SELECT     MAX(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___1
                            WHERE      (ord__ref = dbo.hlfvrd__.ord__ref)) AS ToShipDate
FROM         dbo.hlfvrd__
GROUP BY ord__ref, wn___ref
ORDER BY ord__ref DESC, wn___ref DESC
' 
