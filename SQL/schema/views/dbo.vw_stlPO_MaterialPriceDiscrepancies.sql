SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPO_MaterialPriceDiscrepancies]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlPO_MaterialPriceDiscrepancies]
AS

SELECT 

[PO#]						= PO.grbonref, 
OrderLineItemID				= PO_det.grs__vnr, 
Supplier					= PO_det.lev__rpn, 
Category					= c.omschr__, 
MaterialID					= PO_det.art__ref, 
MaterialDescription			= PO_det.art_oms2, 
OrderedQuantity				= PO_det.gaant___, 
OrderedPrice				= PO_det.bpri__bm, 
OrderedTotal				= PO_det.totbp_bm,
Real_delivery				= CASE WHEN YEAR(PO_det.levr_dat) = 2049 THEN NULL ELSE PO_det.levr_dat END,  
DeliveredQuantity			= PO_det.laant___ , 
[Invoiced price]			= PO_det.fpri__bm, 
InvoicedTotal				= PO_det.totfp_bm, 
InvoiceDate					= [Material deliveries history].InvoiceDate,
[DEVIATION]					= PO_det.fpri__bm - PO_det.bpri__bm,
[DEVIATION%]				= CASE 
								WHEN PO_det.bpri__bm = 0.0 THEN 
									CASE
										WHEN PO_det.fpri__bm = 0.0 THEN
											0.0
										ELSE
											999999
										END
								ELSE 
									CASE 
										WHEN PO_det.fpri__bm < PO_det.bpri__bm THEN 
											-1.0 
											ELSE 
												1.0 
											END 
									* ((PO_det.fpri__bm - PO_det.bpri__bm) / PO_det.bpri__bm) 
							   END, 
[Confirmation Supplier]		= 
							CASE PO_det.fiat__ok
								WHEN ''0'' THEN ''No confirmation needed''
								WHEN ''1'' THEN ''To confirm''
								WHEN ''2'' THEN ''Cancelled''
								WHEN ''3'' THEN ''Modified''
								WHEN ''4'' THEN ''Confirmed after changes''
								WHEN ''5'' THEN ''Already confirmed''
								WHEN ''6'' THEN ''Rejected''
							END,
[Delivery status]			=
							CASE PO_det.lev__tst 
								WHEN ''0'' THEN ''Cancelled''
								WHEN ''1'' THEN ''Not yet delivered''
								WHEN ''2'' THEN ''Partly delivered''
								WHEN ''3'' THEN ''Completely delivered'' 
							ELSE 
								PO_det.lev__tst 
							END,
[Invoice status]			= CASE PO_det.fac__tst 
								WHEN ''0'' THEN ''Cancelled''
								WHEN ''1'' THEN ''Not yet invoiced''
								WHEN ''2'' THEN ''Partly invoiced''
								WHEN ''3'' THEN ''Completely invoiced''
							ELSE 
								PO_det.fac__tst 
							END


FROM 

grdbon__ AS PO INNER JOIN   
grsbon__ AS PO_det ON PO_det.grbonref = PO.grbonref LEFT JOIN
(
	SELECT grbonref, grs__vnr, MAX(fac__dat) InvoiceDate 
	FROM hisglv__ 
	GROUP BY grbonref, grs__vnr
) [Material deliveries history] ON PO_det.grbonref = [Material deliveries history].grbonref AND PO_det.grs__vnr = [Material deliveries history].grs__vnr JOIN
artiky__ m ON PO_det.art__ref = m.art__ref JOIN
artcat__ c ON m.artc_ref = c.artc_ref 


WHERE 
		PO_det.fac__tst NOT IN (''0'', ''1'') 
	AND 
		ABS(
			CASE 
				WHEN PO_det.bpri__bm = 0.0 THEN 
					CASE
						WHEN PO_det.fpri__bm = 0.0 THEN
							0.0
						ELSE
							999999
						END
				ELSE 
					CASE 
						WHEN PO_det.fpri__bm < PO_det.bpri__bm THEN 
							-1.0 
							ELSE 
								1.0 
							END 
					* ((PO_det.fpri__bm - PO_det.bpri__bm) / PO_det.bpri__bm) 
				END
			) >= 0.0004

' 
