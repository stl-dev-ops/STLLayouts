SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlFGS_ProductMovements]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlFGS_ProductMovements] AS 

SELECT r.[Date], r.Movement, r.ProductID, p.afg_oms1 [ProductDescription], r.Quantity, r.JobID, r.OrderID, r.SalesOrderID, r.Customer, 
Stock = SUM(r.Quantity) OVER (PARTITION BY r.ProductID ORDER BY r.ProductID, [Date], OrderOverride, ISNULL([OrderID], ''''), ISNULL([SalesOrderID],'''') ), OrderOverride
FROM  
(  
/* HISTORICAL MOVEMENTS */
	SELECT  
	[Date]        = move.datum___, 
	Movement      =  CASE soort___   
						WHEN   ''0'' THEN ''Unknown''   
						WHEN   ''1'' THEN ''Production stock''   
						WHEN   ''2'' THEN ''Shipment''   
						WHEN   ''3'' THEN ''Initial stock''   
						WHEN   ''4'' THEN ''Stock change''   
						WHEN   ''5'' THEN ''Consumption semi-finished goods''   
						WHEN   ''6'' THEN ''Semi-finished goods consumption correction''   
						WHEN   ''7'' THEN ''Balance correction''   
						WHEN   ''8'' THEN ''Purchase stock''   
						WHEN   ''9'' THEN ''Delete SKU''   
						WHEN  ''11'' THEN ''Delete quarantine''   
						WHEN  ''12'' THEN ''RMA receipt''   
						WHEN  ''13'' THEN ''Invoice''   
						WHEN ''101'' THEN ''Subsequent cost (production)''   
						WHEN ''102'' THEN ''Subsequent cost (shipping)''   
						WHEN ''105'' THEN ''Subsequent cost (semi-finished goods consumption)''  
						WHEN ''108'' THEN ''Subsequent cost (purchase)''   
						WHEN ''113'' THEN ''Invoice costs after quit from WIP''   
						WHEN ''201'' THEN ''Change in value (production)''   
						WHEN ''202'' THEN ''Shipping value change''   
						WHEN ''205'' THEN ''Change in value (semi-finished goods consumption)''   
						WHEN ''208'' THEN ''Purchase value change''   
						WHEN ''213'' THEN ''Invoice value change''  
					ELSE   
						CAST(soort___ AS nvarchar)  
					END,  
	ProductID     = move.afg__ref,  
	Quantity      = SUM(move.aantal__),  
	JobID         = so.ord__ref,  
	OrderID       = so.bst__ref,  
	SalesOrderID  = so.lyn__ref,  
	Customer      = so.kla__rpn,
	OrderOverride = 0
	FROM afgpry__ move LEFT JOIN  
	bstlyn__ so ON move.lyn__ref = so.lyn__ref  
	WHERE move.soort___ <> ''3'' 
	GROUP BY move.datum___, soort___, move.afg__ref, so.ord__ref, so.bst__ref, so.lyn__ref, so.kla__rpn  
	
	UNION ALL  
/* FUTURE JOBS */
	SELECT  
	[Date]        = DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(o.leveruur), CAST(o.leverdat AS datetime)),  
	Movement      = ''Job to add to stock'',  
	ProductID     = v.afg__ref,  
	Quantity      = v.oplage__,  
	JobID         = v.off__ref,  
	OrderID       = (SELECT MIN(so.bst__ref) FROM bstlyn__ so WHERE so.ord__ref = v.off__ref),  
	SalesOrderID  = (SELECT MIN(so.lyn__ref) FROM bstlyn__ so WHERE so.ord__ref = v.off__ref),  
	Customer      = o.kla__rpn,
	OrderOverride = 1
	FROM v4vrs___ v INNER JOIN  order___ o ON v.off__ref = o.ord__ref  
	WHERE DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(o.leveruur), CAST(o.leverdat AS datetime)) >= GETDATE() AND o.open____ = ''Y''  

	UNION ALL  
/* FUTURE SALES ORDERS */
	SELECT  
	[Date]        = DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(so.vrzv_uur), CAST(so.vrzv_dat AS datetime)),  
	Movement      = ''Pick sales order from stock'',  
	ProductID     = so.afg__ref,  
	Quantity      = so.b_aantal * -1.0,  
	JobID         = so.ord__ref,  
	OrderID       = so.bst__ref,  
	SalesOrderID  = so.lyn__ref,  
	Customer      = so.kla__rpn,
	OrderOverride = 2  
	FROM bstlyn__ so  
	WHERE YEAR(vrz__dat) = 1980  
) r INNER JOIN  
afgart__ p ON r.ProductID = p.afg__ref  
WHERE r.ProductID IN 
(
	SELECT afg__ref 
	FROM afgart__ 
	WHERE kla__ref = ''100639''
)  
AND Quantity <> 0 
AND ABS(Quantity) <> 1


' 
