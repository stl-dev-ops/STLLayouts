SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateStlConsumptionsDataWarehouse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateStlConsumptionsDataWarehouse] AS' 
END





-- =============================================
-- Author:		jeff rupp
-- Create date: 07/21/2022
-- Description:	Normalize CERM calendar into stlBusinessDaysCalendar
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateStlConsumptionsDataWarehouse]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	DELETE FROM stlConsumptions;

	INSERT INTO stlConsumptions 
		( ID, art__ref, artc_ref, omschr__, datum___, aantal__, FirstConsumption, LastConsumption, afg__ref, ProductDescription, ProductGroupID, ProductGroup, ord__ref, kla__ref, kla__rpn, soort___, kmnt_ref )

	SELECT ROW_NUMBER() OVER (ORDER BY C.datum___) RowNum, C.art__ref, M.artc_ref, CAT.omschr__, C.datum___, C.aantal__, ConsumptionDateRanges.FirstConsumption, ConsumptionDateRanges.LastConsumption, P.afg__ref, 
	P.[Product description 1] AS ProductDescription, P.[Product Group ID] AS ProductGroupID, 
	P.[Product group] AS ProductGroup, C.ord__ref, K.kla__ref, K.kla__rpn, C.soort___, C.kmnt_ref 
	FROM stobew__ AS C LEFT JOIN
	artiky__ M ON C.art__ref = M.art__ref LEFT JOIN
	artcat__ CAT ON CAT.artc_ref = M.artc_ref LEFT JOIN
	klabas__ K ON C.kla__ref = K.kla__ref LEFT JOIN
	(
		SELECT TOP 1 WITH TIES V.off__ref, V.afg__ref, PR.[Product description 1], PR.[Product group ID], PR.[Product group]
		FROM order___ J LEFT JOIN
		v4vrs___ V ON V.off__ref = J.ord__ref LEFT JOIN
		vw_stlProducts PR ON V.afg__ref = PR.[Product ID]
		ORDER BY ROW_NUMBER() OVER (PARTITION BY V.off__ref ORDER BY V.afg__ref DESC)
	) P ON P.off__ref = C.ord__ref LEFT JOIN
	(SELECT ord__ref, MIN(datum___) AS FirstConsumption, MAX(datum___) AS LastConsumption
	 FROM stobew__
	 GROUP BY ord__ref
	) AS ConsumptionDateRanges ON ConsumptionDateRanges.ord__ref = C.ord__ref 
	WHERE 
	(
		C.soort___ = '3' 
		OR (C.soort___ = '5' AND C.ord__ref <> '') 
		OR C.soort___ = '6' 
		OR C.soort___ = 'C'
	)
	AND M.artc_ref IN
	(
		'10',    /* COM - Adhesives            */
		'8',     /* COM - Boxes                */
		'9',     /* COM - Cores                */
		'21',    /* COM - Holo foil            */
		'6',     /* COM - Ink                  */
		'5',     /* COM - Label Material       */
		'41',    /* COM - Labels               */
		'94',    /* COM – Outsourced Labels    */
		'102',   /* COM - Outsourced Raw Goods */
		'11',    /* COM - Packaging Supplies   */
		'000010' /* COM-Laminate               */
	)

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

