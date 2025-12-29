SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPenguin_JobsCreatedByProject]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlPenguin_JobsCreatedByProject]
AS


SELECT v.rowid, jr.stlPDI_ID,
ProjectID = stl_RnD.antw_txt, v.off__ref ord__ref, v.afg__ref, jr.TimesFellOffPress, omschr__, pdClockingsLessLunch.PD_Hours, 

MaterialCost        = ACT_PAPE_COST + ACT_OTHM_COST, 
OutsideServicesCost = ACT_OUTSIDE_COST, 
MachineCost         = ACT_WAGE_COST + ACT_MACH_COST + ACT_OVER_COST, 
PO_Cost				= ISNULL(POs.PO_Cost, 0), 
ACT_TOT_COST		= ACT_TOT_COST + ISNULL(POs.PO_Cost, 0)
 
FROM v4vrs___ v JOIN 
( 
	SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt 
	FROM gegdet__ 
	WHERE tabname_ = ''afgart__'' AND vrg__ref = ''000019'' 
) stl_RnD ON v.afg__ref = stl_RnD.det__ref LEFT JOIN 
(
	SELECT pdi.ID stlPDI_ID, jpid.det__ref ord__ref, 0 TimesFellOffPress, jpid.antw_txt ProjectID 
	FROM gegdet__ jpid JOIN 
	stlPDI_ProductDevelopmentOrImprovement pdi ON jpid.antw_txt = pdi.ProjectID 
	WHERE jpid.tabname_ = ''v4bon___'' AND jpid.vrg__ref = ''000084'' 
) jr ON v.off__ref = jr.ord__ref LEFT JOIN 
(
	SELECT DISTINCT ord__ref, omschr__, ACT_PAPE_COST, ACT_OTHM_COST, ACT_OUTSIDE_COST, ACT_WAGE_COST, ACT_MACH_COST, ACT_OVER_COST, ACT_TOT_COST  
	FROM vw_ProfitCostsEstimatedActual
) pcea ON v.off__ref = pcea.ord__ref LEFT JOIN 
( 
	SELECT c.ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(c.duur____)) / 60.0 PD_Hours 
	FROM hispnt__ c JOIN 
	wpakt___ a ON c.wp___ref = a.wp___ref AND c.akt__ref = a.akt__ref 
	WHERE a.akt_oms_ NOT LIKE ''%lunch%'' 
	GROUP BY c.ord__ref 
) pdClockingsLessLunch ON v.off__ref = pdClockingsLessLunch.ord__ref LEFT JOIN 
( 
	SELECT PO_det.ord__ref, SUM(PO_det.totbp_bm) PO_Cost 
	FROM grdbon__ AS PO INNER JOIN 
	grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
	GROUP BY PO_det.ord__ref 
) POs ON v.off__ref = POs.ord__ref


' 
