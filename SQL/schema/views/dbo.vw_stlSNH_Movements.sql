SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSNH_Movements]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlSNH_Movements
AS
SELECT        dbo.stlSNH_Movements.ID, dbo.stlSNH_Movements.StockAndHoldID, dbo.stlSNH_Movements.OrderDate, dbo.stlSNH_Movements.PO#, dbo.stlSNH_Movements.Notes, dbo.stlSNH_Movements.DestinationID, 
                         dbo.stlSNH_Destinations.Destination, dbo.stlSNH_Movements.Amount, dbo.stlSNH_Movements.Deleted, dbo.stlSNH_Movements.Created, dbo.stlSNH_Movements.CreatedBy
FROM            dbo.stlSNH_Movements INNER JOIN
                         dbo.stlSNH_Destinations ON dbo.stlSNH_Movements.DestinationID = dbo.stlSNH_Destinations.ID
WHERE        (dbo.stlSNH_Movements.Deleted = 0)
' 
