SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProductJobCosts_byProduct_byJob]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlProductJobCosts_byProduct_byJob]
AS
SELECT estLabels.afg__ref, o.ord__ref, o.best_dat AS OrderDate, JobClockingDates.FirstClocking, JobClockingDates.LastClocking, estCOG.EST_COG, estPDD.EST_PDD, estLabels.EST_LABELS, 
    estNumberOfVersions.NuOfVersions, o.omschr__, o.kla__rpn, ISNULL(estLaminateCost.EstimatedCost, 0) AS EstimatedLaminateCost, ISNULL(estINK.EstimatedCost, 0) AS EstimatedInkCost
FROM order___ o LEFT JOIN
(
  SELECT off__ref, SUM(total___) AS EstimatedCost
  FROM v4kkst__
  WHERE rbk__ref = ''600110'' AND kst__srt = ''0''
  GROUP BY off__ref
) AS estINK ON o.ord__ref = estINK.off__ref LEFT OUTER JOIN
(
  SELECT v4etaf__.off__ref, SUM(v4etaf__.prys_peh * v4etaf__.bst___m2) AS EstimatedCost
  FROM v4etaf__ INNER JOIN
  drgers__ ON v4etaf__.drg__ref = drgers__.drg__ref INNER JOIN
  stdeap__ ON v4etaf__.etap_ref = stdeap__.etap_ref AND stdeap__.omschr__ LIKE ''%laminate%''
  GROUP BY v4etaf__.off__ref
) AS estLaminateCost ON o.ord__ref = estLaminateCost.off__ref LEFT OUTER JOIN
(
  SELECT off__ref, COUNT(off__ref) AS NuOfVersions
  FROM v4vrs___
  GROUP BY off__ref
) AS estNumberOfVersions ON o.ord__ref = estNumberOfVersions.off__ref LEFT OUTER JOIN
(
  SELECT off__ref, SUM(total___) AS EST_PDD
  FROM v4kkst__ 
  WHERE rbk__ref = ''760005'' AND kst__srt = ''0''
  GROUP BY off__ref
) AS estPDD ON o.ord__ref = estPDD.off__ref LEFT OUTER JOIN
(
  SELECT ord__ref, MIN(datum___) AS FirstClocking, MAX(datum___) AS LastClocking
  FROM hispnt__
  GROUP BY ord__ref
) AS JobClockingDates ON o.ord__ref = JobClockingDates.ord__ref LEFT OUTER JOIN
(
  SELECT off__ref, SUM(papier__ + papier_t + grdvb___ + grdvb__t) AS EST_COG
  FROM v4kkst__ 
  WHERE rbk__ref NOT IN (''760005'', ''910000'') AND kst__srt = ''0''
  GROUP BY off__ref
) AS estCOG ON o.ord__ref = estCOG.off__ref LEFT OUTER JOIN
(
  SELECT off__ref, afg__ref, SUM(oplage__) AS EST_LABELS
  FROM v4vrs___ 
  GROUP BY off__ref, afg__ref
) AS estLabels ON o.ord__ref = estLabels.off__ref

WHERE (estLabels.afg__ref <> '''') AND (JobClockingDates.FirstClocking IS NOT NULL) AND (o.kla__ref <> ''100109'')
' 
