SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ReservationsWithNULL_dat_resv]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_ReservationsWithNULL_dat_resv
AS
SELECT        dbo.resgrd__.ord__ref, dbo.order___.best_dat, dbo.resgrd__.art__ref, dbo.artiky__.art__rpn, dbo.resgrd__.dat_resv, dbo.resgrd__.reserve_, dbo.resgrd__.art__srt, 
                         CASE WHEN resgrd__.art__srt = ''0'' THEN ''Paper sheet'' WHEN resgrd__.art__srt = ''1'' THEN ''Other sheets substrate'' WHEN resgrd__.art__srt = ''2'' THEN ''Paper reels'' WHEN resgrd__.art__srt = ''3'' THEN ''Plate'' WHEN
                          resgrd__.art__srt = ''4'' THEN ''Film'' WHEN resgrd__.art__srt = ''5'' THEN ''Other web substrate'' WHEN resgrd__.art__srt = ''6'' THEN ''Ink'' WHEN resgrd__.art__srt = ''7'' THEN ''Other material'' WHEN resgrd__.art__srt
                          = ''8'' THEN ''Montage sheet'' WHEN resgrd__.art__srt = ''9'' THEN ''Box'' WHEN resgrd__.art__srt = ''a'' THEN ''Core'' END AS MaterialType, dbo.resgrd__.kla__ref, dbo.resgrd__.kla__rpn, dbo.resgrd__.kommen_1, 
                         dbo.resgrd__.kommen_2, dbo.resgrd__.user____, dbo.order___.leverdat AS DeliveryDate, dbo.vw_Reservations_MinScheduledDate.MinimumScheduledDate
FROM            dbo.resgrd__ INNER JOIN
                         dbo.order___ ON dbo.resgrd__.ord__ref = dbo.order___.ord__ref INNER JOIN
                         dbo.artiky__ ON dbo.resgrd__.art__ref = dbo.artiky__.art__ref INNER JOIN
                         dbo.vw_Reservations_MinScheduledDate ON dbo.resgrd__.ord__ref = dbo.vw_Reservations_MinScheduledDate.ord__ref
WHERE        (dbo.resgrd__.dat_resv IS NULL)
' 
