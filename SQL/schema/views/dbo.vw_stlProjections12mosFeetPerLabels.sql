SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProjections12mosFeetPerLabels]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlProjections12mosFeetPerLabels]
AS
SELECT        [prkl_ref], [prfm_ref], SUM([JobFeet]) AS Feet, SUM([produced_lbls]) AS Labels
FROM            (SELECT        dbo.order___.ord__ref, dbo.prodkl__.prkl_ref, CASE WHEN isnull(dbo.prodfm__.prfm_ref, '''') = ''0000000014'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') 
= ''0000000002'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') = ''0000000016'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') 
= ''0000000005'' THEN dbo.prodfm__.prfm_ref WHEN isnull(dbo.prodfm__.prfm_ref, '''') = ''0000000003'' THEN dbo.prodfm__.prfm_ref ELSE '''' END AS prfm_ref, 
JobFeet, produced_lbls
FROM            (SELECT        incent__.ord__ref, JobFeet, produced_lbls
FROM            incent__ JOIN
(SELECT        ord__ref, MAX(mFeet) JobFeet
FROM            incent__ UNPIVOT (mFeet FOR Feet IN (press_consumed_feet, press_at_feet, rewin_at_feet, cohes_at_feet, coati_at_feet)) AS u
GROUP BY ord__ref) AS maximumFeet ON maximumFeet.ord__ref = incent__.ord__ref) AS LabelsNFeet INNER JOIN
dbo.order___ INNER JOIN
dbo.afgart__ INNER JOIN
dbo.bstlyn__ ON dbo.afgart__.afg__ref = dbo.bstlyn__.afg__ref INNER JOIN
dbo.prodfm__ ON dbo.afgart__.prfm_ref = dbo.prodfm__.prfm_ref INNER JOIN
dbo.prodkl__ ON dbo.afgart__.prkl_ref = dbo.prodkl__.prkl_ref ON dbo.order___.ord__ref = dbo.bstlyn__.ord__ref 
ON LabelsNFeet.ord__ref = dbo.order___.ord__ref 
WHERE        (dbo.order___.kla__ref <> ''100208'') AND (dbo.order___.best_dat >= DATEADD(Year, - 1, GETDATE()))) AS derivedtbl_1
GROUP BY [prkl_ref], [prfm_ref]
' 
