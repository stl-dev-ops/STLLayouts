SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScheduledDiesWithPressesDieCanRunOn]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlScheduledDiesWithPressesDieCanRunOn]
AS
SELECT        D1.off__ref, D2.DieCount, SUM(D1.A10) AS A10, SUM(D1.Aztec) AS Aztec, SUM(D1.Cohesio) AS Cohesio, SUM(D1.Coating) AS Coating, SUM(D1.Rewind) 
                         AS Rewind, CASE WHEN D2.DieCount = SUM(D1.A10) THEN ''A10; '' ELSE '''' END + CASE WHEN D2.DieCount = SUM(D1.Aztec) 
                         THEN ''Aztec; '' ELSE '''' END + CASE WHEN D2.DieCount = SUM(D1.Cohesio) THEN ''Cohesio; '' ELSE '''' END + CASE WHEN D2.DieCount = SUM(D1.Coating) 
                         THEN ''Coating; '' ELSE '''' END + CASE WHEN D2.DieCount = SUM(D1.Rewind) THEN ''Rewind; '' ELSE '''' END + isnull('' OtherDies: '' + OtherDies, '''') AS Presses
FROM            (SELECT DISTINCT 
                                                    ScheduledDies.off__ref, ScheduledDies.stns_ref, CASE WHEN isnull(A10_Dies.stns_ref, 0) = 0 THEN 0 ELSE 1 END AS A10, CASE WHEN isnull(Aztec_Dies.stns_ref, 0) = 0 THEN 0 ELSE 1 END AS Aztec, 
                                                    CASE WHEN isnull(Cohesio_Dies.stns_ref, 0) = 0 THEN 0 ELSE 1 END AS Cohesio, CASE WHEN isnull(Coating_Dies.stns_ref, 0) = 0 THEN 0 ELSE 1 END AS Coating, CASE WHEN isnull(Rewind_Dies.stns_ref, 0) 
                                                    = 0 THEN 0 ELSE 1 END AS Rewind
                          FROM            (SELECT        vw_stlScheduledDies.off__ref, stnspr__.stns_ref
                                                    FROM            vw_stlScheduledDies INNER JOIN
                                                                              stnspr__ ON vw_stlScheduledDies.stns_ref = stnspr__.stns_ref) AS ScheduledDies LEFT OUTER JOIN
                                                        (SELECT        stnsps___3.stns_ref
                                                          FROM            stnsps__ AS stnsps___3 INNER JOIN
                                                                                    epersn__ AS epersn___3 ON stnsps___3.prs__ref = epersn___3.prs__ref
                                                          WHERE        (epersn___3.blokkeer = N''N'') AND (CHARINDEX(''cohe'', epersn___3.prs__oms) <> 0)) AS Cohesio_Dies ON ScheduledDies.stns_ref = Cohesio_Dies.stns_ref LEFT OUTER JOIN
                                                        (SELECT        stnsps__.stns_ref
                                                          FROM            stnsps__ INNER JOIN
                                                                                    epersn__ ON stnsps__.prs__ref = epersn__.prs__ref
                                                          WHERE        (epersn__.blokkeer = N''N'') AND (CHARINDEX(''aztec'', epersn__.prs__oms) <> 0)) AS Aztec_Dies ON ScheduledDies.stns_ref = Aztec_Dies.stns_ref LEFT OUTER JOIN
                                                        (SELECT        stnsps___2.stns_ref
                                                          FROM            stnsps__ AS stnsps___2 INNER JOIN
                                                                                    epersn__ AS epersn___2 ON stnsps___2.prs__ref = epersn___2.prs__ref
                                                          WHERE        (epersn___2.blokkeer = N''N'') AND (CHARINDEX(''coat'', epersn___2.prs__oms) <> 0)) AS Coating_Dies ON ScheduledDies.stns_ref = Coating_Dies.stns_ref LEFT OUTER JOIN
                                                        (SELECT        stnsps___1.stns_ref
                                                          FROM            stnsps__ AS stnsps___1 INNER JOIN
                                                                                    epersn__ AS epersn___1 ON stnsps___1.prs__ref = epersn___1.prs__ref
                                                          WHERE        (epersn___1.blokkeer = N''N'') AND (CHARINDEX(''A10'', epersn___1.prs__oms) + CHARINDEX(''B2'', epersn___1.prs__oms) + CHARINDEX(''F16'', epersn___1.prs__oms) <> 0)) AS A10_Dies ON 
                                                    ScheduledDies.stns_ref = A10_Dies.stns_ref LEFT OUTER JOIN
                                                        (SELECT        stnsps___1.stns_ref
                                                          FROM            stnsps__ AS stnsps___1 INNER JOIN
                                                                                    epersn__ AS epersn___1 ON stnsps___1.prs__ref = epersn___1.prs__ref
                                                          WHERE        (epersn___1.blokkeer = N''N'') AND (CHARINDEX(''Rewind'', epersn___1.prs__oms) <> 0)) AS Rewind_Dies ON ScheduledDies.stns_ref = Rewind_Dies.stns_ref) AS D1 INNER JOIN
                             (SELECT DISTINCT SD1.off__ref, COUNT(DISTINCT stnspr___1.stns_ref) AS DieCount
                               FROM            vw_stlScheduledDies AS SD1 INNER JOIN
                                                         stnspr__ AS stnspr___1 ON SD1.stns_ref = stnspr___1.stns_ref
                               GROUP BY SD1.off__ref) AS D2 ON D1.off__ref = D2.off__ref LEFT JOIN
                             (SELECT        off__ref, CAST(STUFF
                                                             ((SELECT        N'', '' + stns_rpn
                                                                 FROM            (SELECT DISTINCT off__ref, stns_rpn
                                                                                           FROM            v4etaf__ INNER JOIN
                                                                                                                     stnspr__ ON v4etaf__.stns_ref = stnspr__.stns_ref) oDies
                                                                 WHERE        Jobs.off__ref = oDies.off__ref
                                                                 ORDER BY stns_rpn FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(255)) OtherDies
                               FROM            v4etaf__ Jobs
                               GROUP BY off__ref) AS L_S_Dies ON D1.off__ref = L_S_Dies.off__ref
GROUP BY D1.off__ref, D2.DieCount, OtherDies
' 
