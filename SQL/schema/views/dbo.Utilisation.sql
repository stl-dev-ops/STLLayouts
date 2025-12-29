SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Utilisation]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.Utilisation
AS
SELECT     DATEPART(YYYY, datum___) AS year, DATEPART(WK, datum___) AS week, wp___ref, SUM(LEFT(duur____, 3) * 60 + RIGHT(duur____, 2)) AS minutes, akt__ref
FROM         dbo.hispnt__
GROUP BY datum___, wp___ref, akt__ref
' 
