SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_StockMovementsByYearMonth]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_StockMovementsByYearMonth
AS
SELECT     TOP (100) PERCENT art__ref, DeliveryYear, [01] AS ''Jan'', [02] AS ''Feb'', [03] AS ''Mar'', [04] AS ''Apr'', [05] AS ''May'', [06] AS ''Jun'', [07] AS ''Jul'', [08] AS ''Aug'', [09] AS ''Sep'',
                       [10] AS ''Oct'', [11] AS ''Nov'', [12] AS ''Dec''
FROM         (SELECT     *
                       FROM          (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                               FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                              AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                       FROM          dbo.stobew__
                                                                       WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                       GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                       HAVING      (art__srt = N''5'')) AS Consumptions
                                               GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2011 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                              [09], [10], [11], [12])) AS p2011
                       WHERE      DeliveryYear = 2011
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2012 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2012
                       WHERE     DeliveryYear = 2012
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2013 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2013
                       WHERE     DeliveryYear = 2013
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2014 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2014
                       WHERE     DeliveryYear = 2014
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2015 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2015
                       WHERE     DeliveryYear = 2015
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2016 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2016
                       WHERE     DeliveryYear = 2016
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2017 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2017
                       WHERE     DeliveryYear = 2017
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2018 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2018
                       WHERE     DeliveryYear = 2018
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2019 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2019
                       WHERE     DeliveryYear = 2019
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2020 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2020
                       WHERE     DeliveryYear = 2020
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2021 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2021
                       WHERE     DeliveryYear = 2021
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2022 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2022
                       WHERE     DeliveryYear = 2022
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2023 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2023
                       WHERE     DeliveryYear = 2023
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2024 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2024
                       WHERE     DeliveryYear = 2024
                       UNION
                       SELECT     *
                       FROM         (SELECT     art__ref, DeliveryMonth, DeliveryYear, MAX(ABS(aantal__)) AS ConsumedFeet
                                              FROM          (SELECT     art__ref, CASE WHEN MONTH(datum___) < 10 THEN ''0'' + CAST(MONTH(datum___) AS VARCHAR(1)) ELSE CAST(MONTH(datum___) 
                                                                                             AS VARCHAR(2)) END AS DeliveryMonth, YEAR(datum___) AS DeliveryYear, SUM(aantal__) AS aantal__
                                                                      FROM          dbo.stobew__
                                                                      WHERE      (ord__ref <> '''') AND (art__ref <> '''') AND (ord__ref <> ''N'')
                                                                      GROUP BY art__ref, soort___, wp___ref, art__srt, datum___
                                                                      HAVING      (art__srt = N''5'')) AS Consumptions
                                              GROUP BY art__ref, DeliveryMonth, DeliveryYear) AS t2025 PIVOT (SUM(ConsumedFeet) FOR DeliveryMonth IN ([01], [02], [03], [04], [05], [06], [07], [08], 
                                             [09], [10], [11], [12])) AS p2025
                       WHERE     DeliveryYear = 2025) AS byYearbyMonth
' 
