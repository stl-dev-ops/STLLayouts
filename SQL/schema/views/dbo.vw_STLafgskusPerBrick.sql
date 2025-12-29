SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLafgskusPerBrick]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLafgskusPerBrick
AS
SELECT        sb.stlST_RewindBrickID, sb.rewindBrickNo, COUNT(a.sku__ref) AS skuCount, MIN(sb.labelsPerRow) AS MinLabelsPerRow
FROM            dbo.afgsku__ AS a INNER JOIN
                         dbo.stlST_RewindBrick AS sb ON CASE WHEN 1 = ISNUMERIC(a.inhoud04 + ''.0'') AND LEN(a.inhoud04) <= 7 THEN CAST(a.inhoud04 AS int) ELSE 0 END = sb.stlST_RewindBrickID
GROUP BY sb.stlST_RewindBrickID, sb.rewindBrickNo
' 
