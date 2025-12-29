SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlStockedProducts]'))
EXEC dbo.sp_executesql @statement = N'/* This comment precedes the view definition*/
CREATE VIEW dbo.vw_stlStockedProducts
AS
SELECT        afg__ref, BookName, ProductName, RollSize, GrossPurchasePrice, Width, Height, AreaSqInches, prkl_ref, ProductGroup, Price, PriceType, ShelfLife, UnitDescription, MinimumOrderQuantity, InStock, ToDeliver, InProduction, 
                         LabelsInProduction, Available, Purchase, CaseCount, RollCount, Q1, U1, Q2, U2, Q3, U3, Q4, U4, BookMinPrice, BookMaxPrice, RollsOrdered, kla__ref, kla__rpn, tstval03, ProductStatus, RepeatAround, NumberAcross, 
                         MachineNames, LeadTime, STL_RnD, HideOnSampleReport, minstock, LastPOPrice, WebWidth, Waste, MSI_Price
FROM            dbo.vw_stlStockedProducts_w_RnD
WHERE        (tstval03 = N''0002'') OR
                         (tstval03 = N''0005'')
' 
