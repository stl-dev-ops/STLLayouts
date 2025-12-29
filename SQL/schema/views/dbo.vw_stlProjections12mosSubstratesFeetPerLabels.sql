SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProjections12mosSubstratesFeetPerLabels]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlProjections12mosSubstratesFeetPerLabels]
AS
SELECT        [prkl_ref], [prfm_ref], [drg__ref], [drg__ref2], SUM([JobFeet]) AS Feet, SUM([produced_lbls]) AS Labels
FROM            (SELECT        dbo.order___.ord__ref, dbo.prodkl__.prkl_ref, CASE WHEN isnull(dbo.prodfm__.prfm_ref, '''') = ''0000000014'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') 
                                                    = ''0000000002'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') = ''0000000016'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') 
                                                    = ''0000000005'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') = ''0000000003'' THEN dbo.prodfm__.prfm_ref ELSE '''' END AS prfm_ref, Substrate.drg__ref, 
                                                    [2ndSubstrate].drg__ref AS drg__ref2, JobFeet, produced_lbls
                          FROM            (SELECT        incent__.ord__ref, JobFeet, produced_lbls
                                                    FROM            incent__ JOIN
                                                                                  (SELECT        ord__ref, MAX(mFeet) JobFeet
                                                                                    FROM            incent__ UNPIVOT (mFeet FOR Feet IN (press_consumed_feet, press_at_feet, rewin_at_feet, cohes_at_feet, coati_at_feet)) AS u
                                                                                    GROUP BY ord__ref) AS maximumFeet ON maximumFeet.ord__ref = incent__.ord__ref) AS LabelsNFeet INNER JOIN
                                                    dbo.order___ INNER JOIN
                                                    dbo.afgart__ INNER JOIN
                                                    dbo.bstlyn__ ON dbo.afgart__.afg__ref = dbo.bstlyn__.afg__ref INNER JOIN
                                                    dbo.prodfm__ ON dbo.afgart__.prfm_ref = dbo.prodfm__.prfm_ref INNER JOIN
                                                    dbo.prodkl__ ON dbo.afgart__.prkl_ref = dbo.prodkl__.prkl_ref ON dbo.order___.ord__ref = dbo.bstlyn__.ord__ref INNER JOIN
                                                        (SELECT        off__ref, drg__ref
                                                          FROM            dbo.v1eti___) AS Substrate ON dbo.order___.off__ref = Substrate.off__ref ON LabelsNFeet.ord__ref = dbo.order___.ord__ref LEFT OUTER JOIN
                                                        (SELECT        off__ref, drg__ref
                                                          FROM            dbo.v1etaf__
                                                          WHERE        (drg__ref <> N'''')) AS [2ndSubstrate] ON dbo.order___.off__ref = [2ndSubstrate].off__ref
                          WHERE        (dbo.order___.kla__ref <> ''100208'') AND (dbo.order___.best_dat >= DATEADD(Year, - 1, GETDATE()))) AS derivedtbl_1
GROUP BY [prkl_ref], [prfm_ref], [drg__ref], [drg__ref2]
' 
