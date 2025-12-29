SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMRSRpt]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlMRSRpt
AS
SELECT        ve.off__ref, vg.dg___ref, vg.dg___vnr, ve.tedrkdto, a.omschr__, vp.vpak_oms, ve.off__ref + ''_'' + vg.dg___vnr AS pass
FROM            dbo.v4eti___ AS ve LEFT OUTER JOIN
                         dbo.v4off___ AS vo ON ve.off__ref = vo.off__ref LEFT OUTER JOIN
                         dbo.afgprd__ AS a ON vo.prd__ref = a.prd__ref LEFT OUTER JOIN
                         dbo.v4vpak__ AS vp ON ve.off__ref = vp.off__ref LEFT OUTER JOIN
                         dbo.v4edg___ AS vg ON ve.off__ref = vg.off__ref
' 
