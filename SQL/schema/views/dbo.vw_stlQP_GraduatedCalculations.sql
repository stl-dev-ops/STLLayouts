SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlQP_GraduatedCalculations]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlQP_GraduatedCalculations]
AS
SELECT GC.QuoteID, GC.RunQuantity, GC.Copies, GC.Margin_Percent, GC.MarkUp_Percent, GC.COG_Percent, GC.BaseRunFeet, GC.BaseRunWasteFeet, GC.OfflineFinishingMakeReadyFeet, GC.OfflineFinishingWasteFeet, 
GC.InlineMakeReadyTime, GC.InlineFinishingWasteFeet, GC.TotalShiftChangesFeet, GC.TotalJobFeet, GC.BaseRunTime, GC.RollChangesTime, GC.ExpectedShiftChanges, GC.ShiftStartupsTime, GC.TotalJobTime, GC.TotalPDD, 
GC.TotalINK_Cost, GC.TotalMaterialCost, GC.TotalCOG, GC.AdminCost, GC.BaseCost, GC.TotalPrice, GC.PricePer1000, GC.PriceLockID, GC.Deleted, GC.Created, GC.CreatedBy, 
P.SetupHours + GC.InlineMakeReadyTime / 60 AS MR_Time, GC.TotalJobTime - (P.SetupHours + GC.InlineMakeReadyTime / 60 + P.TearDownHours) AS PrintingTime, (P.SetupHours + GC.InlineMakeReadyTime / 60) 
* P.PressCostPerHour AS MR_Cost, (GC.TotalJobTime - (P.SetupHours + GC.InlineMakeReadyTime / 60 + P.TearDownHours)) * P.PressCostPerHour AS PrintingCost, 
P.TearDownHours * P.PressCostPerHour AS TearDownCost, GC.ShowOnQuoteLetter 

FROM stlQP_GraduatedCalculations AS GC INNER JOIN
stlQP_Quotes AS Q ON GC.QuoteID = Q.ID INNER JOIN
stlQP_Parameters AS P ON Q.ParameterID = P.ID

WHERE (GC.Deleted = 0) AND (Q.Deleted = 0)
' 
