SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_q001_utilisation]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_q001_utilisation
AS
SELECT     (SELECT     MAX(wp___ref) AS Expr1
                       FROM          dbo.wpakt___
                       WHERE      (plpl_ref = dbo.planwk__.plpl_ref)) AS wp___ref, plpl_ref, ''20'' + jaar_ref AS jaar_ref, weeknum_, LEFT(capacite, 3) * 60 + RIGHT(capacite, 2) 
                      AS minutes
FROM         dbo.planwk__
' 
