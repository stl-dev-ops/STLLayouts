SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlExpirationDates]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlExpirationDates]
AS
SELECT sku.crea_dat, 
CASE toestand 
WHEN ''0'' THEN ''To produce'' 
WHEN ''1'' THEN ''In stock'' 
WHEN ''2'' THEN ''Picked'' 
WHEN ''3'' THEN ''Shipped'' 
WHEN ''4'' THEN ''Deleted (Don''''t modify job)'' 
WHEN ''5'' THEN ''Deleted (Change job)'' 
WHEN ''6'' THEN ''Consumed'' 
END AS [Type], 
sku.afg__ref, p.afg__rpn, sku.sku__ref, 
COALESCE (ShelfLife.antw_oms, ''12 Months'') AS antw_oms, 
CASE 
WHEN 
	ShelfLife.antw_oms IS NULL THEN DATEADD(Month, 12, sku.crea_dat) 
ELSE 
	DATEADD(Month, CAST(LEFT(ShelfLife.antw_oms, 2) AS int), sku.crea_dat) 
END AS ExpirationDate, 
p.afg_oms1, sku.aant__ex
FROM afgsku__ sku INNER JOIN
dbo.afgart__ p ON sku.afg__ref = p.afg__ref LEFT JOIN
(
	SELECT gegdet__.det__ref, dbo.gegant__.antw_oms
	FROM gegdet__ INNER JOIN
	gegant__ ON gegdet__.vrg__ref = gegant__.vrg__ref AND 
	gegdet__.antw_ref = gegant__.antw_ref AND 
	gegdet__.tabname_ = ''afgart__'' AND 
	gegdet__.vrg__ref = ''000016''
) AS ShelfLife ON sku.afg__ref = ShelfLife.det__ref
WHERE sku.afg__ref <> ''104112''
' 
