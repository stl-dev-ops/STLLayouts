SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProductTypeDefaultLayouts]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlProductTypeDefaultLayouts
AS
SELECT        prd__ref, LayoutID, Layout
FROM            (SELECT        dbo.afgprd__.prd__ref, CASE WHEN bonv6pb1 = ''Y'' THEN layv6pb1 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb1 = ''Y'' THEN ISNULL(L1.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ LEFT OUTER JOIN
                                                    dbo.prodkl__ ON dbo.prodkl__.prkl_ref = dbo.afgprd__.prkl_ref LEFT OUTER JOIN
                                                    dbo.layout__ AS L1 ON L1.layoutsp = ''P0'' AND L1.layoutnr = dbo.afgprd__.layv6pb1
                          UNION
                          SELECT        afgprd___14.prd__ref, CASE WHEN bonv6pb2 = ''Y'' THEN layv6pb2 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb2 = ''Y'' THEN ISNULL(L2.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___14 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___14 ON prodkl___14.prkl_ref = afgprd___14.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L2 ON L2.layoutsp = ''P0'' AND L2.layoutnr = afgprd___14.layv6pb2
                          UNION
                          SELECT        afgprd___13.prd__ref, CASE WHEN bonv6pb3 = ''Y'' THEN layv6pb3 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb3 = ''Y'' THEN ISNULL(L3.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___13 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___13 ON prodkl___13.prkl_ref = afgprd___13.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L3 ON L3.layoutsp = ''P0'' AND L3.layoutnr = afgprd___13.layv6pb3
                          UNION
                          SELECT        afgprd___12.prd__ref, CASE WHEN bonv6pb4 = ''Y'' THEN layv6pb4 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb4 = ''Y'' THEN ISNULL(L4.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___12 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___12 ON prodkl___12.prkl_ref = afgprd___12.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L4 ON L4.layoutsp = ''P0'' AND L4.layoutnr = afgprd___12.layv6pb4
                          UNION
                          SELECT        afgprd___11.prd__ref, CASE WHEN bonv6pb5 = ''Y'' THEN layv6pb5 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb5 = ''Y'' THEN ISNULL(L5.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___11 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___11 ON prodkl___11.prkl_ref = afgprd___11.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L5 ON L5.layoutsp = ''P0'' AND L5.layoutnr = afgprd___11.layv6pb5
                          UNION
                          SELECT        afgprd___10.prd__ref, CASE WHEN bonv6pb6 = ''Y'' THEN layv6pb6 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb6 = ''Y'' THEN ISNULL(L6.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___10 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___10 ON prodkl___10.prkl_ref = afgprd___10.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L6 ON L6.layoutsp = ''P0'' AND L6.layoutnr = afgprd___10.layv6pb6
                          UNION
                          SELECT        afgprd___9.prd__ref, CASE WHEN bonv6pb7 = ''Y'' THEN layv6pb7 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb7 = ''Y'' THEN ISNULL(L7.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___9 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___9 ON prodkl___9.prkl_ref = afgprd___9.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L7 ON L7.layoutsp = ''P0'' AND L7.layoutnr = afgprd___9.layv6pb7
                          UNION
                          SELECT        afgprd___8.prd__ref, CASE WHEN bonv6pb8 = ''Y'' THEN layv6pb8 ELSE '''' END AS LayoutID, CASE WHEN bonv6pb8 = ''Y'' THEN ISNULL(L8.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___8 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___8 ON prodkl___8.prkl_ref = afgprd___8.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L8 ON L8.layoutsp = ''P0'' AND L8.layoutnr = afgprd___8.layv6pb8
                          UNION
                          SELECT        afgprd___7.prd__ref, CASE WHEN bonv6vo1 = ''Y'' THEN layv6vo1 ELSE '''' END AS LayoutID, CASE WHEN bonv6vo1 = ''Y'' THEN ISNULL(L9.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___7 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___7 ON prodkl___7.prkl_ref = afgprd___7.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L9 ON L9.layoutsp = ''P3'' AND L9.layoutnr = afgprd___7.layv6vo1
                          UNION
                          SELECT        afgprd___6.prd__ref, CASE WHEN bonv6vo2 = ''Y'' THEN layv6vo2 ELSE '''' END AS LayoutID, CASE WHEN bonv6vo2 = ''Y'' THEN ISNULL(L10.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___6 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___6 ON prodkl___6.prkl_ref = afgprd___6.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L10 ON L10.layoutsp = ''P3'' AND L10.layoutnr = afgprd___6.layv6vo2
                          UNION
                          SELECT        afgprd___5.prd__ref, CASE WHEN bonv6vo3 = ''Y'' THEN layv6vo3 ELSE '''' END AS LayoutID, CASE WHEN bonv6vo3 = ''Y'' THEN ISNULL(L11.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___5 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___5 ON prodkl___5.prkl_ref = afgprd___5.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L11 ON L11.layoutsp = ''P3'' AND L11.layoutnr = afgprd___5.layv6vo3
                          UNION
                          SELECT        afgprd___4.prd__ref, CASE WHEN bonv6bij = ''Y'' THEN layv6bpr ELSE '''' END AS LayoutID, CASE WHEN bonv6bij = ''Y'' THEN ISNULL(L12.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___4 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___4 ON prodkl___4.prkl_ref = afgprd___4.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L12 ON L12.layoutsp = ''P1'' AND L12.layoutnr = afgprd___4.layv6bpr
                          UNION
                          SELECT        afgprd___3.prd__ref, CASE WHEN bonv6bij = ''Y'' THEN layv6b_e ELSE '''' END AS LayoutID, CASE WHEN bonv6bij = ''Y'' THEN ISNULL(L13.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___3 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___3 ON prodkl___3.prkl_ref = afgprd___3.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L13 ON L13.layoutsp = ''P1'' AND L13.layoutnr = afgprd___3.layv6b_e
                          UNION
                          SELECT        afgprd___2.prd__ref, CASE WHEN bonv6bij = ''Y'' THEN layv6b2e ELSE '''' END AS LayoutID, CASE WHEN bonv6bij = ''Y'' THEN ISNULL(L14.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___2 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___2 ON prodkl___2.prkl_ref = afgprd___2.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L14 ON L14.layoutsp = ''P1'' AND L14.layoutnr = afgprd___2.layv6b2e
                          UNION
                          SELECT        afgprd___1.prd__ref, CASE WHEN boncheck = ''Y'' THEN laycheck ELSE '''' END AS LayoutID, CASE WHEN boncheck = ''Y'' THEN ISNULL(L15.omschrij, '''') ELSE '''' END AS Layout
                          FROM            dbo.afgprd__ AS afgprd___1 LEFT OUTER JOIN
                                                   dbo.prodkl__ AS prodkl___1 ON prodkl___1.prkl_ref = afgprd___1.prkl_ref LEFT OUTER JOIN
                                                   dbo.layout__ AS L15 ON L15.layoutsp = ''P4'' AND L15.layoutnr = afgprd___1.laycheck) AS Layouts
WHERE        (LayoutID <> '''')
' 
