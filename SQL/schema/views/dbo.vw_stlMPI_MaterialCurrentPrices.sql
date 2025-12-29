SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlMPI_MaterialCurrentPrices]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlMPI_MaterialCurrentPrices]
AS

SELECT TOP 1 WITH TIES ID, art__ref, EffectiveDate, OldPrice, NewPrice, Deleted, Created, CreatedBy, Updated, UpdatedBy
FROM stlMPI_MaterialPriceIncreases
WHERE Deleted = 0
ORDER BY ROW_NUMBER() OVER (PARTITION BY art__ref ORDER BY EffectiveDate DESC, Updated DESC)

' 
