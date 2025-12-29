SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlInvoicesByYearMonth]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlInvoicesByYearMonth]
AS
SELECT InvoiceYear, InvoiceMonth, ProductGroup, Brand, SUM(InvoicedQuantity) AS InvoicedQuantity, SUM(InvoicedAmount) AS InvoicedAmount, prkl_ref, prfm_ref
FROM 
(
	SELECT YEAR(so.dok__dat) AS InvoiceYear, MONTH(so.dok__dat) AS InvoiceMonth, pg.omschr__ AS ProductGroup, 
	CASE WHEN isnull(b.prfm_ref, '''') IN (''0000000002'', ''0000000003'', ''0000000005'', ''0000000014'', ''0000000016'') THEN b.prfm_ref ELSE '''' END AS prfm_ref,
	CASE WHEN isnull(b.prfm_ref, '''') IN (''0000000002'', ''0000000003'', ''0000000005'', ''0000000014'', ''0000000016'') THEN b.prfm_oms ELSE '''' END AS Brand, 
	so.l_aantal AS InvoicedQuantity, so.bedrf_bm AS InvoicedAmount, pg.prkl_ref
	FROM bstlyn__ so LEFT JOIN
	dbo.prodkl__ pg RIGHT JOIN
	dbo.afgart__ p ON pg.prkl_ref = p.prkl_ref ON so.afg__ref = p.afg__ref LEFT OUTER JOIN
	dbo.prodfm__ b ON p.prfm_ref = b.prfm_ref
	WHERE so.kla__ref <> ''100208'' AND p.afg__ref IS NOT NULL
) AS ibym
GROUP BY InvoiceYear, InvoiceMonth, ProductGroup, Brand, prkl_ref, prfm_ref
' 
