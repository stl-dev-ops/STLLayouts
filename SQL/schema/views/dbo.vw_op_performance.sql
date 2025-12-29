SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_op_performance]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_op_performance
AS
SELECT     TOP (100) PERCENT datum___, datum___ AS datefrom, datum___ AS dateto, wn___ref, wp___ref, COUNT(DISTINCT ord__ref) AS nbr__job,
                          (SELECT     SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS Expr1
                            FROM          dbo.hispnt__
                            WHERE      (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref) AND (datum___ = dbo.hisatl__.datum___) AND (akt__ref = ''10'')) AS printhrs,
                          (SELECT     SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___2
                            WHERE      (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref) AND (datum___ = dbo.hisatl__.datum___) AND (ord__ref <> '''') AND 
                                                   (ord__ref <> ''N'') AND (akt__ref <> ''10'')) AS jobr_hrs,
                          (SELECT     SUM(dbo.GetMinutesFromCERMTimeString(duur____)) AS Expr1
                            FROM          dbo.hispnt__ AS hispnt___1
                            WHERE      (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref) AND (datum___ = dbo.hisatl__.datum___) AND (ord__ref = '''' OR
                                                   ord__ref = ''N'')) AS njobrhrs,
                          (SELECT     SUM(aantal__ * - 1) AS Expr1
                            FROM          dbo.stobew__
                            WHERE      (art__ref = ''103160'') AND (datum___ = dbo.hisatl__.datum___) AND (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref)) 
                      AS set__mat,
                          (SELECT     SUM(aantal__ * - 1) / COUNT(DISTINCT ord__ref) AS Expr1
                            FROM          dbo.stobew__ AS stobew___1
                            WHERE      (art__ref = ''103160'') AND (datum___ = dbo.hisatl__.datum___) AND (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref)) 
                      AS set_amat,
                          (SELECT     ROUND(SUM(totam_in - aantm_in) / SUM(totam_in) * 100, 1) AS Expr1
                            FROM          dbo.hlfvrd__
                            WHERE      (datum_in = dbo.hisatl__.datum___) AND (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref) AND (totam_in <> 0)) AS waste,
                          (SELECT     ROUND(SUM(totam_in), 1) AS Expr1
                            FROM          dbo.hlfvrd__ AS hlfvrd___1
                            WHERE      (datum_in = dbo.hisatl__.datum___) AND (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref) AND (totam_in <> 0)) AS tot_feet,
                          (SELECT     ROUND(SUM(goodft), 0) AS Expr1
                            FROM          dbo.vw_Goodfeet
                            WHERE      (datum_in = dbo.hisatl__.datum___) AND (wp___ref = dbo.hisatl__.wp___ref) AND (wn___ref = dbo.hisatl__.wn___ref)) AS tot_good
FROM         dbo.hisatl__
WHERE     (wp___ref IN
                          (SELECT     wp___ref
                            FROM          dbo.werkpo__
                            WHERE      (kenmerk_ = ''Press''))) AND (ord__ref <> '''') AND (ord__ref <> ''N'') AND (ord__ref NOT IN
                          (SELECT     ord__ref
                            FROM          dbo.plandv__
                            WHERE      (plpl_ref = ''B2'' OR
                                                   plpl_ref = ''A10'' OR
                                                   plpl_ref = ''A10'') AND (aktie___ = ''21'') AND (toestand = ''1'' OR
                                                   toestand = ''2'')))
GROUP BY datum___, wn___ref, wp___ref
ORDER BY datum___, wn___ref, wp___ref
' 
