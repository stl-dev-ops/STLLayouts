SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobDeptTimeWasteMet]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_JobDeptTimeWasteMet
AS
SELECT        i.ord__ref, kenmerk_, CASE WHEN CHARINDEX(''Met'', cohes_t_met) > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', cohes_t_met) > 0 THEN ''Short'' ELSE ''No'' END TimeMet, CASE WHEN CHARINDEX(''Met'', cohes_w_met) 
                         > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', cohes_w_met) > 0 THEN ''Short'' ELSE ''No'' END WasteMet
FROM            incent__ i JOIN
                         incente_ e ON i.ord__ref = e.ord__ref LEFT JOIN
                         werkpo__ w ON e.department = w.kenmerk_
WHERE        department = ''Cohesio'' OR
                         department = ''Assistant''
UNION
SELECT        i.ord__ref, kenmerk_, CASE WHEN CHARINDEX(''Met'', press_t_met) > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', press_t_met) > 0 THEN ''Short'' ELSE ''No'' END TimeMet, CASE WHEN CHARINDEX(''Met'', press_w_met) 
                         > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', press_w_met) > 0 THEN ''Short'' ELSE ''No'' END WasteMet
FROM            incent__ i JOIN
                         incente_ e ON i.ord__ref = e.ord__ref LEFT JOIN
                         werkpo__ w ON e.department = w.kenmerk_
WHERE        department = ''Press''
UNION
SELECT        i.ord__ref, kenmerk_, CASE WHEN CHARINDEX(''Met'', coati_t_met) > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', coati_t_met) > 0 THEN ''Short'' ELSE ''No'' END TimeMet, CASE WHEN CHARINDEX(''Met'', coati_w_met) 
                         > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', coati_w_met) > 0 THEN ''Short'' ELSE ''No'' END WasteMet
FROM            incent__ i JOIN
                         incente_ e ON i.ord__ref = e.ord__ref LEFT JOIN
                         werkpo__ w ON e.department = w.kenmerk_
WHERE        department = ''Coating''
UNION
SELECT        i.ord__ref, kenmerk_, CASE WHEN department = ''rewinding'' AND ((rewindWaitOnPress = 1 AND rewindWaitOverride = 0) OR
                         (rewindWaitOnPress = 0 AND rewindWaitOverride = 1)) THEN CASE WHEN CHARINDEX(''Met'', rewindWaitOnPress_t_met) > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', rewindWaitOnPress_t_met) 
                         > 0 THEN ''Short'' ELSE ''No'' END ELSE CASE WHEN CHARINDEX(''Met'', rewin_t_met) > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', rewin_t_met) > 0 THEN ''Short'' ELSE ''No'' END END rewin_tw_met, '''' WasteMet
FROM            incent__ i JOIN
                         incente_ e ON i.ord__ref = e.ord__ref LEFT JOIN
                         werkpo__ w ON e.department = w.kenmerk_
WHERE        department = ''Rewinding''
UNION
SELECT        i.ord__ref, kenmerk_, CASE WHEN CHARINDEX(''Met'', spool_at_met) > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', spool_at_met) > 0 THEN ''Short'' ELSE ''No'' END TimeMet, CASE WHEN CHARINDEX(''Met'', spool_w_met) 
                         > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', spool_w_met) > 0 THEN ''Short'' ELSE ''No'' END WasteMet
FROM            incent__ i JOIN
                         incente_ e ON i.ord__ref = e.ord__ref LEFT JOIN
                         werkpo__ w ON e.department = w.kenmerk_
WHERE        department = ''Spooling''
UNION
SELECT        i.ord__ref, kenmerk_, CASE WHEN CHARINDEX(''Met'', shipi_t_met) > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', shipi_t_met) > 0 THEN ''Short'' ELSE ''No'' END TimeMet, CASE WHEN CHARINDEX(''Met'', shipi_w_met) 
                         > 0 THEN ''Yes'' WHEN CHARINDEX(''Short'', shipi_w_met) > 0 THEN ''Short'' ELSE ''No'' END WasteMet
FROM            incent__ i JOIN
                         incente_ e ON i.ord__ref = e.ord__ref LEFT JOIN
                         werkpo__ w ON e.department = w.kenmerk_
WHERE        department = ''Shipping''
' 
