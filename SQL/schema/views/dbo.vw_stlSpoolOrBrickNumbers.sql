SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlSpoolOrBrickNumbers]'))
EXEC dbo.sp_executesql @statement = N'



CREATE VIEW [dbo].[vw_stlSpoolOrBrickNumbers]
AS
SELECT box__ref, NumberOfRolls, BrickNumbers, SpoolNumbers, 
CASE 
  WHEN SpoolNumbers = '''' THEN CAST(NumberOfRolls AS NVARCHAR) + '' rolls''
  WHEN ISNUMERIC(LEFT(SpoolNumbers, 1)) = 0 THEN BrickNumbers
ELSE 
  SpoolNumbers
END AS RollNumbers
FROM 
(
SELECT box__ref, 

COUNT(box__ref) NumberOfRolls,

CAST(STUFF ((SELECT N'', '' + CAST(volgnr__ AS NVARCHAR)
FROM (SELECT DISTINCT box__ref, volgnr__ FROM afgsku__) Boxes
WHERE pSKU.box__ref = Boxes.box__ref
ORDER BY volgnr__ FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(1000)) BrickNumbers,

ISNULL(CAST(STUFF ((SELECT N'', '' + inhoud01
FROM (SELECT DISTINCT box__ref, inhoud01 FROM afgsku__ WHERE inhoud01 <> '''') Boxes
WHERE pSKU.box__ref = Boxes.box__ref
ORDER BY inhoud01 FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(1000)), '''') SpoolNumbers

FROM afgsku__ pSKU
GROUP BY box__ref) Roll_Numbers
' 
