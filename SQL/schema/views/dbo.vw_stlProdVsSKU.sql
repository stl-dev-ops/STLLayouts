SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProdVsSKU]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlProdVsSKU]
AS
SELECT order___.ord__ref, order___.omschr__, order___.kla__ref, order___.kla__rpn AS CustomerKeyword, klabas__.naam____ AS Customer, order___.best_dat AS OrderDate, 
order___.ord__rpn, order___.best_dat AS OrderDateFrom, order___.best_dat AS OrderDateTo, order___.open____, Waste.Discrepancy AS WasteDiscrepancy,
ProductsSKU.ToProduce, ProductsSKU.InStock, ProductsSKU.Picked, ProductsSKU.Shipped, ProductsSKU.DelNotChangeJob, ProductsSKU.DelChangeJob, ProductsSKU.Consumed, 
InStockOrShipped = ProductsSKU.ShippedOrSentToStock, 

FirstShipDate = (SELECT MIN(b.vrzv_dat) FROM bstlyn__ b WHERE b.ord__ref = order___.ord__ref),
LastShipDate  = (SELECT MAX(b.vrzv_dat) FROM bstlyn__ b WHERE b.ord__ref = order___.ord__ref),

/* uses CERM''s produced labels */
CERMSays.Count AS CERMSays_ProducedLabels,  
CERMSays_ProdMinusDel = ISNULL(CERMSays.Count, 0) - ISNULL(ProductsSKU.DelChangeJob, 0) - ISNULL(ProductsSKU.DelNotChangeJob, 0), 

CERMSays_SittingSomewhere =
CASE 
  WHEN (
			ISNULL(CERMSays.Count, 0) - 
			ISNULL(ProductsSKU.DelChangeJob, 0) - 
			ISNULL(ProductsSKU.DelNotChangeJob, 0)
		) 
		- 
		(
			ISNULL(ProductsSKU.InStock, 0) + 
			ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
			ISNULL(ProductsSKU.Picked, 0)
		) > 0 
  THEN (
			ISNULL(CERMSays.Count, 0) - 
			ISNULL(ProductsSKU.DelChangeJob, 0) - 
			ISNULL(ProductsSKU.DelNotChangeJob, 0)
		) 
		- 
		(
			ISNULL(ProductsSKU.InStock, 0) + 
			ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
			ISNULL(ProductsSKU.Picked, 0)
		) 
ELSE 
	0 
END, 

 CASE
  WHEN (ISNULL(CERMSays.Count, 0) - ISNULL(ProductsSKU.DelChangeJob, 0) 
         - ISNULL(ProductsSKU.DelNotChangeJob, 0)) - (ISNULL(ProductsSKU.InStock, 0) 
		 + ISNULL(ProductsSKU.ShippedOrSentToStock, 0)) < 0 
  THEN ABS((ISNULL(CERMSays.Count, 0) - ISNULL(ProductsSKU.DelChangeJob, 0) 
                         - ISNULL(ProductsSKU.DelNotChangeJob, 0)) - (ISNULL(ProductsSKU.InStock, 0) + ISNULL(ProductsSKU.ShippedOrSentToStock, 0))) 
  ELSE 0 END AS CERMSays_CreatedMagically,

/* uses job trace produced labels */
JobTraceSays_ProducedLabels = CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END, 
JobTraceSays_ProdMinusDel   = CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - ISNULL(ProductsSKU.DelChangeJob, 0) - ISNULL(ProductsSKU.DelNotChangeJob, 0), 


JobTraceSays_SittingSomewhere =
CASE 
  WHEN (
			CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - 
			ISNULL(ProductsSKU.DelChangeJob, 0) - 
			ISNULL(ProductsSKU.DelNotChangeJob, 0)
		) 
		- 
		(
			ISNULL(ProductsSKU.InStock, 0) + 
			ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
			ISNULL(ProductsSKU.Picked, 0)
		) > 0 
  THEN (
			CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - 
			ISNULL(ProductsSKU.DelChangeJob, 0) - 
			ISNULL(ProductsSKU.DelNotChangeJob, 0)
		) 
		- 
		(
			ISNULL(ProductsSKU.InStock, 0) + 
			ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
			ISNULL(ProductsSKU.Picked, 0)
		) 
ELSE 
	0 
END, 

 CASE
  WHEN (CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - ISNULL(ProductsSKU.DelChangeJob, 0) 
         - ISNULL(ProductsSKU.DelNotChangeJob, 0)) - (ISNULL(ProductsSKU.InStock, 0) 
		 + ISNULL(ProductsSKU.ShippedOrSentToStock, 0)) < 0 
  THEN ABS((CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - ISNULL(ProductsSKU.DelChangeJob, 0) 
                         - ISNULL(ProductsSKU.DelNotChangeJob, 0)) - (ISNULL(ProductsSKU.InStock, 0) + ISNULL(ProductsSKU.ShippedOrSentToStock, 0))) 
  ELSE 0 END AS JobTraceSays_CreatedMagically,

IsSpoolJobWithLessThan100000SittingSomewhere = 
CASE 
	WHEN  order___.omschr__ = REPLACE(order___.omschr__, ''spool'', '''') THEN
		0 
	ELSE 
		CASE WHEN 100000 < 
			CASE 
			  WHEN (
						CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - 
						ISNULL(ProductsSKU.DelChangeJob, 0) - 
						ISNULL(ProductsSKU.DelNotChangeJob, 0)
					) 
					- 
					(
						ISNULL(ProductsSKU.InStock, 0) + 
						ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
						ISNULL(ProductsSKU.Picked, 0)
					) > 0 
			  THEN (
						CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - 
						ISNULL(ProductsSKU.DelChangeJob, 0) - 
						ISNULL(ProductsSKU.DelNotChangeJob, 0)
					) 
					- 
					(
						ISNULL(ProductsSKU.InStock, 0) + 
						ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
						ISNULL(ProductsSKU.Picked, 0)
					) 
			ELSE 
				0 
			END THEN
			0
		ELSE
			1
		END
	END,

IsSpoolJobWithLessThan200000SittingSomewhere = 
CASE 
	WHEN  order___.omschr__ = REPLACE(order___.omschr__, ''spool'', '''') THEN
		0 
	ELSE 
		CASE WHEN 200000 < 
			CASE 
			  WHEN (
						CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - 
						ISNULL(ProductsSKU.DelChangeJob, 0) - 
						ISNULL(ProductsSKU.DelNotChangeJob, 0)
					) 
					- 
					(
						ISNULL(ProductsSKU.InStock, 0) + 
						ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
						ISNULL(ProductsSKU.Picked, 0)
					) > 0 
			  THEN (
						CASE WHEN ISNULL(JobTraceSpoolSays.Count, 0) = 0 THEN ISNULL(JobTraceRewindSays.Count, 0) ELSE JobTraceSpoolSays.Count END - 
						ISNULL(ProductsSKU.DelChangeJob, 0) - 
						ISNULL(ProductsSKU.DelNotChangeJob, 0)
					) 
					- 
					(
						ISNULL(ProductsSKU.InStock, 0) + 
						ISNULL(ProductsSKU.ShippedOrSentToStock, 0) +
						ISNULL(ProductsSKU.Picked, 0)
					) 
			ELSE 
				0 
			END THEN
			0
		ELSE
			1
		END
	END

FROM
(
  SELECT h.ord__ref, SUM(CONVERT(DECIMAL(10, 2), h.totam_in - ISNULL(p.sumActualGoodFt, 0) - ISNULL(p.sumRewindWasteFt, 0) - ISNULL(p.sumPressBadMaterialFt, 0) - ISNULL(p.sumBadRowsMaterialFt, 0))) AS Discrepancy
  FROM vw_stlPressRewindFtLabels AS p RIGHT JOIN
  hlfvrd__ AS h ON p.hlf__ref = h.hlf__ref AND h.wp___ref LIKE ''5%''
  GROUP BY h.ord__ref
) AS Waste RIGHT JOIN
order___ INNER JOIN
(
  SELECT O.ord__ref, toe0.ToProduce, toe1.InStock, toe2.Picked, toe3.Shipped, toe4.DelNotChangeJob, toe5.DelChangeJob, toe6.Consumed, pMove.ShippedOrSentToStock 
  FROM order___ AS O LEFT JOIN
  (
    SELECT ord__ref, SUM(aant__ex) AS ToProduce
    FROM afgsku__
    GROUP BY ord__ref, toestand
    HAVING toestand = ''0''
  ) AS toe0 ON toe0.ord__ref = O.ord__ref LEFT JOIN
  (
    SELECT ord__ref, SUM(aant__ex) AS InStock
    FROM afgsku__
    GROUP BY ord__ref, toestand
    HAVING toestand = ''1''
  ) AS toe1 ON toe1.ord__ref = O.ord__ref LEFT JOIN
  (
    SELECT ord__ref, SUM(aant__ex) AS Picked
	FROM afgsku__
    GROUP BY ord__ref, toestand
    HAVING toestand = ''2''
  ) AS toe2 ON toe2.ord__ref = O.ord__ref LEFT JOIN
  (
    SELECT ord__ref, SUM(aant__ex) AS Shipped
    FROM afgsku__
    GROUP BY ord__ref, toestand
    HAVING toestand = ''3''
  ) AS toe3 ON toe3.ord__ref = O.ord__ref LEFT JOIN
  (
    SELECT ord__ref, SUM(aant__ex) AS DelNotChangeJob
    FROM afgsku__ 
    GROUP BY ord__ref, toestand
    HAVING toestand = ''4''
  ) AS toe4 ON toe4.ord__ref = O.ord__ref LEFT JOIN
  (
    SELECT ord__ref, SUM(aant__ex) AS DelChangeJob
    FROM afgsku__ 
    GROUP BY ord__ref, toestand
    HAVING toestand = ''5''
  ) AS toe5 ON toe5.ord__ref = O.ord__ref LEFT JOIN
  (
    SELECT ord__ref, SUM(aant__ex) AS Consumed
    FROM afgsku__ 
    GROUP BY ord__ref, toestand
    HAVING toestand = ''6''
  ) AS toe6 ON toe6.ord__ref = O.ord__ref LEFT JOIN
  (
	SELECT ord__ref, sum(aantal__ ) * -1.0 ShippedOrSentToStock
	FROM afgpry__
	GROUP BY ord__ref, soort___ 
	HAVING soort___ = ''2''
  ) AS pMove ON pMove.ord__ref = O.ord__ref
) AS ProductsSKU ON order___.ord__ref = ProductsSKU.ord__ref INNER JOIN
klabas__ ON order___.kla__ref = klabas__.kla__ref ON Waste.ord__ref = order___.ord__ref LEFT JOIN
(
    SELECT ord__ref, SUM(goodLabels) AS [Count]
    FROM stlST_RewindBrick 
    GROUP BY ord__ref 
) AS JobTraceRewindSays ON order___.ord__ref = JobTraceRewindSays.ord__ref LEFT JOIN
(
    SELECT off__ref ord__ref, SUM(aant_prd) AS [Count]
    FROM v4vrs___
    GROUP BY off__ref
) AS CERMSays ON order___.ord__ref = CERMSays.ord__ref LEFT JOIN
(
	SELECT sj.ord__ref, SUM(s.Qty) AS [Count] 
	FROM spool s JOIN 
	spoolJob sj ON s.spoolJobID = sj.spoolJobID 
	GROUP BY sj.ord__ref 
) JobTraceSpoolSays ON order___.ord__ref = JobTraceSpoolSays.ord__ref 

' 
