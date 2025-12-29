SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_est_ink]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_est_ink
AS
SELECT     TOP (100) PERCENT dbo.v1bon___.bon__ref, dbo.v1off___.off__ref, dbo.v1kkl___.kpn__ref, dbo.v1kkl___.ink__ref, dbo.v1kkl___.klpmsref, dbo.v1bon___.kla__rpn, 
                      dbo.v1bon___.omschr__, dbo.v1eti___.klcod_fr
FROM         dbo.v1kkl___ INNER JOIN
                      dbo.v1eti___ ON dbo.v1kkl___.kpn__ref = dbo.v1eti___.kpn__ref INNER JOIN
                      dbo.v1off___ ON dbo.v1eti___.off__ref = dbo.v1off___.off__ref INNER JOIN
                      dbo.v1bon___ ON dbo.v1off___.bon__ref = dbo.v1bon___.bon__ref
ORDER BY dbo.v1bon___.bon__ref, dbo.v1off___.off__ref, dbo.v1kkl___.kpn__ref
' 
