SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_est_Jobprogress]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_est_Jobprogress
AS
SELECT     off__ref, kpn__ref, tedrkdto AS ESTGROFT,
                          (SELECT     SUM(vrbpap__) AS Expr1
                            FROM          dbo.v4etaf__
                            WHERE      (off__ref = dbo.v4eti___.off__ref) AND (kpn__ref = dbo.v4eti___.kpn__ref) AND (etap_ref IN
                                                       (SELECT     etap_ref
                                                         FROM          dbo.stdeap__
                                                         WHERE      (etap_typ = ''2'') AND (kombrf_9 = ''Rewinding'')))) AS ESTGOODFT, dbo.GetMinutesFromCERMTimeString(stel_tyd) AS ESTMRTIME, 
                      dbo.GetMinutesFromCERMTimeString(druk_tyd) AS ESTPRTIME, dbo.GetMinutesFromCERMTimeString(was__tyd) AS ESTBDTIME
FROM         dbo.v4eti___
' 
