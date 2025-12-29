SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_prodquantity]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_prodquantity]
AS
SELECT     dbo.bstlyn__.lyn__ref, dbo.bstlyn__.b_aantal, dbo.afgart__.off1_ref, dbo.afgart__.afg__ref, dbo.bstlyn__.vrz__tst, dbo.v1eti___.off__ref, dbo.v1eti___.etiket_b, 
                      dbo.v1eti___.etiket_h, dbo.v1eti___.tssnaf_b, dbo.v1eti___.tssnaf_h, dbo.v1eti___.aantal_h, dbo.v1eti___.aantal_b, dbo.v1off___.user____, dbo.v1off___.prd__ref, 
                      dbo.afgprd__.prd__ref AS Expr1, dbo.afgprd__.omschr__, dbo.afgprd__.taal___1, dbo.afgprd__.taal___2, dbo.afgprd__.taal___3, dbo.afgprd__.taal___4, 
                      dbo.afgprd__.taal___5, dbo.afgprd__.taal___6, dbo.afgprd__.taal___7, dbo.afgprd__.taal___8, dbo.afgprd__.taal___9
FROM         dbo.afgart__ INNER JOIN
                      dbo.v1eti___ ON dbo.afgart__.off1_ref = dbo.v1eti___.off__ref INNER JOIN
                      dbo.v1off___ ON dbo.v1eti___.off__ref = dbo.v1off___.off__ref INNER JOIN
                      dbo.afgprd__ ON dbo.v1off___.prd__ref = dbo.afgprd__.prd__ref RIGHT OUTER JOIN
                      dbo.bstlyn__ ON dbo.afgart__.afg__ref = dbo.bstlyn__.afg__ref
WHERE     (dbo.bstlyn__.vrz__tst <> N''Y'')
' 
