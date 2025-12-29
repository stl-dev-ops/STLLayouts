SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMRSPackaging]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlMRSPackaging
AS
SELECT     off__ref, art__ref, aantale_, art__rpn, art_oms1
FROM        (SELECT     v.off__ref, v.art_ref1 AS art__ref, v.aantale1 AS aantale_, a.art__rpn, a.art_oms1
                   FROM        dbo.v4vpak__ AS v INNER JOIN
                                     dbo.artiky__ AS a ON v.art_ref1 = a.art__ref
                   UNION
                   SELECT     v.off__ref, v.art_ref2 AS art__ref, v.aantale2 AS aantale_, a.art__rpn, a.art_oms1
                   FROM        dbo.v4vpak__ AS v INNER JOIN
                                     dbo.artiky__ AS a ON v.art_ref2 = a.art__ref
                   UNION
                   SELECT     v.off__ref, v.art_ref3 AS art__ref, v.aantale3, a.art__rpn AS aantale_, a.art_oms1
                   FROM        dbo.v4vpak__ AS v INNER JOIN
                                     dbo.artiky__ AS a ON v.art_ref3 = a.art__ref
                   UNION
                   SELECT     v.off__ref, v.art_ref4 AS art__ref, v.aantale4, a.art__rpn AS aantale_, a.art_oms1
                   FROM        dbo.v4vpak__ AS v INNER JOIN
                                     dbo.artiky__ AS a ON v.art_ref4 = a.art__ref
                   UNION
                   SELECT     v.off__ref, v.art_ref5 AS art__ref, v.aantale5, a.art__rpn AS aantale_, a.art_oms1
                   FROM        dbo.v4vpak__ AS v INNER JOIN
                                     dbo.artiky__ AS a ON v.art_ref5 = a.art__ref) AS j
' 
