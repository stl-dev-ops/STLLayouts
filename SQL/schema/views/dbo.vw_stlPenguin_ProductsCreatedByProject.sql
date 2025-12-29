SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPenguin_ProductsCreatedByProject]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlPenguin_ProductsCreatedByProject]
AS

SELECT

ProjectID = TRIM(stl_RnD.antw_txt), 

p.afg__ref, p.afg_oms1, CustomerInvoices = ISNULL(ci.TotalInvoiced, 0),

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
	WHERE tabname_ = ''afgart__'' AND vrg__ref = ''000019'' 
) AS stl_RnD ON p.afg__ref = stl_RnD.det__ref LEFT JOIN 
( 
	SELECT [pi].afg__ref, SUM(fak__refTotalInvoiced.TotalInvoiced) TotalInvoiced 
	FROM 
	( 
		SELECT DISTINCT afg__ref, fak__ref 
		FROM hafgfl__ 
		WHERE afg__ref <> '''' 
	) [pi] LEFT JOIN 
	( 
		SELECT fak__ref, SUM(tota__bm) TotalInvoiced 
		FROM hafgfl__ li 
		GROUP BY fak__ref 
	) fak__refTotalInvoiced ON [pi].fak__ref = fak__refTotalInvoiced.fak__ref 
	GROUP BY [pi].afg__ref 
) ci ON p.afg__ref = ci.afg__ref 



' 
