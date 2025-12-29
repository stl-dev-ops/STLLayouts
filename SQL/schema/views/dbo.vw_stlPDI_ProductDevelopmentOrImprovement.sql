SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPDI_ProductDevelopmentOrImprovement]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlPDI_ProductDevelopmentOrImprovement]
AS
SELECT
pdi.ID, 
pdi.ProjectID,
pdi.DevelopmentTypeID, 
devType.DevelopmentType, 
pdi.DriverID, 
driv.DriverType, 
pdi.[Description], 
pdi.ManagerID,
pdi.Created, 
pdi.CreatedBy, 
pdi.Updated, 
pdi.UpdatedBy, 
tim.DeadlineForCompletion, 
tim.PhaseID, 
phase.Phase, 
pdi.vrt__ref, 
cr.vrt__rpn, 
SUBSTRING(pdi.CreatedBy, CHARINDEX(''\'', pdi.CreatedBy) + 1, LEN(pdi.CreatedBy)) AS CreatedByUser, 
SUBSTRING(pdi.UpdatedBy, CHARINDEX(''\'', pdi.UpdatedBy) + 1, LEN(pdi.UpdatedBy)) AS UpdatedByUser, 
pdi.Deleted, 
sales.SourceID, 
sales.SalesVolume, 
Source_Driver.DriverType AS SourceDriver, 
sales.SalesPrice, 
sales.SalesPriceUnitID,
u.Unit SalesPriceUnit,
sales.SalesVolumeInitial,
sales.ChanceOfObtainingInitial,
sales.SalesVolumeAfter1Year, 
sales.SalesVolumeUnitID,
sales.ChanceOfObtainingAfter1Year, 
sales.SalesVolumeAfter2Year, 
sales.ChanceOfObtainingAfter2Year, 
replacedSales.ReplacedSalesVolumeInitial,
replacedSales.ReplacedChanceOfObtainingInitial,
replacedSales.ReplacedSalesVolumeAfter1Year,
replacedSales.ReplacedChanceOfObtainingAfter1Year,
replacedSales.ReplacedSalesVolumeAfter2Year,
replacedSales.ReplacedChanceOfObtainingAfter2Year,
tim.RawGoodsToolingDeliverBy, 
tim.DeadlineForCompletionNotes, 
tim.NextUpdateBy,
comp.HowWillWeKnowWeAreDone, 
budget.BudgetDate,
budget.BudgetNotes,
budget.MachineCost, 
budget.NoOfTimesToMachine, 
budget.HoursPerTime, 
pdi.afg__ref, 
pdi.FutureCustomers, 
prob.ProblemToSolve, 
purp.ProductPurpose,
p.afg_oms1,
pdi.ProjectStatusID,
PinnedNotesPastDue.PinnedNotesPastDue,
projstat.[Status],
pdi.ReadyForMarketingID,
Costs.CostsAccrued,
ExistingCustomers = 
CASE WHEN ISNULL(CermCustomers.ExistingCustomers, '''') = '''' THEN 
	pdi.FutureCustomers 
ELSE
	CASE WHEN ISNULL(pdi.FutureCustomers, '''') = '''' THEN
		ISNULL(CermCustomers.ExistingCustomers, '''') 
	ELSE
		ISNULL(CermCustomers.ExistingCustomers, '''') + '', '' + ISNULL(pdi.FutureCustomers, '''')
	END
END,
[TimeStamp] = 
''Created '' + CONVERT(varchar, pdi.Created, 107) + '' by '' + SUBSTRING(pdi.CreatedBy, CHARINDEX(''\'', pdi.CreatedBy) + 1, LEN(pdi.CreatedBy)) + '';'' +
CASE 
	WHEN pdi.Created <> pdi.Updated THEN
	'' Updated '' + CONVERT(varchar, pdi.Updated, 107) + '' by '' + SUBSTRING(pdi.UpdatedBy, CHARINDEX(''\'', pdi.UpdatedBy) + 1, LEN(pdi.UpdatedBy))+ '';''
	END

FROM
stlPDI_CompletionNotes AS comp RIGHT JOIN
stlPDI_ProductDevelopmentOrImprovement AS pdi LEFT JOIN
afgart__ AS p ON pdi.afg__ref = p.afg__ref LEFT JOIN
stlPDI_ProblemSolvingNotes AS prob ON pdi.ID = prob.stlPDI_ID AND prob.Deleted = 0 LEFT JOIN
stlPDI_ProductPurposeNotes AS purp ON pdi.ID = purp.stlPDI_ID AND purp.Deleted = 0 LEFT JOIN
stlPDI_Budget AS budget ON pdi.ID = budget.stlPDI_ID AND budget.Deleted = 0 ON comp.stlPDI_ID = pdi.ID AND comp.Deleted = 0 LEFT JOIN
stlPDI_Drivers AS Source_Driver RIGHT JOIN
stlPDI_Sales AS sales ON Source_Driver.ID = sales.SourceID ON pdi.ID = sales.stlPDI_ID AND sales.Deleted = 0 LEFT JOIN
stlPDI_Units AS u ON sales.SalesPriceUnitID = u.ID LEFT JOIN 
stlPDI_ReplacedSales replacedSales ON pdi.ID = replacedSales.stlPDI_ID AND replacedSales.Deleted = 0 LEFT JOIN
verte___ AS cr ON pdi.vrt__ref = cr.vrt__ref LEFT JOIN
stlPDI_Timelines AS tim ON pdi.ID = tim.stlPDI_ID AND tim.Deleted = 0 LEFT JOIN
stlPDI_TimelinePhases phase ON tim.PhaseID = phase.ID LEFT JOIN 
stlPDI_Drivers AS driv ON pdi.DriverID = driv.ID LEFT JOIN
stlPDI_DevelopmentType AS devType ON pdi.DevelopmentTypeID = devType.ID  INNER JOIN
stlPDI_ProjectStatus AS projstat ON pdi.ProjectStatusID = projstat.ID LEFT JOIN
(
	SELECT stlPDI_ID, CAST(STUFF 
	((SELECT '', '' + naam____ 
	FROM 
	( 
		SELECT DISTINCT ec.stlPDI_ID, k.naam____ 
		FROM stlPDI_ExistingCustomers ec INNER JOIN
		klabas__ k ON ec.kla__ref = k.kla__ref 
	) ecNames 
	WHERE ec.stlPDI_ID = ecNames.stlPDI_ID 
	ORDER BY naam____ FOR XML PATH(''''), root(''MyString''), type
).value(''/MyString[1]'',''varchar(max)''), 1, 2, '''') AS NVARCHAR(1000)) ExistingCustomers 
	FROM stlPDI_ExistingCustomers ec 
	GROUP BY ec.stlPDI_ID 
) CermCustomers ON pdi.ID = CermCustomers.stlPDI_ID LEFT JOIN
(
	SELECT stlPDI_ID, COUNT(stlPDI_ID) PinnedNotesPastDue
	FROM stlPDI_AdditionalNotes
	WHERE Pinned = 1 AND [Hidden] = 0 AND ToBeCompleted < GETDATE()
	GROUP BY stlPDI_ID
) PinnedNotesPastDue ON PinnedNotesPastDue.stlPDI_ID = pdi.ID LEFT JOIN
(
	SELECT p.ProjectID, SUM(ShippingCosts) + (SELECT SUM(ACT_TOT_COST) FROM vw_stlPDI_ProductDevelopmentOrImprovementJobCosting j WHERE j.ProjectID = p.ProjectID) - SUM(CustomerInvoices) CostsAccrued
	FROM vw_stlPenguin_ProductsCreatedByProject p
	--WHERE ISNUMERIC(p.ProjectID) = 1
	GROUP BY p.ProjectID
) Costs ON Costs.ProjectID = pdi.ProjectID
 
' 
