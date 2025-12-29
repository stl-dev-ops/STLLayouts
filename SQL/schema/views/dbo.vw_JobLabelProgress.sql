SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobLabelProgress]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_JobLabelProgress
AS
SELECT        JobProgress.kla__ref, JobProgress.naam____, CASE WHEN JobProgress.ltol_ref = ''15'' THEN CASE WHEN JobProgress.oplage__ < 5000000 THEN 15.0 ELSE 25.0 END ELSE CAST(JobProgress.ltol_ref AS float) END AS ltol_ref, 
                         JobProgress.PreApprovalType, JobProgress.ord__ref, JobProgress.omschr__, JobProgress.best_dat, JobProgress.oplage__, 
                         CASE WHEN JobProgress.ltol_ref = ''15'' THEN CASE WHEN JobProgress.oplage__ < 5000000 THEN 15.0 / 100.0 * JobProgress.oplage__ ELSE 25.0 / 100.0 * JobProgress.oplage__ END ELSE CAST(JobProgress.ltol_ref AS float) 
                         / 100.0 * JobProgress.oplage__ END + JobProgress.oplage__ AS PreApprovedAmount, JobProgress.LabelSizeAround, JobProgress.LabelSizeAcross, JobProgress.NumberAround, JobProgress.NumberAcross, 
                         JobProgress.LabelGap, JobProgress.DistanceBetweenLabels, JobProgress.PressActualTotalFeet, JobProgress.PressActualBadFeet, JobProgress.PressActualGoodFeet, JobProgress.PressActualGoodLabels, 
                         JobProgress.PressLabelOverage, CASE WHEN PressLabelOverage < 0 THEN ''under'' WHEN PressLabelOverage > 0 THEN ''OVER'' ELSE '''' END AS PressLabelStatus, JobProgress.RewindActualTotalFeet, 
                         JobProgress.RewindActualBadFeet, JobProgress.RewindActualGoodFeet, JobProgress.RewindActualGoodLabels, JobProgress.RewindLabelOverage, 
                         CASE WHEN RewindLabelOverage < 0 THEN ''under'' WHEN RewindLabelOverage > 0 THEN ''OVER'' ELSE ''Even'' END AS RewindLabelStatus, JobProgress.spoolJobID, JobProgress.SpoolActualTotalFeet, 
                         JobProgress.SpoolActualBadFeet, JobProgress.SpoolActualGoodFeet, CASE WHEN SpoolLabelOverage < 0 THEN ''under'' WHEN SpoolLabelOverage > 0 THEN ''OVER'' ELSE '''' END AS SpoolLabelStatus, 
                         ISNULL(JobProgress.SpoolLabelOverage, ISNULL(JobProgress.RewindLabelOverage, ISNULL(JobProgress.PressLabelOverage, 0))) AS PotentialLabelOverage, CASE WHEN ISNULL(SpoolLabelOverage, 
                         ISNULL(RewindLabelOverage, ISNULL(PressLabelOverage, 0))) < 0 THEN ''under'' WHEN ISNULL(SpoolLabelOverage, ISNULL(RewindLabelOverage, ISNULL(PressLabelOverage, 0))) 
                         > 0 THEN ''OVER'' ELSE '''' END AS PotentialLabelStatus, JobProgress.MINvrzv_dat, JobProgress.MAXvrzv_dat, JobProgress.vrz__dat, CASE WHEN ISNULL(SpoolActualGoodLabels, ISNULL(RewindActualGoodLabels, 
                         ISNULL(PressActualGoodLabels, 0))) > (ltol_ref / 100.0 * oplage__ + oplage__) THEN ''OVER'' ELSE '''' END AS PotentialLabelsVsPreApprovedLabels, ISNULL(JobProgress.SpoolActualGoodLabels, 
                         ISNULL(JobProgress.RewindActualGoodLabels, ISNULL(JobProgress.PressActualGoodLabels, 0))) AS PotentialLabels, dbo.stlOverageStatus.OverageStatus, derivedtbl_1.l_aantal, 
                         dbo.stlJobOverageNotes.Notes AS OverageNotes, dbo.vw_JobProducts.ProductIDs, JobProgress.SpoolActualGoodLabels, JobProgress.SpoolLabelOverage
FROM            dbo.stlOverageStatus RIGHT OUTER JOIN
                         dbo.stlJobOverageStatus ON dbo.stlOverageStatus.ID = dbo.stlJobOverageStatus.OverageStatusID RIGHT OUTER JOIN
                         dbo.vw_JobProducts RIGHT OUTER JOIN
                             (SELECT        kla__ref, naam____, ltol_ref, PreApprovalType, ord__ref, omschr__, best_dat, oplage__, LabelSizeAround, LabelSizeAcross, NumberAround, NumberAcross, LabelGap, DistanceBetweenLabels, 
                                                         PressActualTotalFeet, PressActualBadFeet, PressActualTotalFeet - PressActualBadFeet AS PressActualGoodFeet, PressActualGoodLabels, PressActualGoodLabels - oplage__ AS PressLabelOverage, 
                                                         RewindActualTotalFeet, RewindActualBadFeet, RewindActualTotalFeet - RewindActualBadFeet AS RewindActualGoodFeet, RewindActualGoodLabels, RewindActualGoodLabels - oplage__ AS RewindLabelOverage, 
                                                         spoolJobID, RewindActualTotalFeet - RewindActualBadFeet AS SpoolActualTotalFeet, SpoolActualBadFeet, RewindActualTotalFeet - RewindActualBadFeet - SpoolActualBadFeet AS SpoolActualGoodFeet, vrz__dat, 
                                                         MINvrzv_dat, MAXvrzv_dat, SpoolActualGoodLabels, SpoolLabelOverage
                               FROM            (SELECT        dbo.klabas__.kla__ref, dbo.klabas__.naam____, CAST(dbo.klabas__.ltol_ref AS float) AS ltol_ref, dbo.levtol__.omschr__ AS PreApprovalType, O.ord__ref, O.omschr__, O.best_dat, O.oplage__,
                                                                                       (SELECT        MAX(dbo.spoolJobQtyCalculation.goodLabels) AS Expr1
                                                                                         FROM            dbo.spoolJob INNER JOIN
                                                                                                                   dbo.spoolJobQtyCalculation ON dbo.spoolJob.spoolJobID = dbo.spoolJobQtyCalculation.spoolJobID
                                                                                         WHERE        (dbo.spoolJob.ord__ref = O.ord__ref)) AS SpoolActualGoodLabels,
                                                                                       (SELECT        MAX(spoolJobQtyCalculation_1.goodLabels) AS Expr1
                                                                                         FROM            dbo.spoolJob AS spoolJob_3 INNER JOIN
                                                                                                                   dbo.spoolJobQtyCalculation AS spoolJobQtyCalculation_1 ON spoolJob_3.spoolJobID = spoolJobQtyCalculation_1.spoolJobID
                                                                                         WHERE        (spoolJob_3.ord__ref = O.ord__ref)) - O.oplage__ AS SpoolLabelOverage,
                                                                                       (SELECT        MAX(etiket_h) AS Expr1
                                                                                         FROM            dbo.v4eti___
                                                                                         WHERE        (off__ref = O.ord__ref)) AS LabelSizeAround,
                                                                                       (SELECT        MAX(etiket_b) AS Expr1
                                                                                         FROM            dbo.v4eti___ AS v4eti____1
                                                                                         WHERE        (off__ref = O.ord__ref)) AS LabelSizeAcross,
                                                                                       (SELECT        MAX(aantal_h) AS Expr1
                                                                                         FROM            dbo.v4eti___ AS v4eti____2
                                                                                         WHERE        (off__ref = O.ord__ref)) AS NumberAround,
                                                                                       (SELECT        MAX(aantal_b) AS Expr1
                                                                                         FROM            dbo.v4eti___ AS v4eti____3
                                                                                         WHERE        (off__ref = O.ord__ref)) AS NumberAcross,
                                                                                       (SELECT        MAX(tssnaf_h) AS Expr1
                                                                                         FROM            dbo.v4eti___ AS v4eti____5
                                                                                         WHERE        (off__ref = O.ord__ref)) AS LabelGap,
                                                                                       (SELECT        MAX(tssnaf_b) AS Expr1
                                                                                         FROM            dbo.v4eti___ AS v4eti____4
                                                                                         WHERE        (off__ref = O.ord__ref)) AS DistanceBetweenLabels,
                                                                                       (SELECT        SUM(pressGoodLabels) AS Expr1
                                                                                         FROM            dbo.stlST_PressRoll
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS PressActualGoodLabels,
                                                                                       (SELECT        SUM(goodLabels) AS Expr1
                                                                                         FROM            dbo.stlST_RewindBrick
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS RewindActualGoodLabels,
                                                                                       (SELECT        SUM(totam_in) AS A_PRESS_FT
                                                                                         FROM            dbo.hlfvrd__
                                                                                         WHERE        (ord__ref = O.ord__ref) AND (wp___ref IN
                                                                                                                       (SELECT        wp___ref
                                                                                                                         FROM            dbo.werkpo__
                                                                                                                         WHERE        (kenmerk_ IN (''Press'', ''Cohesio''))))) AS PressActualTotalFeet,
                                                                                       (SELECT        SUM(totam_in) AS Expr1
                                                                                         FROM            dbo.hlfvrd__ AS hlfvrd___1
                                                                                         WHERE        (ord__ref = O.ord__ref) AND (wp___ref IN
                                                                                                                       (SELECT        wp___ref
                                                                                                                         FROM            dbo.werkpo__ AS werkpo___1
                                                                                                                         WHERE        (kenmerk_ IN (''Press'', ''Cohesio''))))) -
                                                                                       (SELECT        SUM(actualGoodFt - (badRowsMaterialFt + pressBadMaterialFt)) AS Expr1
                                                                                         FROM            dbo.pressRollWaste
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS PressActualBadFeet,
                                                                                       (SELECT        SUM(actualGoodFt - badRowsMaterialFt - pressBadMaterialFt) AS Expr1
                                                                                         FROM            dbo.pressRollWaste AS pressRollWaste_1
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS RewindActualTotalFeet,
                                                                                       (SELECT        SUM(rewindWasteFt) AS A_REWIW_FT
                                                                                         FROM            dbo.pressRollWaste AS pressRollWaste_2
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS RewindActualBadFeet,
                                                                                       (SELECT        spoolJobID
                                                                                         FROM            dbo.spoolJob AS spoolJob_2
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS spoolJobID,
                                                                                       (SELECT        SUM(qty) AS SpoolWasteLabels
                                                                                         FROM            dbo.waste
                                                                                         WHERE        (spoolJobID =
                                                                                                                       (SELECT        spoolJobID
                                                                                                                         FROM            dbo.spoolJob AS spoolJob_1
                                                                                                                         WHERE        (ord__ref = O.ord__ref)))) *
                                                                                       (((SELECT        MAX(etiket_h) AS Expr1
                                                                                            FROM            dbo.v4eti___ AS v4eti____6
                                                                                            WHERE        (off__ref = O.ord__ref)) +
                                                                                       (SELECT        MAX(tssnaf_h) AS Expr1
                                                                                         FROM            dbo.v4eti___ AS v4eti____5
                                                                                         WHERE        (off__ref = O.ord__ref))) / 12 / 22) AS SpoolActualBadFeet,
                                                                                       (SELECT        MIN(vrzv_dat) AS Expr1
                                                                                         FROM            dbo.bstlyn__
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS MINvrzv_dat,
                                                                                       (SELECT        MAX(vrzv_dat) AS Expr1
                                                                                         FROM            dbo.bstlyn__ AS bstlyn___2
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS MAXvrzv_dat,
                                                                                       (SELECT        MIN(vrz__dat) AS Expr1
                                                                                         FROM            dbo.bstlyn__ AS bstlyn___1
                                                                                         WHERE        (ord__ref = O.ord__ref)) AS vrz__dat
                                                         FROM            dbo.order___ AS O INNER JOIN
                                                                                   dbo.klabas__ ON O.kla__ref = dbo.klabas__.kla__ref LEFT OUTER JOIN
                                                                                   dbo.levtol__ ON dbo.klabas__.ltol_ref = dbo.levtol__.ltol_ref
                                                         WHERE        (O.ord__ref IN
                                                                                       (SELECT        ord__ref
                                                                                         FROM            dbo.bstlyn__ AS bstlyn___3
                                                                                         WHERE        (vrz__dat = ''1980-01-01'') OR
                                                                                                                   (vrz__dat >= DATEADD(Month, - 1, GETDATE()))))) AS jp) AS JobProgress ON dbo.vw_JobProducts.off__ref = JobProgress.ord__ref LEFT OUTER JOIN
                         dbo.stlJobOverageNotes ON JobProgress.ord__ref = dbo.stlJobOverageNotes.ord__ref LEFT OUTER JOIN
                             (SELECT        ord__ref, SUM(l_aantal) AS l_aantal
                               FROM            dbo.bstlyn__ AS soP
                               GROUP BY ord__ref) AS derivedtbl_1 ON JobProgress.ord__ref = derivedtbl_1.ord__ref ON dbo.stlJobOverageStatus.ord__ref = JobProgress.ord__ref
' 
