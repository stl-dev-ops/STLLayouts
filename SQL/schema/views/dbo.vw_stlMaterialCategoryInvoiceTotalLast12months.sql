SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMaterialCategoryInvoiceTotalLast12months]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlMaterialCategoryInvoiceTotalLast12months]
AS
SELECT m.art__ref, m.art__rpn, MaterialInvoiceTotalLast12Months.InvoiceTotal AS MaterialInvoiceTotalLast12Months, CategoryInvoiceTotalLast12Months.oms_rbk_, 
CategoryInvoiceTotalLast12Months.InvoiceTotal AS CategoryInvoiceTotalLast12Months, 
ROUND(MaterialInvoiceTotalLast12Months.InvoiceTotal / CategoryInvoiceTotalLast12Months.InvoiceTotal, 4) AS MaterialPercentOfCategory, s.lev__rpn
FROM artiky__ AS m INNER JOIN
(
	SELECT rbk__ref, oms_rbk_, SUM(fpri__bm) AS InvoiceTotal
	FROM 
	(
		SELECT r.rbk__ref, r.oms_rbk_, poc.fpri__bm
		FROM artiky__ mc INNER JOIN
		rubrik__ r ON mc.rbk__ref = r.rbk__ref INNER JOIN
		grsbon__ poc ON mc.art__ref = poc.art__ref
		WHERE (poc.levr_dat BETWEEN DATEADD(Year, - 1, GETDATE()) AND GETDATE())
	) AS citl12mo
	GROUP BY rbk__ref, oms_rbk_
) AS CategoryInvoiceTotalLast12Months ON m.rbk__ref = CategoryInvoiceTotalLast12Months.rbk__ref INNER JOIN
(
	SELECT art__ref, art__rpn, SUM(fpri__bm) AS InvoiceTotal
	FROM
	(
		SELECT mm.art__ref, mm.art__rpn, pom.fpri__bm
		FROM grsbon__ pom INNER JOIN
		artiky__ mm ON mm.art__ref = pom.art__ref
		WHERE (pom.levr_dat BETWEEN DATEADD(Year, - 1, GETDATE()) AND GETDATE())
	) AS mitl12mo
	GROUP BY art__ref, art__rpn
) AS MaterialInvoiceTotalLast12Months ON m.art__ref = MaterialInvoiceTotalLast12Months.art__ref LEFT OUTER JOIN
levbas__ AS s ON m.lev__ref = s.lev__ref
' 
