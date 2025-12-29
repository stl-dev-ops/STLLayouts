SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPackingProcedureMissingFromIncentProgram]'))
EXEC dbo.sp_executesql @statement = N'
/* SELECT ord__ref, Add_Job_Packing_to_Incent FROM vw_stlPackingProcedureMissingFromIncentProgram;
   SELECT * FROM vw_stlPackingProcedureMissingFromIncentProgram */

CREATE   VIEW  vw_stlPackingProcedureMissingFromIncentProgram
AS
SELECT ord__ref, afg__ref, Product_vpak_ref, Job_vpak_ref, Product_vpak_ref_Exists_in_incentMinPerBox, Job_vpak_ref_Exists_in_incentMinPerBox, Add_Product_Packing_to_Incent, Add_Job_Packing_to_Incent, 
CASE WHEN Add_Product_Packing_to_Incent + Add_Job_Packing_to_Incent = ''''
	THEN ''''
ELSE
	''Add '' +
	CASE WHEN Add_Product_Packing_to_Incent = Add_Job_Packing_to_Incent
		THEN Add_Product_Packing_to_Incent
	ELSE
		CASE WHEN Add_Product_Packing_to_Incent = '''' 
			THEN Add_Job_Packing_to_Incent
		ELSE
			CASE WHEN Add_Job_Packing_to_Incent = '''' THEN
				Add_Product_Packing_to_Incent
			ELSE
				Add_Product_Packing_to_Incent + '', '' + Add_Job_Packing_to_Incent
			END
		END
	END
	+ '' Packing to Incent Program''
END Packing_Proc_Missing_From_Incent_Program_Note
FROM
(
	SELECT O.ord__ref, V.afg__ref, P.vpak_ref Product_vpak_ref, JP.vpak_ref Job_vpak_ref, 
	iP.vpak_ref AS Product_vpak_ref_Exists_in_incentMinPerBox,
	iJ.vpak_ref AS Job_vpak_ref_Exists_in_incentMinPerBox,
	CASE WHEN iP.vpak_ref IS NULL AND P.vpak_ref IS NOT NULL 
		THEN P.vpak_ref
	ELSE
		''''
	END 
	Add_Product_Packing_to_Incent,
	CASE WHEN iJ.vpak_ref IS NULL AND JP.vpak_ref IS NOT NULL 
		THEN JP.vpak_ref
	ELSE
		''''
	END 
	Add_Job_Packing_to_Incent
	FROM order___ O LEFT JOIN
	v4vrs___ V ON V.off__ref = O.ord__ref LEFT JOIN
	afgart__ P ON V.afg__ref = P.afg__ref LEFT JOIN
	v4vpak__ JP ON JP.off__ref = O.ord__ref LEFT JOIN
	incentMinPerBox iP ON iP.vpak_ref = P.vpak_ref LEFT JOIN
	incentMinPerBox iJ ON iJ.vpak_ref = JP.vpak_ref 
) T
' 
