SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_PressClockings_per_activity]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_PressClockings_per_activity
AS
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReady'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''

UNION ALL

SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReady'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'' or akt__ref=''91'' or akt__ref=''92'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReady'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'' or akt__ref=''91'' or akt__ref=''92'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReady'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'' or akt__ref=''91'' or akt__ref=''92'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyAM'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''06'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyAM'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''06'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyAM'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''06'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyAM'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''06'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyPM'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''07'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyPM'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''07'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyPM'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''07'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyPM'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''07'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Print'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''10'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Print'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''10'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Print'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''10'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Print'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''10'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Breakdown'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Breakdown'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Breakdown'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''Breakdown'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownTrans'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''51'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownTrans'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''51'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownTrans'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''51'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownTrans'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''51'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Press'') AND stoppen_ NOT LIKE ''%XX%''









UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCO'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'' OR akt__ref=''1'' OR akt__ref=''17'' or akt__ref=''26'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCO'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'' OR akt__ref=''1'' OR akt__ref=''17'' or akt__ref=''26'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCO'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'' OR akt__ref=''1'' OR akt__ref=''17'' or akt__ref=''26'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCO'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''00'' OR
                      akt__ref = ''05'' OR akt__ref=''1'' OR akt__ref=''17'' or akt__ref=''26'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOAM'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''06'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOAM'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''06'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOAM'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''06'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOAM'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''06'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOPM'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''07'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOPM'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''07'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOPM'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''07'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''MakeReadyCOPM'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''07'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''PrintCO'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''10'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''PrintCO'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''10'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''PrintCO'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''10'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''PrintCO'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''10'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCO'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCO'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCO'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCO'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''45'' OR
                      akt__ref = ''50'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCOTrans'' AS type____, ''w_atl1__'' AS table___
FROM         w_atl1__
WHERE     (akt__ref = ''51'') AND w_atl1__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCOTrans'' AS type____, ''w_atl2__'' AS table___
FROM         w_atl2__
WHERE     (akt__ref = ''51'') AND w_atl2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCOTrans'' AS type____, ''w_pnt2__'' AS table___
FROM         w_pnt2__
WHERE     (akt__ref = ''51'') AND w_pnt2__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
UNION ALL
SELECT     wp___ref, wn___ref, ord__ref, datum___, dbo.GetMinutesFromCERMTimeString(stoppen_) - dbo.GetMinutesFromCERMTimeString(starten_) AS time____, 
                      ''BreakdownCOTrans'' AS type____, ''hispnt__'' AS table___
FROM         hispnt__
WHERE     (akt__ref = ''51'') AND hispnt__.wp___ref IN
                          (SELECT     wp___ref
                            FROM          werkpo__
                            WHERE      kenmerk_ = ''Cohesio'') AND stoppen_ NOT LIKE ''%XX%''
' 
