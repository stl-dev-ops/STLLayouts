SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMRSCoatings]'))
EXEC dbo.sp_executesql @statement = N'/*and vi.off__ref = ''507139''
order by vi.dg___vnr, klr___nr*/
CREATE VIEW dbo.vw_stlMRSCoatings
AS
SELECT     vi.off__ref, a.art__ref, a.art_oms1, r.reserve_, vi.dg___vnr, vk.klr___nr, vi.off__ref + ''_'' + vi.dg___vnr AS pass
FROM        dbo.v4kkl___ AS vk INNER JOIN
                  dbo.v4edg___ AS vi ON vk.kpn__ref = vi.kpn__ref AND vk.dg___ref = vi.dg___ref INNER JOIN
                  dbo.artiky__ AS a ON vk.klpmsref = a.art__ref LEFT OUTER JOIN
                  dbo.resgrd__ AS r ON vk.klpmsref = r.art__ref AND r.ord__ref = vi.off__ref
WHERE     (vk.klpmsref <> '''')
' 
