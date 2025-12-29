SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdate_stlPDI_JobsRanWarehouseData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdate_stlPDI_JobsRanWarehouseData] AS' 
END






-- =============================================
-- Author:		jeff rupp
-- Create date: 10/01/2025
-- Description:	Warehouse Data to speed up a very slow Penguin Query
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdate_stlPDI_JobsRanWarehouseData]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	DELETE FROM [dbo].[stlPDI_JobsRanWarehouseData]
      WHERE 1 = 1;
	DELETE FROM [dbo].[stlPDI_ProductsCreatedByProjectWarehouseData]
	  WHERE 1=1;
	DELETE FROM [dbo].[stlPDI_ExistingCustomersWarehouseData]
	  WHERE 1=1;

	INSERT INTO [dbo].[stlPDI_JobsRanWarehouseData]
			([rowid]
			,[stlPDI_ID]
			,[ProjectID]
			,[ord__ref]
			,[afg__ref]
			,[TimesFellOffPress]
			,[omschr__]
			,[PD_Hours]
			,[MaterialCost]
			,[OutsideServicesCost]
			,[MachineCost]
			,[PO_Cost]
			,[ACT_TOT_COST])

	SELECT v.rowid, jr.stlPDI_ID, ProjectID = stl_RnD.antw_txt, v.off__ref ord__ref, v.afg__ref, jr.TimesFellOffPress, omschr__ = (SELECT omschr__ FROM order___ o WHERE o.ord__ref = v.off__ref), pdClockingsLessLunch.PD_Hours, 

	MaterialCost        = ACT_PAPE_COST + ACT_OTHM_COST, 
	OutsideServicesCost = ACT_OUTSIDE_COST, 
	MachineCost         = ACT_WAGE_COST + ACT_MACH_COST + ACT_OVER_COST, 
	PO_Cost				= ISNULL(POs.PO_Cost, 0), 
	ACT_TOT_COST		= ACT_TOT_COST + ISNULL(POs.PO_Cost, 0)
 
	FROM v4vrs___ v JOIN 
	( 
		SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt 
		FROM gegdet__ 
		WHERE tabname_ = 'afgart__' AND vrg__ref = '000019' 
	) stl_RnD ON v.afg__ref = stl_RnD.det__ref LEFT JOIN 
	(
		SELECT pdi.ID stlPDI_ID, jpid.det__ref ord__ref, 0 TimesFellOffPress, jpid.antw_txt ProjectID 
		FROM gegdet__ jpid JOIN 
		stlPDI_ProductDevelopmentOrImprovement pdi ON jpid.antw_txt = pdi.ProjectID 
		WHERE jpid.tabname_ = 'v4bon___' AND jpid.vrg__ref = '000084' 
	) jr ON v.off__ref = jr.ord__ref LEFT JOIN 
	(
		SELECT DISTINCT 
		oc.ord__ref, 
		ACT_PAPE_COST    = oc.papie_ok + oc.papie_hd + oc.papie_sp, 
		ACT_OTHM_COST    = oc.grdvrbok + oc.grdvrbhd + oc.grdvrbsp + (CASE WHEN ISNULL(CERM_ActualPDD, 0) = 0 THEN ISNULL(GrayBox.ActualFeet, 0) * 31.0 / 1000.0 ELSE 0 END), 
		ACT_OUTSIDE_COST = oc.ondaan__ + oc.ondaanhd + oc.ondaansp, 
		ACT_WAGE_COST    = oc.lonen_ok + oc.lonen_hd + oc.lonen_sp, 
		ACT_MACH_COST    = oc.machi_ok + oc.machi_hd + oc.machi_sp, 
		ACT_OVER_COST    = oc.overh_ok + oc.overh_hd + oc.overh_sp, 
		ACT_TOT_COST     = (oc.lonen_ok + oc.lonen_hd + oc.lonen_sp + oc.machi_ok + oc.machi_hd + oc.machi_sp + oc.overh_ok + oc.overh_hd + oc.overh_sp + 
							oc.papie_ok + oc.papie_hd + oc.papie_sp + oc.grdvrbok + oc.grdvrbhd + oc.grdvrbsp + oc.ondaan__ + oc.ondaanhd + oc.ondaansp) + 
							CASE WHEN ISNULL(CERM_ActualPDD, 0) = 0 THEN ISNULL(GrayBox.ActualFeet, 0) * 31.0 / 1000.0 ELSE 0 END
		FROM 
		ordcum__ AS oc LEFT JOIN
		(
			SELECT ord__ref, grdvrb__ CERM_ActualPDD 
			FROM ordrub__ 
			WHERE rbk__ref = '760005'
		) CERM_PDD ON CERM_PDD.ord__ref = oc.ord__ref LEFT JOIN
		(
			SELECT ord__ref, MAX(GrayBoxActualFeet) AS ActualFeet
			FROM 
			(
				SELECT ord__ref, art__ref, SUM(aantal__) AS GrayBoxActualFeet
				FROM plcrol__
				GROUP BY ord__ref, art__ref
			) AS GB
			GROUP BY ord__ref
		) AS GrayBox ON oc.ord__ref = GrayBox.ord__ref
	) pcea ON v.off__ref = pcea.ord__ref LEFT JOIN 
	( 
		SELECT c.ord__ref, SUM(dbo.GetMinutesFromCERMTimeString(c.duur____)) / 60.0 PD_Hours 
		FROM hispnt__ c JOIN 
		wpakt___ a ON c.wp___ref = a.wp___ref AND c.akt__ref = a.akt__ref 
		WHERE a.akt_oms_ NOT LIKE '%lunch%' 
		GROUP BY c.ord__ref 
	) pdClockingsLessLunch ON v.off__ref = pdClockingsLessLunch.ord__ref LEFT JOIN 
	( 
		SELECT PO_det.ord__ref, SUM(PO_det.totbp_bm) PO_Cost 
		FROM grdbon__ AS PO INNER JOIN 
		grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref 
		GROUP BY PO_det.ord__ref 
	) POs ON v.off__ref = POs.ord__ref
	--WHERE jr.stlPDI_ID = @pdiID OR stl_RnD.antw_txt = @projectID
	ORDER BY v.RowID;


	INSERT INTO [dbo].[stlPDI_ProductsCreatedByProjectWarehouseData]
           ([ProjectID]
           ,[afg__ref]
           ,[afg_oms1]
           ,[CustomerInvoices]
           ,[ShippingCosts])

	SELECT ProjectID = TRIM(stl_RnD.antw_txt), p.afg__ref, p.afg_oms1, 
		CustomerInvoices = ISNULL(ci.TotalInvoiced, 0),

		ShippingCosts = 
		ISNULL(
		(
			SELECT SUM(factotbm) 
			FROM trnlyn__ t 
			WHERE t.lyn__ref IN 
			(
				SELECT sku.lyn__ref 
				FROM afgsku__ sku 
				WHERE sku.afg__ref = p.afg__ref 
			)
		), 0)

	FROM afgart__ p INNER JOIN
	( 
		SELECT det__ref, CAST(antw_txt AS NVARCHAR(255)) AS antw_txt 
		FROM gegdet__ 
		WHERE tabname_ = 'afgart__' AND vrg__ref = '000019' 
	) AS stl_RnD ON p.afg__ref = stl_RnD.det__ref LEFT JOIN 
	( 
		SELECT [pi].afg__ref, SUM(fak__refTotalInvoiced.TotalInvoiced) TotalInvoiced 
		FROM 
		( 
			SELECT DISTINCT afg__ref, fak__ref 
			FROM hafgfl__ 
			WHERE afg__ref <> '' 
		) [pi] LEFT JOIN 
		( 
			SELECT fak__ref, SUM(tota__bm) TotalInvoiced 
			FROM hafgfl__ li 
			GROUP BY fak__ref 
		) fak__refTotalInvoiced ON [pi].fak__ref = fak__refTotalInvoiced.fak__ref 
		GROUP BY [pi].afg__ref 
	) ci ON p.afg__ref = ci.afg__ref 

	INSERT INTO [dbo].[stlPDI_ExistingCustomersWarehouseData]
           ([stlPDI_ID]
           ,[ExistingCustomers])

	SELECT stlPDI_ID, CAST(STUFF 
		((SELECT ', ' + naam____ 
		FROM 
		( 
			SELECT DISTINCT ec.stlPDI_ID, k.naam____ 
			FROM stlPDI_ExistingCustomers ec INNER JOIN
			klabas__ k ON ec.kla__ref = k.kla__ref 
		) ecNames 
		WHERE ec.stlPDI_ID = ecNames.stlPDI_ID 
		ORDER BY naam____ FOR XML PATH(''), root('MyString'), type
	).value('/MyString[1]','varchar(max)'), 1, 2, '') AS NVARCHAR(500)) ExistingCustomers 
		FROM stlPDI_ExistingCustomers ec 
		GROUP BY ec.stlPDI_ID 

	END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

