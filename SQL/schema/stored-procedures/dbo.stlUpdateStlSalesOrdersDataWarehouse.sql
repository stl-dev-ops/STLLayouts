SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateStlSalesOrdersDataWarehouse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateStlSalesOrdersDataWarehouse] AS' 
END







-- =============================================
-- Author:		jeff rupp
-- Create date: 11/05/2025
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateStlSalesOrdersDataWarehouse]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	DELETE FROM stlSalesReportWarehouse WHERE ISNULL(InvoiceDate, GETDATE()) >= EOMONTH(DATEADD(MONTH, -2, GETDATE()))

	INSERT INTO [dbo].[stlSalesReportWarehouse]
           ([InvoiceDate]
           ,[InvoiceID]
           ,[SequenceNumber]
           ,[CustomerID]
           ,[Customer]
           ,[BrandID]
           ,[Brand]
           ,[SubstrateKey]
           ,[ProductKW]
           ,[Description1]
           ,[Description2]
           ,[Sales]
           ,[InLogin]
           ,[InvoicedQty]
           ,[ProductGroupID]
           ,[ProductGroup]
           ,[JobID]
           ,[OrderDate]
           ,[lyn__ref]
           ,[OrderSalesRep]
           ,[SubstrateKey1]
           ,[SubstrateKey2]
           ,[bon__ref]
           ,[arek_ref]
           ,[arek_oms]
           ,[CustomerSalesRep]
           ,[ProductID]
           ,[ProductDescription]
           ,[RollSize]
           ,[naam____]
           ,[betk_ref]
           ,[CustomerStreet]
           ,[CustomerCity]
           ,[CustomerState]
           ,[CustomerZip]
           ,[CustomerCountry]
           ,[DeliveryStreet]
           ,[DeliveryCity]
           ,[DeliveryState]
           ,[DeliveryZip]
           ,[DeliveryCountry]
           ,[amo__akn]
           ,[pr_excl_]
           ,[PriceType]
           ,[RealShipmentDate]
           ,[kla__ref]
           ,[kla__rpn]
           ,[TrackingNumber]
           ,[CustomerRequestedDeliveryDate]
           ,[bst__ref]
           ,[CalculationID]
           ,[SalesOrderCalculationID]
           ,[l_aantal]
           ,[fac_eenh]
           ,[kom__ref]
           ,[ExpectedShipDate]
           ,[b_aantal]
           ,[aant__e2]
           ,[aant__e3]
           ,[aant__e4]
           ,[aant__e5]
           ,[zynrefkl]
           ,[SalesOrderComment]
           ,[CustomersOrderNo]
           ,[Job_QP_ID]
           ,[Product_QP_ID]
           ,[lbn__ref])


	/******** HISTORY ********/

	SELECT 
	CASE 
		WHEN I.dok__dat = '1980-01-01' THEN NULL 
		ELSE I.dok__dat 
	END AS InvoiceDate, I.fak__ref AS InvoiceID, IL.volgnr__ AS SequenceNumber, I.kla__ref AS CustomerID, 
	I.kla__rpn AS Customer, ISNULL(BRAND.prfm_ref, N'') AS BrandID, ISNULL(BRAND.prfm_oms, N'') AS Brand, 
	Substrates.SubstrateKey, P.afg__rpn AS ProductKW, 
	CAST(LEFT(IL.fkttxt1_, 50) AS nvarchar(50)) AS Description1, IL.fkttxt2_ AS Description2, IL.tota__bm AS Sales, 0 AS InLogin,

	CASE IL.dok__srt 
		WHEN '2' THEN -1 
	ELSE 
		1 
	END * 
	IL.f_aantal *
	CASE 
		WHEN SO.fac_eenh IS NULL THEN 1
	ELSE
		CASE SO.fac_eenh 
			WHEN '1' THEN 1
			WHEN '2' THEN SO.aant__e2 
			WHEN '3' THEN SO.aant__e2 * SO.aant__e3 
			WHEN '4' THEN SO.aant__e2 * SO.aant__e3 * SO.aant__e4 
			WHEN '5' THEN SO.aant__e2 * SO.aant__e3 * SO.aant__e4 * SO.aant__e5 
		END
	END AS InvoicedQty, 

	PG.prkl_ref AS ProductGroupID, 
	PG.omschr__ AS ProductGroup, IL.ord__ref AS JobID, SO.bst__dat OrderDate, IL.lyn__ref, SOR.naam____ AS OrderSalesRep, Substrates.SubstrateKey1, Substrates.SubstrateKey2, 
	OrderDetails.bon__ref, A.arek_ref, A.arek_oms, CR.naam____ AS CustomerSalesRep, P.afg__ref AS ProductID, P.afg_oms1 AS ProductDescription, 
	P.aant__e2 AS RollSize, C.naam____, I.betk_ref, C.straat__ AS CustomerStreet, C.postnaam AS CustomerCity, C.state___ AS CustomerState, 
	C.post_ref AS CustomerZip, C.land_ref AS CustomerCountry, OA.lev_loc3 AS DeliveryStreet, OA.postnaam AS DeliveryCity, OA.state___ AS DeliveryState, 
	OA.post_ref AS DeliveryZip, OA.land_ref AS DeliveryCountry, amo__akn, SO.pr_excl_, 
	CASE 
		WHEN P.Prys_srt = '0' THEN 'Text' 
		WHEN P.Prys_srt = '1' THEN 'Discount/supplement' 
		WHEN P.Prys_srt = '2' THEN 'Fixed amount' 
		WHEN P.Prys_srt = '3' THEN '/lb' 
		WHEN P.Prys_srt = '4' THEN '/page' 
		WHEN P.Prys_srt = '5' THEN '/piece' 
		WHEN P.Prys_srt = '6' THEN '/100' 
		WHEN P.Prys_srt = '7' THEN '/1,000' 
		WHEN P.Prys_srt = '8' THEN '/100,000' 
		WHEN P.Prys_srt = '9' THEN '/sh tn' 
		WHEN P.Prys_srt = 'B' THEN '/ft' 
		WHEN P.Prys_srt = 'C' THEN '/msi' 
		ELSE P.Prys_srt 
	END AS PriceType, vrz__dat AS RealShipmentDate, I.kla__ref, I.kla__rpn, 
	FreeFields.TrackingNumber, FreeFields.CustomerRequestedDeliveryDate, SO.bst__ref, P.off1_ref AS CalculationID, P.off1_ref SalesOrderCalculationID, 
	l_aantal, fac_eenh, I.kom__ref, SO.vrzv_dat ExpectedShipDate, b_aantal, SO.aant__e2, SO.aant__e3, SO.aant__e4, SO.aant__e5, SO.zynrefkl, SO.bst__com SalesOrderComment, SO.bsbn_kla CustomersOrderNo, 
	je.komment3 AS Job_QP_ID, pe.komment3 AS Product_QP_ID, SO.lbn__ref 

	FROM 
	hafgfr__ IA INNER JOIN
	algrek__ A ON IA.arek_ref = A.arek_ref RIGHT JOIN
	levlok__ OA RIGHT JOIN
	bstlyn__ SO ON OA.lok__ref = SO.lok__ref LEFT JOIN
	verte___ AS SOR ON SO.vrt__ref = SOR.vrt__ref RIGHT JOIN
	hafgfl__ IL ON SO.lyn__ref = IL.lyn__ref RIGHT JOIN
	klabas__ C LEFT JOIN
	verte___ AS CR ON C.vrt__ref = CR.vrt__ref RIGHT JOIN
	hafgfk__ I ON C.kla__ref = I.kla__ref ON IL.fak__ref = I.fak__ref ON IA.fak__ref = IL.fak__ref AND IA.volgnr__ = IL.volgnr__ LEFT JOIN
	(
		SELECT  O.ord__ref, O.best_dat AS OrderDate, O.vrt__ref, R.vrt__rpn, R.naam____, O.bon__ref
		FROM order___ O INNER JOIN 
		verte___ R ON O.vrt__ref = R.vrt__ref 
	) AS OrderDetails ON IL.ord__ref = OrderDetails.ord__ref LEFT JOIN
	v4bon___ je ON OrderDetails.bon__ref = je.bon__ref  LEFT JOIN
	v4eti___ V4 ON IL.ord__ref = V4.off__ref LEFT JOIN
	prodfm__ BRAND RIGHT JOIN
	prodkl__ PG RIGHT JOIN
	afgart__ P ON PG.prkl_ref = P.prkl_ref ON BRAND.prfm_ref = P.prfm_ref ON IL.afg__ref = P.afg__ref LEFT JOIN 
	v1off___ pc ON P.off1_ref = pc.off__ref LEFT JOIN 
	v1bon___ pe ON pc.bon__ref = pe.bon__ref LEFT JOIN 
	( 
		SELECT drg__ref, drg__rpn AS SubstrateKey, taal___7 AS SubstrateKey1, taal___8 AS SubstrateKey2, taal___9 AS SubstrateKey3, geblokk_ 
		FROM drgers__ 
	) AS Substrates ON V4.drg__ref = Substrates.drg__ref LEFT JOIN 
	( 
		SELECT lyn__ref, [tekst_02] AS TrackingNumber, tekst_19 AS CustomerRequestedDeliveryDate 
		FROM bstext__ 
	) AS FreeFields ON FreeFields.lyn__ref = IL.lyn__ref 

	WHERE I.kla__ref <> '100208' AND I.dok__dat >= EOMONTH(DATEADD(MONTH, -2, GETDATE()))

	UNION 

	/******** IN LOG-IN ********/

	SELECT 
	CASE 
		WHEN SO.dok__dat = '1980-01-01' THEN NULL 
		ELSE SO.dok__dat 
	END AS InvoiceDate, SO.fak__ref AS InvoiceID, NULL AS SequenceNumber, SO.kla__ref AS CustomerID, 
	SO.kla__rpn AS Customer, ISNULL(BRAND.prfm_ref, N'') AS BrandID, ISNULL(BRAND.prfm_oms, N'') AS Brand, 
	Substrates.SubstrateKey, P.afg__rpn AS ProductKW, 
	SO.afg_oms1 AS Description1, SO.afg_oms2 AS Description2, SO.bedrf_bm AS Sales, SO.bedr__bm AS InLogin, 

	SO.f_aantal *
	CASE
		WHEN SO.fac_eenh IS NULL THEN 1
	ELSE
		CASE SO.fac_eenh 
			WHEN '1' THEN 1
			WHEN '2' THEN SO.aant__e2 
			WHEN '3' THEN SO.aant__e2 * SO.aant__e3 
			WHEN '4' THEN SO.aant__e2 * SO.aant__e3 * SO.aant__e4 
			WHEN '5' THEN SO.aant__e2 * SO.aant__e3 * SO.aant__e4 * SO.aant__e5 
		END 
	END AS InvoicedQty, 

	PG.prkl_ref AS ProductGroupID, PG.omschr__ AS ProductGroup, SO.ord__ref AS JobID, SO.bst__dat OrderDate, SO.lyn__ref, SOR.naam____ AS OrderSalesRep, 
	Substrates.SubstrateKey1, Substrates.SubstrateKey2, Job.bon__ref, A.arek_ref, A.arek_oms, CR.naam____ AS CustomerSalesRep, P.afg__ref AS ProductID, 
	P.afg_oms1 AS ProductDescription, P.aant__e2 AS RollSize, C.naam____, SO.betk_ref, C.straat__ AS CustomerStreet, C.postnaam AS CustomerCity, 
	C.state___ AS CustomerState, C.post_ref AS CustomerZip, C.land_ref AS CustomerCountry, OA.lev_loc3 AS DeliveryStreet, OA.postnaam AS DeliveryCity, 
	OA.state___ AS DeliveryState, OA.post_ref AS DeliveryZip, OA.land_ref AS DeliveryCountry, amo__akn, SO.pr_excl_, 
	CASE 
		WHEN P.Prys_srt = '0' THEN 'Text' 
		WHEN P.Prys_srt = '1' THEN 'Discount/supplement' 
		WHEN P.Prys_srt = '2' THEN 'Fixed amount' 
		WHEN P.Prys_srt = '3' THEN '/lb' 
		WHEN P.Prys_srt = '4' THEN '/page' 
		WHEN P.Prys_srt = '5' THEN '/piece' 
		WHEN P.Prys_srt = '6' THEN '/100' 
		WHEN P.Prys_srt = '7' THEN '/1,000' 
		WHEN P.Prys_srt = '8' THEN '/100,000' 
		WHEN P.Prys_srt = '9' THEN '/sh tn' 
		WHEN P.Prys_srt = 'B' THEN '/ft' 
		WHEN P.Prys_srt = 'C' THEN '/msi' 
		ELSE P.Prys_srt 
	END AS PriceType, vrz__dat AS RealShipmentDate, SO.kla__ref, SO.kla__rpn, 
	FreeFields.TrackingNumber, FreeFields.CustomerRequestedDeliveryDate, SO.bst__ref, P.off1_ref AS CalculationID, SO.off1_ref SalesOrderCalculationID, 
	l_aantal, fac_eenh, '' kom__ref, SO.vrzv_dat ExpectedShipDate, b_aantal, SO.aant__e2, SO.aant__e3, SO.aant__e4, SO.aant__e5, SO.zynrefkl, SO.bst__com SalesOrderComment, SO.bsbn_kla CustomersOrderNo, 
	je.komment3 AS Job_QP_ID, pe.komment3 AS Product_QP_ID, SO.lbn__ref 

	FROM 
	levlok__ OA RIGHT JOIN 
	algrek__ A INNER JOIN 
	bstlyn__ SO ON A.arek_ref = SO.arek_ref ON OA.lok__ref = SO.lok__ref LEFT JOIN 
	verte___ AS SOR ON SO.vrt__ref = SOR.vrt__ref LEFT JOIN 
	klabas__ C LEFT JOIN 
	verte___ AS CR ON C.vrt__ref = CR.vrt__ref ON SO.kla__ref = C.kla__ref LEFT JOIN 
	order___ AS Job ON SO.ord__ref = Job.ord__ref LEFT JOIN 
	v4bon___ je ON Job.bon__ref = je.bon__ref LEFT JOIN 
	v4eti___ V4 LEFT JOIN 
	( 
		SELECT drg__ref, drg__rpn AS SubstrateKey, taal___7 AS SubstrateKey1, taal___8 AS SubstrateKey2, taal___9 AS SubstrateKey3, geblokk_ 
		FROM drgers__ 
	) AS Substrates ON Substrates.drg__ref = V4.drg__ref ON SO.ord__ref = V4.off__ref LEFT JOIN 
	prodfm__ BRAND RIGHT JOIN 
	prodkl__ PG RIGHT JOIN 
	afgart__ P ON PG.prkl_ref = P.prkl_ref ON BRAND.prfm_ref = P.prfm_ref ON SO.afg__ref = P.afg__ref LEFT JOIN 
	v1off___ pc ON P.off1_ref = pc.off__ref LEFT JOIN
	v1bon___ pe ON pc.bon__ref = pe.bon__ref LEFT JOIN 
	( 
		SELECT lyn__ref, [tekst_02] AS TrackingNumber, tekst_19 AS CustomerRequestedDeliveryDate 
		FROM bstext__ 
	) AS FreeFields ON FreeFields.lyn__ref = SO.lyn__ref 

	WHERE SO.kla__ref <> '100208' AND SO.vrz__tst >= '0' AND SO.vrz__tst <= 'N' 


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

