SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScheduledPresses]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlScheduledPresses
AS
SELECT        ord__ref, CAST(STUFF
                             ((SELECT        N'', '' + Machine
                                 FROM            (SELECT DISTINCT ord__ref, plpl_ref AS Machine
                                                           FROM            plandv__ WHERE toestand != ''3'' AND plpl_ref IN (SELECT Scheduled_Machines_Filter FROM vw_stlScheduledMachineFilter WHERE cat__ref = ''027'')) AS MachineNames
                                 WHERE        MachineNames.ord__ref = ScheduledJobs.ord__ref
                                 ORDER BY Machine FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(1024)) MachineNames
FROM            (SELECT        ord__ref
                          FROM            plandv__
                          WHERE        (ord__ref <> N'''')) ScheduledJobs
GROUP BY ord__ref
' 
