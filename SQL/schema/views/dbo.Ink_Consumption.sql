SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Ink_Consumption]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.Ink_Consumption
AS
SELECT     ord__ref, art__ref, datum___, DATEPART(YYYY, datum___) AS myear, DATEPART(MM, datum___) AS Expr1, DATEPART(DD, datum___) AS Expr2, SUM(aantal__) 
                      * - 1 AS conso
FROM         dbo.stobew__
WHERE     (soort___ = ''3'') AND (art__srt = ''6'')
GROUP BY ord__ref, art__ref, datum___
' 
