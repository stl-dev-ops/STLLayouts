SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlYoYSales]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlYoYSales] AS' 
END


-- =============================================
-- Author:		<jeff> 
-- Create date: <10/16/2023>

-- =============================================
ALTER PROCEDURE [dbo].[stlYoYSales]
	@CalendarYear int
AS
	BEGIN

	DECLARE @Result TABLE 
			(
				kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, 
				kla__rpn nvarchar(10) COLLATE Latin1_General_CI_AS, 
				naam____ nvarchar(100) COLLATE Latin1_General_CI_AS, 
				afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS, 
				afg_oms1 nvarchar(50) COLLATE Latin1_General_CI_AS, 
				omschr__ nvarchar(40) COLLATE Latin1_General_CI_AS, 
				prfm_oms nvarchar(50) COLLATE Latin1_General_CI_AS, 
				[Quantity_01] float, [Quantity_02] float, [Quantity_03] float, [Quantity_04] float, [Quantity_05] float, [Quantity_06] float, [Quantity_07] float, [Quantity_08] float, [Quantity_09] float, [Quantity_10] float, [Quantity_11] float, [Quantity_12] float, 
				[Amount_01] float, [Amount_02] float, [Amount_03] float, [Amount_04] float, [Amount_05] float, [Amount_06] float, [Amount_07] float, [Amount_08] float, [Amount_09] float, [Amount_10] float, [Amount_11] float, [Amount_12] float, 
				LastYearTotal float, 
				LastYTDTotal float,
				LastYearQuantity float,
				LastYTDQuantity float
			);
	DECLARE @CustomersProductsLast2Years TABLE (kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS);
	DECLARE @CustomersProductsThisYearByMonthQuantity TABLE (kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS, [1] float, [2] float, [3] float, [4] float, [5] float, [6] float, [7] float, [8] float, [9] float, [10] float, [11] float, [12] float);
	DECLARE @CustomersProductsThisYearByMonthAmount TABLE (kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS, [1] float, [2] float, [3] float, [4] float, [5] float, [6] float, [7] float, [8] float, [9] float, [10] float, [11] float, [12] float);
	DECLARE @CustomersProductsLastYearQuantities TABLE (kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS, LastYearTotal float);
	DECLARE @CustomersProductsLastYearAmounts TABLE (kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS, LastYearTotal float);
	DECLARE @CustomersProductsLastYTDQuantities TABLE (kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS, LastYTDTotal float); 
	DECLARE @CustomersProductsLastYTDAmounts TABLE (kla__ref nvarchar(6) COLLATE Latin1_General_CI_AS, afg__ref nvarchar(6) COLLATE Latin1_General_CI_AS, LastYTDTotal float); 


	INSERT INTO @CustomersProductsLast2Years 
	SELECT DISTINCT I.kla__ref, P.afg__ref 
	FROM hafgfk__ AS I INNER JOIN 
		 hafgfl__ AS IL ON I.fak__ref = IL.fak__ref INNER JOIN 
		 afgart__ AS P ON P.afg__ref = IL.afg__ref 
	WHERE YEAR(I.dok__dat) IN (@CalendarYear - 1, @CalendarYear); 

	INSERT INTO @CustomersProductsLastYearQuantities 
	SELECT y.kla__ref, y.afg__ref, SUM(y.InvoicedQty) LastYearQuantity
	FROM 
	( 
		SELECT I.kla__ref, P.afg__ref,
				InvoicedQty =
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
						END 
		FROM hafgfk__ AS I INNER JOIN 
		hafgfl__ AS IL ON I.fak__ref = IL.fak__ref INNER JOIN 
		afgart__ AS P ON P.afg__ref = IL.afg__ref LEFT JOIN
		bstlyn__ SO ON SO.lyn__ref = IL.lyn__ref 
	WHERE YEAR(I.dok__dat) = @CalendarYear - 1 
	) y 
	GROUP BY y.kla__ref, y.afg__ref; 

	INSERT INTO @CustomersProductsLastYearAmounts 
	SELECT y.kla__ref, y.afg__ref, SUM(y.tota__bm) LastYearTotal 
	FROM 
	( 
		SELECT I.kla__ref, P.afg__ref, IL.tota__bm 
		FROM hafgfk__ AS I INNER JOIN 
		hafgfl__ AS IL ON I.fak__ref = IL.fak__ref INNER JOIN 
		afgart__ AS P ON P.afg__ref = IL.afg__ref 
	WHERE YEAR(I.dok__dat) = @CalendarYear - 1 
	) y 
	GROUP BY y.kla__ref, y.afg__ref; 

	INSERT INTO @CustomersProductsLastYTDQuantities 
	SELECT y.kla__ref, y.afg__ref, SUM(y.InvoicedQty) LastYTDTotal 
	FROM 
	( 
		SELECT I.kla__ref, P.afg__ref, 
				InvoicedQty =
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
						END 
		FROM hafgfk__ AS I INNER JOIN 
		hafgfl__ AS IL ON I.fak__ref = IL.fak__ref INNER JOIN 
		afgart__ AS P ON P.afg__ref = IL.afg__ref  LEFT JOIN
		bstlyn__ SO ON SO.lyn__ref = IL.lyn__ref 
		WHERE YEAR(I.dok__dat) = @CalendarYear - 1 AND MONTH(I.dok__dat) < MONTH(GETDATE()) 
	) y 
	GROUP BY y.kla__ref, y.afg__ref; 

	INSERT INTO @CustomersProductsLastYTDAmounts 
	SELECT y.kla__ref, y.afg__ref, SUM(y.tota__bm) LastYTDTotal 
	FROM 
	( 
		SELECT I.kla__ref, P.afg__ref, IL.tota__bm 
		FROM hafgfk__ AS I INNER JOIN 
		hafgfl__ AS IL ON I.fak__ref = IL.fak__ref INNER JOIN 
		afgart__ AS P ON P.afg__ref = IL.afg__ref 
		WHERE YEAR(I.dok__dat) = @CalendarYear - 1 AND MONTH(I.dok__dat) < MONTH(GETDATE()) 
	) y 
	GROUP BY y.kla__ref, y.afg__ref; 

	INSERT INTO @CustomersProductsThisYearByMonthQuantity 
	SELECT * 
	FROM 
	( 
		SELECT  I.kla__ref, P.afg__ref, MONTH(I.dok__dat) AS monthDate, 
		InvoicedQty =
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
						END 
		FROM hafgfk__ AS I INNER JOIN 
		hafgfl__ AS IL ON I.fak__ref = IL.fak__ref INNER JOIN 
		afgart__ AS P ON P.afg__ref = IL.afg__ref LEFT JOIN
		bstlyn__ SO ON SO.lyn__ref = IL.lyn__ref 
		WHERE YEAR(I.dok__dat) = @CalendarYear 
	) AS y 
	PIVOT 
	( 
		SUM(InvoicedQty) 
		FOR monthDate IN ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12]) 
	) AS PivotTable; 

	INSERT INTO @CustomersProductsThisYearByMonthAmount 
	SELECT * 
	FROM 
	( 
		SELECT  I.kla__ref, P.afg__ref, MONTH(I.dok__dat) AS monthDate, IL.tota__bm 
		FROM hafgfk__ AS I INNER JOIN 
		hafgfl__ AS IL ON I.fak__ref = IL.fak__ref INNER JOIN 
		afgart__ AS P ON P.afg__ref = IL.afg__ref 
		WHERE YEAR(I.dok__dat) = @CalendarYear 
	) AS y 
	PIVOT 
	( 
		SUM(tota__bm) 
		FOR monthDate IN ([1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12]) 
	) AS PivotTable; 

	INSERT INTO @Result 
	SELECT cp2y.kla__ref, c.kla__rpn, cr.naam____, cp2y.afg__ref, p.afg_oms1, pg.omschr__, brand.prfm_oms, 
	qybm.[1], qybm.[2], qybm.[3], qybm.[4], qybm.[5], qybm.[6], qybm.[7], qybm.[8], qybm.[9], qybm.[10], qybm.[11], qybm.[12], 
	tybm.[1], tybm.[2], tybm.[3], tybm.[4], tybm.[5], tybm.[6], tybm.[7], tybm.[8], tybm.[9], tybm.[10], tybm.[11], tybm.[12], 
	lyt.LastYearTotal, lytda.LastYTDTotal, lyq.LastYearTotal, lytdq.LastYTDTotal 
	FROM 
		@CustomersProductsLast2Years cp2y LEFT JOIN 
		@CustomersProductsThisYearByMonthQuantity qybm ON cp2y.kla__ref = qybm.kla__ref AND cp2y.afg__ref = qybm.afg__ref LEFT JOIN
		@CustomersProductsThisYearByMonthAmount tybm ON cp2y.kla__ref = tybm.kla__ref AND cp2y.afg__ref = tybm.afg__ref LEFT JOIN 
		@CustomersProductsLastYearQuantities lyq ON cp2y.kla__ref = lyq.kla__ref AND cp2y.afg__ref = lyq.afg__ref LEFT JOIN
		@CustomersProductsLastYearAmounts lyt ON cp2y.kla__ref = lyt.kla__ref AND cp2y.afg__ref = lyt.afg__ref LEFT JOIN 
		@CustomersProductsLastYTDAmounts lytda ON cp2y.kla__ref = lytda.kla__ref AND cp2y.afg__ref = lytda.afg__ref LEFT JOIN 
		@CustomersProductsLastYTDQuantities lytdq ON cp2y.kla__ref = lytdq.kla__ref AND cp2y.afg__ref = lytdq.afg__ref LEFT JOIN 
		afgart__ p ON cp2y.afg__ref = p.afg__ref LEFT JOIN 
		prodfm__ brand ON brand.prfm_ref = p.prfm_ref LEFT JOIN 
		prodkl__ pg ON pg.prkl_ref = p.prkl_ref LEFT JOIN 
		klabas__ c ON cp2y.kla__ref = c.kla__ref  LEFT JOIN 
		verte___ cr ON c.vrt__ref = cr.vrt__ref;


	select * from @Result

END

