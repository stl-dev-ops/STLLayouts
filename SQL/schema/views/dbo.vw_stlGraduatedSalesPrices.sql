SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlGraduatedSalesPrices]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlGraduatedSalesPrices]
AS
SELECT bon__ref, off__ref, oplage__, vkp_1000
FROM v1staf__
WHERE vkp_1000 <> 0
UNION ALL
SELECT bon__ref, off__ref, oplage__, vkp_1000
FROM v1off___
WHERE vkp_1000 <> 0
' 
