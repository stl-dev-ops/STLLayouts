SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_EstShipTime]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[vw_EstShipTime]
AS
SELECT     off__ref, SUM(dbo.GetMinutesFromCERMTimeString(vast_tyd) + dbo.GetMinutesFromCERMTimeString(prod_tyd)) AS EstShipTime
FROM         dbo.v4vpak__
GROUP BY off__ref
' 
