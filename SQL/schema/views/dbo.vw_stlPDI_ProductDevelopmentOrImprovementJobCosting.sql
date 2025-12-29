SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPDI_ProductDevelopmentOrImprovementJobCosting]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlPDI_ProductDevelopmentOrImprovementJobCosting]
AS

SELECT jr.ProjectID, o.ord__ref, ISNULL(jr.TimesFellOffPress, 0) TimesFellOffPress, JobNonLunchClockings.FirstClockingDate, JobNonLunchClockings.LastClockingDate, ISNULL(JobNonLunchClockings.JobMinutes, 0) JobNonLunchMinutes,
MaterialCost                    = ACT_PAPE_COST + ACT_OTHM_COST, 
OutsideServicesCost             = ACT_OUTSIDE_COST, 
MachineCost                     = ACT_WAGE_COST + ACT_MACH_COST + ACT_OVER_COST, 
PO_Cost							= POs.PO_Cost,
ACT_TOT_COST                    = ACT_PAPE_COST + ACT_OTHM_COST + ACT_OUTSIDE_COST + ACT_WAGE_COST + ACT_MACH_COST + ACT_OVER_COST + ISNULL(POs.PO_Cost, 0), GrayBox.GrayBoxActualFeet, GrayBox.GrayBoxActualFeet * pdd.PDD / 1000.0 PDD  
FROM 
(
	SELECT pdi.ProjectID, jr.ord__ref, MAX(jr.TimesFellOffPress) TimesFellOffPress
	FROM stlPDI_ProductDevelopmentOrImprovement pdi JOIN 
	stlPDI_JobsRan jr ON pdi.ID = jr.stlPDI_ID 
	WHERE pdi.Deleted = 0 AND jr.Deleted = 0
	GROUP BY pdi.ProjectID, jr.ord__ref 
) jr LEFT JOIN
order___ AS o ON o.ord__ref = jr.ord__ref LEFT JOIN
vw_ProfitCostsEstimatedActual pcea ON pcea.ord__ref = o.ord__ref LEFT JOIN

(
SELECT ord__ref, MIN(c.datum___) FirstClockingDate, MAX(c.datum___) LastClockingDate, SUM(dbo.GetMinutesFromCERMTimeString(duur____)) JobMinutes 
FROM hispnt__ c LEFT JOIN 
wpakt___ a ON c.wp___ref = a.wp___ref AND c.akt__ref = a.akt__ref 
WHERE a.akt_oms_ NOT LIKE ''%Lunch%'' AND a.akt_oms_ NOT LIKE ''%Non-Job%'' 
GROUP BY ord__ref 
) JobNonLunchClockings ON o.ord__ref = JobNonLunchClockings.ord__ref  LEFT JOIN 
( 
	SELECT PO_det.ord__ref, SUM(PO_det.totbp_bm) PO_Cost 
	FROM grdbon__ AS PO INNER JOIN 
	grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
	GROUP BY PO_det.ord__ref 
) POs ON o.ord__ref = POs.ord__ref LEFT JOIN
(
	SELECT ord__ref, MAX(GrayBoxActualFeet) AS GrayBoxActualFeet
	FROM 
	(
		SELECT ord__ref, art__ref, SUM(aantal__) AS GrayBoxActualFeet
		FROM plcrol__
		WHERE wp___ref IN  /* NOTE: soort___ (f, g, h) is mat type, Facesheet, liner etc.  */
		(
		   SELECT wp___ref
		   FROM werkpo__
		   WHERE kenmerk_ IN (''Press'', ''Cohesio'')
		) 
		GROUP BY ord__ref, art__ref
	) AS GB
	GROUP BY ord__ref
) AS GrayBox ON o.ord__ref = GrayBox.ord__ref LEFT JOIN
(
	SELECT StartDate, EndDate, PDD
	FROM stlPDD 
) pdd ON pdd.StartDate <= o.best_dat AND o.best_dat <= ISNULL(pdd.EndDate, ''1/1/2049'')

' 
