SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMRSMaterials]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlMRSMaterials
AS
SELECT        TOP (100) PERCENT dg___vnr, FaceOrLiner, art__ref, art__rpn, art_oms1, Footage, off__ref, off__ref + ''_'' + dg___vnr AS pass
FROM            (SELECT        ''001'' AS dg___vnr, 1 AS FaceOrLiner, ve.art__ref, a.art__rpn, a.art_oms1, ve.tedrkdto AS Footage, ve.off__ref
                          FROM            dbo.v4eti___ AS ve INNER JOIN
                                                    dbo.artiky__ AS a ON ve.art__ref = a.art__ref
                          UNION
                          SELECT        ve.dg___vnr, 2 AS FaceOrLiner, vf.art__ref, a.art__rpn, a.art_oms1, vf.vrbpap__ AS Footage, vf.off__ref
                          FROM            dbo.v4etaf__ AS vf INNER JOIN
                                                   dbo.v4edg___ AS ve ON vf.dg___ref = ve.dg___ref AND vf.off__ref = ve.off__ref AND vf.kpn__ref = ve.kpn__ref INNER JOIN
                                                   dbo.artiky__ AS a ON vf.art__ref = a.art__ref
                          WHERE        (vf.art__ref <> '''') AND (vf.type____ IN (''3'', ''b'', ''6''))) AS mats
' 
