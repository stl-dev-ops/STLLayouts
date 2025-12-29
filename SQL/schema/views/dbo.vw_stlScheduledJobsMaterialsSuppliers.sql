SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScheduledJobsMaterialsSuppliers]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlScheduledJobsMaterialsSuppliers
AS
SELECT DISTINCT 
                         TOP (100) PERCENT S_1.ord__ref, S_1.kla__rpn, dbo.vw_stlJobMaterial.art__ref, dbo.artiky__.art__rpn, dbo.levbas__.lev__rpn, Presses.Press, Schedule.MinStartDate, Schedule.MaxEndDate, F.FilterMaxEndDate, 
                         dbo.v4eti___.tedrkdto
FROM            (SELECT        pldv_ref, ord__ref, suborder, kpn__ref, dg___ref, aktie___, priorite, druk____, toestand, plan__iu, wp___ref, akt__ref, plpl_ref, plpl_cal, aantal__, duur____, duurstel, duurprod, wissels_, pln_tm__, pln_dt__, 
                                                    pln_dd__, komment_, komment1, komment2, komment3, komment4, datum___, start___, datumend, stop____, weeknum_, planvast, dat__min, sta__min, dat__max, sta__max, valide__, pmd__ref, wn___ref, 
                                                    kla__ref, kla__rpn, orgdatum, orgstart, af__date, af__uur_, af__user, af__wyze, af__duur, jobnr_vw, rowid
                          FROM            dbo.plandv__
                          WHERE        (toestand <> ''3'') AND (plpl_ref IN
                                                        (SELECT        Scheduled_Machines_Filter
                                                          FROM            dbo.vw_stlScheduledMachineFilter
                                                          WHERE        (cat__ref = ''001'')))) AS S_1 INNER JOIN
                             (SELECT        ord__ref, MAX(EndDate) AS FilterMaxEndDate
                               FROM            dbo.vw_stlScheduleWithRealDateTimes
                               GROUP BY ord__ref) AS F ON S_1.ord__ref = F.ord__ref LEFT OUTER JOIN
                         dbo.v4eti___ ON S_1.ord__ref = dbo.v4eti___.off__ref LEFT OUTER JOIN
                             (SELECT        ord__ref, plpl_ref, MIN(datum___) AS MinStartDate, MAX(datumend) AS MaxEndDate
                               FROM            dbo.plandv__ AS S
                               GROUP BY ord__ref, plpl_ref
                               HAVING         (plpl_ref IN (''AZTEC'', ''A10'', ''F16'', ''B2''))) AS Schedule ON S_1.ord__ref = Schedule.ord__ref LEFT OUTER JOIN
                             (SELECT        ord__ref, plpl_ref AS Press
                               FROM            dbo.plandv__ AS P
                               WHERE        (plpl_ref IN (''AZTEC'', ''A10'', ''F16'', ''B2''))) AS Presses ON S_1.ord__ref = Presses.ord__ref LEFT OUTER JOIN
                         dbo.vw_stlJobMaterial ON dbo.vw_stlJobMaterial.ord__ref = S_1.ord__ref LEFT OUTER JOIN
                         dbo.artiky__ ON dbo.artiky__.art__ref = dbo.vw_stlJobMaterial.art__ref LEFT OUTER JOIN
                         dbo.levbas__ ON dbo.levbas__.lev__ref = dbo.artiky__.lev__ref
WHERE        (S_1.ord__ref <> '''') AND (S_1.plpl_ref IN (''AZTEC'', ''A10'', ''F16'', ''B2'')) AND (S_1.toestand <> ''3'')
' 
