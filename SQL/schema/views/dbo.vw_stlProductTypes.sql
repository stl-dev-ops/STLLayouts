SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProductTypes]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlProductTypes
AS
SELECT        dbo.afgprd__.prd__ref, dbo.afgprd__.uitgeput, dbo.afgprd__.prd__rpn, dbo.afgprd__.omschr__, dbo.prodkl__.omschr__ AS ProductGroup, LayoutIDs, Layouts
FROM            dbo.afgprd__ LEFT OUTER JOIN
                         dbo.prodkl__ ON dbo.prodkl__.prkl_ref = dbo.afgprd__.prkl_ref LEFT OUTER JOIN
                             (SELECT        prd__ref, CAST(STUFF
                                                             ((SELECT        N'', '' + Layout
                                                                 FROM            vw_stlProductTypeDefaultLayouts AS DefaultLayout
                                                                 WHERE        DefaultLayout.prd__ref = DefaultLayouts.prd__ref AND DefaultLayout.Layout <> ''''
                                                                 ORDER BY Layout FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(1000)) Layouts
                               FROM            vw_stlProductTypeDefaultLayouts AS DefaultLayouts
                               GROUP BY prd__ref) AS ProductGroupDefaultLayouts ON ProductGroupDefaultLayouts.prd__ref = dbo.afgprd__.prd__ref LEFT OUTER JOIN
                             (SELECT        prd__ref, CAST(STUFF
                                                             ((SELECT        N'', '' + LayoutID
                                                                 FROM            vw_stlProductTypeDefaultLayouts AS DefaultLayoutID
                                                                 WHERE        DefaultLayoutID.prd__ref = DefaultLayoutIDs.prd__ref AND DefaultLayoutID.Layout <> ''''
                                                                 ORDER BY LayoutID FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(1000)) LayoutIDs
                               FROM            vw_stlProductTypeDefaultLayouts AS DefaultLayoutIDs
                               GROUP BY prd__ref) AS ProductGroupDefaultLayoutIDs ON ProductGroupDefaultLayoutIDs.prd__ref = dbo.afgprd__.prd__ref
' 
