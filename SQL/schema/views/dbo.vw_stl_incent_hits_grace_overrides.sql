SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_incent_hits_grace_overrides]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_incent_hits_grace_overrides
AS
SELECT        dbo.incent__.ord__ref, POTGrace.press_t_POTgrace, POTGrace.press_w_POTgrace, POTGrace.cohes_t_POTgrace, POTGrace.coati_t_POTgrace, POTGrace.spool_t_POTgrace, POTGrace.rewin_t_POTgrace, 
                         POTGrace.job_POTgrace, ACTGrace.press_t_ACTgrace, ACTGrace.press_w_ACTgrace, ACTGrace.cohes_t_ACTgrace, ACTGrace.coati_t_ACTgrace, ACTGrace.spool_t_ACTgrace, ACTGrace.rewin_t_ACTgrace, 
                         ACTGrace.job_ACTgrace, RewindOverride, PlatemakingOverride, CoatingOverride, UnknownDepartmentOverride, AssistantOverride, PressOverride, SpoolingOverride, CohesioOverride, ShippingOverride, 
                         RewindOverride + PlatemakingOverride + CoatingOverride + UnknownDepartmentOverride + AssistantOverride + PressOverride + SpoolingOverride + CohesioOverride + ShippingOverride AS mgrOverrides, 
                         Hits.PressApplicable, Hits.PressHit, Hits.CoatApplicable, Hits.CoatHit, Hits.CohesioApplicable, Hits.CohesioHit, Hits.RewindApplicable, Hits.RewindHit, Hits.SpoolApplicable, Hits.SpoolHit, Hits.ShipApplicable, 
                         Hits.ShipHit, Hits.Departments, Hits.DepartmentsHit, Hits.JobHit
FROM            dbo.incent__ INNER JOIN
                             (SELECT        ord__ref, press_t_POTgrace, press_w_POTgrace, cohes_t_POTgrace, coati_t_POTgrace, spool_t_POTgrace, rewin_t_POTgrace, 
                                                         press_t_POTgrace + press_w_POTgrace + cohes_t_POTgrace + coati_t_POTgrace + spool_t_POTgrace + rewin_t_POTgrace AS job_POTgrace
                               FROM            (SELECT        ord__ref, CASE WHEN press_t_dif < 0 AND press_t_dif >= - 5 THEN 1 ELSE 0 END AS press_t_POTgrace, CASE WHEN press_et_feet < press_consumed_feet AND 
                                                                                   press_consumed_feet <= (press_et_feet + 1000) THEN 1 ELSE 0 END AS press_w_POTgrace, CASE WHEN cohes_t_dif < 0 AND 
                                                                                   cohes_t_dif >= - 5 THEN 1 ELSE 0 END AS cohes_t_POTgrace, CASE WHEN coati_t_dif < 0 AND coati_t_dif >= - 5 THEN 1 ELSE 0 END AS coati_t_POTgrace, 
                                                                                   CASE WHEN spool_t_dif < 0 AND spool_t_dif >= - 15 THEN 1 ELSE 0 END AS spool_t_POTgrace, CASE WHEN rewin_t_dif < 0 AND 
                                                                                   rewin_t_dif >= - 15 THEN 1 ELSE 0 END AS rewin_t_POTgrace
                                                         FROM            dbo.incent__ AS i1) AS g) AS POTGrace ON dbo.incent__.ord__ref = POTGrace.ord__ref INNER JOIN
                             (SELECT        ord__ref, press_t_ACTgrace, press_w_ACTgrace, cohes_t_ACTgrace, coati_t_ACTgrace, spool_t_ACTgrace, rewin_t_ACTgrace, 
                                                         press_t_ACTgrace + press_w_ACTgrace + cohes_t_ACTgrace + coati_t_ACTgrace + spool_t_ACTgrace + rewin_t_ACTgrace AS job_ACTgrace
                               FROM            (SELECT        ord__ref, CASE WHEN press___met = ''Target Met'' AND press_t_dif < 0 AND press_t_dif >= - 5 THEN 1 ELSE 0 END AS press_t_ACTgrace, CASE WHEN press___met = ''Target Met'' AND 
                                                                                   press_et_feet < press_consumed_feet AND press_consumed_feet <= (press_et_feet + 1000) THEN 1 ELSE 0 END AS press_w_ACTgrace, CASE WHEN cohes___met = ''Target Met'' AND 
                                                                                   cohes_t_dif < 0 AND cohes_t_dif >= - 5 THEN 1 ELSE 0 END AS cohes_t_ACTgrace, CASE WHEN coati___met = ''Target Met'' AND coati_t_dif < 0 AND 
                                                                                   coati_t_dif >= - 5 THEN 1 ELSE 0 END AS coati_t_ACTgrace, CASE WHEN spool___met = ''Target Met'' AND spool_t_dif < 0 AND 
                                                                                   spool_t_dif >= - 15 THEN 1 ELSE 0 END AS spool_t_ACTgrace, CASE WHEN rewin___met = ''Target Met'' AND rewin_t_dif < 0 AND 
                                                                                   rewin_t_dif >= - 15 THEN 1 ELSE 0 END AS rewin_t_ACTgrace
                                                         FROM            dbo.incent__ AS i1) AS gact) AS ACTGrace ON dbo.incent__.ord__ref = ACTGrace.ord__ref LEFT OUTER JOIN
                             (SELECT        ord__ref, ISNULL([Rewinding], 0) AS RewindOverride, ISNULL([Platemaking], 0) AS PlatemakingOverride, ISNULL([Coating], 0) AS CoatingOverride, ISNULL([Unknown], 0) 
                                                         AS UnknownDepartmentOverride, ISNULL([Assistant], 0) AS AssistantOverride, ISNULL([Press], 0) AS PressOverride, ISNULL([Spooling], 0) AS SpoolingOverride, ISNULL([Cohesio], 0) 
                                                         AS CohesioOverride, ISNULL([Shipping], 0) AS ShippingOverride
                               FROM            (SELECT        ord__ref, [Rewinding], [Platemaking], [Coating], [Unknown], [Assistant], [Press], [Spooling], [Cohesio], [Shipping]
                                                         FROM            (SELECT        ord__ref, CASE WHEN department = '''' THEN ''Unknown'' ELSE department END AS department, CASE WHEN ISNULL(overrideReason, '''') 
                                                                                                             = N'''' THEN 0 ELSE 1 END AS Overrides
                                                                                   FROM            dbo.incente_) AS SourceTable PIVOT (SUM(Overrides) FOR department IN ([Rewinding], [Platemaking], [Coating], [Unknown], [Assistant], [Press], [Spooling], [Cohesio], 
                                                                                   [Shipping])) AS mgrO) AS ManagerOverridesByDepartment) AS mgr ON dbo.incent__.ord__ref = mgr.ord__ref INNER JOIN
                             (SELECT        ord__ref, CASE WHEN press_e_min <> 0 THEN 1 ELSE 0 END AS PressApplicable, CASE WHEN press___met = ''Target Met'' THEN 1 ELSE 0 END AS PressHit, 
                                                         CASE WHEN coati_e_min <> 0 THEN 1 ELSE 0 END AS CoatApplicable, CASE WHEN coati___met = ''Target Met'' THEN 1 ELSE 0 END AS CoatHit, 
                                                         CASE WHEN cohes_e_min <> 0 THEN 1 ELSE 0 END AS CohesioApplicable, CASE WHEN cohes___met = ''Target Met'' THEN 1 ELSE 0 END AS CohesioHit, 
                                                         CASE WHEN rewin_e_min <> 0 THEN 1 ELSE 0 END AS RewindApplicable, CASE WHEN rewin___met = ''Target Met'' THEN 1 ELSE 0 END AS RewindHit, 
                                                         CASE WHEN spool_e_min <> 0 THEN 1 ELSE 0 END AS SpoolApplicable, CASE WHEN spool___met = ''Target Met'' THEN 1 ELSE 0 END AS SpoolHit, 
                                                         CASE WHEN shipi_e_min <> 0 THEN 1 ELSE 0 END AS ShipApplicable, CASE WHEN shipi___met = ''Target Met'' THEN 1 ELSE 0 END AS ShipHit, 
                                                         CASE WHEN press_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN coati_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN cohes_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN rewin_e_min <> 0 THEN
                                                          1 ELSE 0 END + CASE WHEN spool_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN shipi_e_min <> 0 THEN 1 ELSE 0 END AS Departments, 
                                                         ((((CASE WHEN press_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN press___met = ''Target Met'' THEN 1 ELSE 0 END + CASE WHEN coati_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN coati___met
                                                          = ''Target Met'' THEN 1 ELSE 0 END) + CASE WHEN cohes_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN cohes___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + CASE WHEN rewin_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN rewin___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + CASE WHEN spool_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN spool___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + CASE WHEN shipi_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN shipi___met = ''Target Met'' THEN 1 ELSE 0 END AS DepartmentsHit, 
                                                         CASE WHEN (CASE WHEN press_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN coati_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN cohes_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN rewin_e_min
                                                          <> 0 THEN 1 ELSE 0 END + CASE WHEN spool_e_min <> 0 THEN 1 ELSE 0 END + CASE WHEN shipi_e_min <> 0 THEN 1 ELSE 0 END) 
                                                         = ((CASE WHEN press_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN press___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + (CASE WHEN coati_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN coati___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + (CASE WHEN cohes_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN cohes___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + (CASE WHEN rewin_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN rewin___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + (CASE WHEN spool_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN spool___met = ''Target Met'' THEN 1 ELSE 0 END) 
                                                         + (CASE WHEN shipi_e_min <> 0 THEN 1 ELSE 0 END * CASE WHEN shipi___met = ''Target Met'' THEN 1 ELSE 0 END)) THEN 1 ELSE 0 END AS JobHit
                               FROM            dbo.incent__ AS iHits) AS Hits ON dbo.incent__.ord__ref = Hits.ord__ref
' 
