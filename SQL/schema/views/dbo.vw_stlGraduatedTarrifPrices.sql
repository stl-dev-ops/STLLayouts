SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlGraduatedTarrifPrices]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlGraduatedTarrifPrices]
AS
SELECT td.bon__ref, v.best_dat, td.comment, t.tar_def_ref, t.tar__ref, td.beg__dat, td.end__dat,  
MinQuantity = t.oplage__,
MaxQuantity = ISNULL(nt.oplage__ - 1, td.mx___opl), 
t.var___pr Price, ppt.var___pr PreviousPrice,
PercentIncreaseFromPreviousPrice = 
CASE WHEN ISNULL(ppt.var___pr, 0) <> 0 THEN
	(t.var___pr - ppt.var___pr) / ppt.var___pr
ELSE
	NULL
END

FROM v1tar_definition__ td INNER JOIN
v1tar___ t ON td.tar_def_ref = t.tar_def_ref AND td.bon__ref = t.bon__ref INNER JOIN 
v1bon___ v ON td.bon__ref = v.bon__ref LEFT JOIN 
v1tar___ AS nt ON t.bon__ref = nt.bon__ref AND t.tar_def_ref = nt.tar_def_ref AND CAST(t.tar__ref AS INT) + 1 = CAST(nt.tar__ref AS INT) LEFT JOIN 
v1tar___ AS ppt ON t.bon__ref = ppt.bon__ref AND CAST(t.tar_def_ref AS INT) - 1 = CAST(ppt.tar_def_ref AS INT) AND t.oplage__ = ppt.oplage__  

' 
