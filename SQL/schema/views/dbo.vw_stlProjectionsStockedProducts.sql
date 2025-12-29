SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProjectionsStockedProducts]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlProjectionsStockedProducts]
AS
SELECT psp.ID, psp.afg__ref, psp.kla__ref, dbo.klabas__.kla__rpn, dbo.klabas__.naam____, psp.PeriodID, pp.MonthID, pp.YearID, psp.ProjectedRollQuantity, 
pspn.Notes + '' <--note will expire '' + CONVERT(varchar, DATEADD(MONTH, 1, DATEFROMPARTS(YearID, MonthID, 1)), 101) + ''.'' Notes, 
Book.zynrefkl AS BookName, sp.MachineNames, sr.vrt__rpn AS SalesRepresentative, sp.ProductStatus
FROM stlProjectionsStockedProducts AS psp INNER JOIN
stlProjectionPeriods AS pp ON psp.PeriodID = pp.ID LEFT OUTER JOIN
vw_stlStockedProducts AS sp ON psp.afg__ref = sp.afg__ref LEFT OUTER JOIN
klabas__ ON psp.kla__ref = dbo.klabas__.kla__ref LEFT OUTER JOIN
stlProjectionsStockedProductsNotes AS pspn ON psp.ID = pspn.stlProjectionsStockedProductsID LEFT OUTER JOIN
verte___ AS sr ON dbo.klabas__.vrt__ref = sr.vrt__ref LEFT OUTER JOIN
(
	SELECT afg__ref, zynrefkl
    FROM afgclt__
    WHERE kla__ref = ''100506''
) AS Book ON psp.afg__ref = Book.afg__ref
' 
