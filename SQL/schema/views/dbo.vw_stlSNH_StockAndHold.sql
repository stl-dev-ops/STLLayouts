SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSNH_StockAndHold]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlSNH_StockAndHold]
AS
SELECT        SNH.ID,
                             (SELECT        lev__rpn
                               FROM            dbo.levbas__
                               WHERE        (lev__ref = dbo.artiky__.lev__ref)) AS Supplier, dbo.artiky__.art__rpn, WarehouseStock.WarehouseSupply, 
                         CASE WHEN SNH.WarehouseMax = 0 THEN 0 ELSE (WarehouseStock.WarehouseSupply / SNH.WarehouseMax) * 100 END AS WarehouseSupplyPercent, 
                         CASE WHEN SNH.WarehouseMax = 0 THEN 0 ELSE (CAST(WarehouseStock.WarehouseSupply AS float) / CAST(SNH.WarehouseMax AS float)) END AS WarehouseSupplyFraction, SNH.HoldTime, SNH.HoldTimeUnitID, 
                         HoldUnits.Unit AS HoldTimeUnit, SNH.MinReleaseNotes, SNH.ManufacturingTimeUnitID, ManufacturingUnits.Unit AS ManufacturingTimeUnit, dbo.artikn__.in_stock, dbo.artikn__.reserve_, dbo.artikn__.in___qrt, 
                         dbo.artikn__.in_stock - dbo.artikn__.reserve_ - dbo.artikn__.in___qrt AS Available, dbo.artikn__.in_best_,
                             (SELECT        SUM(gaant___) AS Expr1
                               FROM            dbo.grsbon__
                               WHERE        (lev__tst = ''1'') AND (fiat__ok NOT IN (''2'', ''6'')) AND (art__ref = SNH.art__ref) AND (glev_dat <=
                                                             (SELECT        MAX(BusinessDate) AS Expr1
                                                               FROM            (SELECT        TOP (SNH.BusinessTransitDays) YearID, MonthID, DayID, BusinessDay, BusinessDate, WeekDayID
                                                                                         FROM            dbo.stlBusinessDaysCalendar
                                                                                         WHERE        (BusinessDate >= GETDATE()) AND (BusinessDay = ''Y'')) AS t))) AS in_best_Before_TransitTime,
                             (SELECT        SUM(gaant___) AS Expr1
                               FROM            dbo.grsbon__ AS grsbon___1
                               WHERE        (lev__tst = ''1'') AND (fiat__ok NOT IN (''2'', ''6'')) AND (art__ref = SNH.art__ref) AND (glev_dat >
                                                             (SELECT        MAX(BusinessDate) AS Expr1
                                                               FROM            (SELECT        TOP (SNH.BusinessTransitDays) YearID, MonthID, DayID, BusinessDay, BusinessDate, WeekDayID
                                                                                         FROM            dbo.stlBusinessDaysCalendar AS stlBusinessDaysCalendar_2
                                                                                         WHERE        (BusinessDate >= GETDATE()) AND (BusinessDay = ''Y'')) AS t_2))) AS in_best_After_TransitTime, 
                         dbo.artikn__.in_best_ + (dbo.artikn__.in_stock - dbo.artikn__.reserve_ - dbo.artikn__.in___qrt) AS FinalStock, SNH.ReorderSoonPercent, SNH.ReorderNowPercent, CAST(SNH.ManufacturingTime AS varchar) 
                         + '' '' + ManufacturingUnits.Unit AS ManufacturingTimeToString, CAST(SNH.HoldTime AS varchar) + '' '' + HoldUnits.Unit AS HoldTimeToString, SNH.ManufacturingTime, SNH.TransitTime, SNH.TransitTimeUnitID, 
                         TransitUnits.Unit AS TransitTimeUnit, CAST(SNH.TransitTime AS varchar) + '' days'' AS TransitTimeToString, SNH.art__ref, SNH.BusinessTransitDays
FROM            dbo.artiky__ RIGHT OUTER JOIN
                             (SELECT        ID, art__ref, HoldTime, HoldTimeUnitID, ManufacturingTime, ManufacturingTimeUnitID, TransitTime, TransitTimeUnitID, MinReleaseNotes, PalletQuantity, PalletUnitID, WarehouseMax, ReorderSoonPercent, 
                                                         ReorderNowPercent, Deleted, Created, CreatedBy, Updated, UpdatedBy, ISNULL(TransitTime, 10) AS BusinessTransitDays
                               FROM            dbo.stlSNH_StockAndHold) AS SNH LEFT OUTER JOIN
                         dbo.stlSNH_TimeUnit AS TransitUnits ON SNH.TransitTimeUnitID = TransitUnits.ID LEFT OUTER JOIN
                         dbo.stlSNH_TimeUnit AS ManufacturingUnits ON SNH.ManufacturingTimeUnitID = ManufacturingUnits.ID LEFT OUTER JOIN
                         dbo.stlSNH_TimeUnit AS HoldUnits ON SNH.HoldTimeUnitID = HoldUnits.ID LEFT OUTER JOIN
                         dbo.artikn__ ON SNH.art__ref = dbo.artikn__.art__ref ON dbo.artiky__.art__ref = SNH.art__ref LEFT OUTER JOIN
                             (SELECT        WarehouseDelivery.StockAndHoldID, ISNULL(WarehouseDelivery.Amount, 0) - ISNULL(STLDelivery.Amount, 0) AS WarehouseSupply
                               FROM            (SELECT        StockAndHoldID, SUM(Amount) AS Amount
                                                         FROM            dbo.stlSNH_Movements
                                                         WHERE        (Deleted = 0) AND (DestinationID = 1)
                                                         GROUP BY StockAndHoldID) AS WarehouseDelivery LEFT OUTER JOIN
                                                             (SELECT        StockAndHoldID, SUM(Amount) AS Amount
                                                               FROM            dbo.stlSNH_Movements AS stlSNH_Movements_1
                                                               WHERE        (Deleted = 0) AND (DestinationID = 2)
                                                               GROUP BY StockAndHoldID) AS STLDelivery ON WarehouseDelivery.StockAndHoldID = STLDelivery.StockAndHoldID) AS WarehouseStock ON SNH.ID = WarehouseStock.StockAndHoldID
WHERE        (SNH.Deleted = 0)
' 
