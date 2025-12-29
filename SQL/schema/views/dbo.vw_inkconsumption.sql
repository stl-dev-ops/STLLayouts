SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_inkconsumption]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_inkconsumption
AS
SELECT     dbo.v4kkl___.kpn__ref, dbo.v4kkl___.klr___nr, dbo.v4kkl___.ink__ref, dbo.v4kkl___.inkvrbpc, dbo.v4eti___.tedrk_to, dbo.v4eti___.prs__ref, dbo.v4eti___.breedte_, 
                      dbo.v4eti___.off__ref, dbo.eprsiv__.ink__vrb, dbo.v4eti___.tedrk_to * 12 * dbo.v4eti___.breedte_ / 1000 AS MSI, 
                      dbo.v4eti___.tedrk_to * 12 * dbo.v4eti___.breedte_ / 1000 * dbo.v4kkl___.inkvrbpc / 100 AS MSIPRC, 
                      dbo.v4eti___.tedrk_to * 12 * dbo.v4eti___.breedte_ / 1000 * dbo.v4kkl___.inkvrbpc / 100 * dbo.eprsiv__.ink__vrb AS OZMSI, 
                      dbo.v4eti___.tedrk_to * 12 * dbo.v4eti___.breedte_ / 1000 * dbo.v4kkl___.inkvrbpc / 100 * dbo.eprsiv__.ink__vrb * 0.0625 AS LBSMSI, dbo.eprsiv__.inkmnvrb, 
                      dbo.v4kkl___.klpmsref
FROM         dbo.v4kkl___ INNER JOIN
                      dbo.v4eti___ ON dbo.v4kkl___.kpn__ref = dbo.v4eti___.kpn__ref INNER JOIN
                      dbo.eprsiv__ ON dbo.v4kkl___.ink__ref = dbo.eprsiv__.ink__ref AND dbo.v4eti___.prs__ref = dbo.eprsiv__.prs__ref
' 
