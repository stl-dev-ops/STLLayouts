SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_footage]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_footage
AS
SELECT     ord__ref, SUM(aantal__) * - 1 AS ConsumedFT,
                          (SELECT     TOP (1) tedrk_to
                            FROM          dbo.v4eti___
                            WHERE      (dbo.stobew__.ord__ref = off__ref)) AS EstimatedFT,
                          (SELECT     SUM(aant_prd) AS Expr1
                            FROM          dbo.v4vrs___
                            WHERE      (dbo.stobew__.ord__ref = off__ref)) AS Produced,
                          (SELECT     SUM(b_aantal) AS Expr2
                            FROM          dbo.bstlyn__ AS bstlyn___3
                            WHERE      (dbo.stobew__.ord__ref = ord__ref)) AS Ordered,
                          (SELECT     TOP (1) tedrkd__
                            FROM          dbo.v4eti___ AS v4eti____1
                            WHERE      (dbo.stobew__.ord__ref = off__ref)) AS NetFT,
                          (SELECT     MAX(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___1
                            WHERE      (dbo.stobew__.ord__ref = ord__ref)) AS Date1,
                          (SELECT     MAX(vrz__dat) AS Expr1
                            FROM          dbo.bstlyn__ AS bstlyn___1
                            WHERE      (dbo.stobew__.ord__ref = ord__ref)) AS Date2,
                          (SELECT     TOP (1) kla__rpn
                            FROM          dbo.bstlyn__ AS bstlyn___2
                            WHERE      (dbo.stobew__.ord__ref = ord__ref)) AS Customer,
                          (SELECT     MAX(prd__ref) AS Expr1
                            FROM          dbo.order___
                            WHERE      (dbo.stobew__.ord__ref = ord__ref)) AS prd__ref,
                          (SELECT     MAX(omschr__) AS namejob
                            FROM          dbo.order___ AS order____1
                            WHERE      (dbo.stobew__.ord__ref = ord__ref)) AS Jobname,
                          (SELECT     SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS Minutes
                            FROM          dbo.hispnt__
                            WHERE      (dbo.stobew__.ord__ref = ord__ref) AND (wp___ref = ''5001'' OR
                                                   wp___ref = ''5002'' OR
                                                   wp___ref = ''5003'')) AS ActualMin,
                          (SELECT     SUM(machi___) / 340 * 60 AS Minutes
                            FROM          dbo.v4kkst__
                            WHERE      (dbo.stobew__.ord__ref = off__ref) AND (kst__srt = ''0'')) AS EstimatedMin
FROM         dbo.stobew__
WHERE     (art__srt = ''5'') AND (NOT (art__ref = ''100176'')) AND (NOT (art__ref = ''103160''))
GROUP BY ord__ref
' 
