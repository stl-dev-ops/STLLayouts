SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlDieReportWithRemovalDetails]'))
EXEC dbo.sp_executesql @statement = N'




CREATE VIEW [dbo].[vw_stlDieReportWithRemovalDetails]
AS
SELECT  
[DieID]          = die.stns_ref, 
[DieKeyword]     = die.stns_rpn, 
[SKUID]          = sku.arthdref,
[SKUCreated]     = sku.crea_dat , 
[LocationID]     = sku.vak__ref,
[Location]       = loc.kommen_1, 
[Revolutions]    = sku.teller__, 
[LifeExpectancy] = sku.tellermx, 
[JobCount]       = ISNULL(skuJobs.Jobs, 0), 
[Cost]           = ISNULL(PO.prof__bm, 0), 
[EndOfLife]      = sku.uitgeput, 
[DieRemovalDate] = L.RemovalDate, 
[OperatorID]	 = L.Operator_wn___ref, 
[OperatorName]	 = Operator.OperatorName,
[ReasonID]		 = L.ReasonID,
[Reason]		 = stlDieRemovalReasons.Reason, 
[ApprovalID]	 = L.Approval_wn___ref,
[ApprovalName]	 = ApprovalName.ApprovalName,
[Deleted]        = L.Deleted

FROM  stnspr__ AS die JOIN 
arthld__ AS sku ON die.stns_ref = sku.arth_ref LEFT JOIN 
(
	SELECT arthdref, COUNT(ord__ref) AS Jobs 
	FROM hlpreg__ 
	GROUP BY arthdref
) AS skuJobs ON sku.arthdref = skuJobs.arthdref LEFT JOIN 
stlDieRemovalLog L ON L.arthdref = sku.arthdref LEFT JOIN 
stlDieRemovalReasons ON stlDieRemovalReasons.ID = L.ReasonID LEFT JOIN 
(
	SELECT wn___ref, TRIM(wn_vnaam) + CASE WHEN LEN(TRIM(wn_vnaam)) <> 0 AND LEN(TRIM(wn_naam_)) <> 0 THEN '' '' ELSE '''' END + TRIM(wn_naam_) AS OperatorName
	FROM werknm__ AS O
) AS Operator ON Operator.wn___ref = L.Operator_wn___ref LEFT JOIN 
(
	SELECT wn___ref, TRIM(wn_vnaam) + CASE WHEN LEN(TRIM(wn_vnaam)) <> 0 AND LEN(TRIM(wn_naam_)) <> 0 THEN '' '' ELSE '''' END + TRIM(wn_naam_) AS ApprovalName
	FROM werknm__ AS appName
) AS ApprovalName ON ApprovalName.wn___ref = L.Approval_wn___ref LEFT JOIN 
besbon__ AS PO ON sku.bsbonref = PO.bsbonref LEFT JOIN
vakken__ AS loc ON sku.vak__ref = loc.vak__ref 

' 
