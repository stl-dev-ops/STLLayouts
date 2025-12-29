SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobProgress]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_JobProgress
AS
SELECT        dbo.order___.ord__ref,
                             (SELECT        SUM(aantm_in) AS Expr1
                               FROM            dbo.hlfvrd__
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (wp___ref IN
                                                             (SELECT        wp___ref
                                                               FROM            dbo.werkpo__
                                                               WHERE        (kenmerk_ = ''Press'')))) AS goodft__,
                             (SELECT        SUM(totam_in) AS Expr1
                               FROM            dbo.hlfvrd__ AS hlfvrd___1
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (wp___ref IN
                                                             (SELECT        wp___ref
                                                               FROM            dbo.werkpo__ AS werkpo___1
                                                               WHERE        (kenmerk_ = ''Press'')))) AS grossft_,
                             (SELECT        SUM(time____) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (type____ = ''MakeReady'')) AS mrtime__,
                             (SELECT        SUM(time____) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_3
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (type____ = ''Print'')) AS prtime__,
                             (SELECT        SUM(time____) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_2
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (type____ = ''Breakdown'')) AS bdtime__,
                             (SELECT        SUM(time____) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_1
                               WHERE        (ord__ref = dbo.order___.ord__ref)) AS tottime_, dbo.order___.omschr__, dbo.order___.kla__ref, dbo.order___.kla__rpn, dbo.v4eti___.etiket_b, dbo.v4eti___.etiket_h, dbo.v4eti___.tssnaf_b, dbo.v4eti___.tssnaf_h, 
                         dbo.v4eti___.aantal_b, dbo.v4eti___.aantal_h,
                             (SELECT        MIN(datum___) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_4
                               WHERE        (ord__ref = dbo.order___.ord__ref)) AS MINDATUM,
                             (SELECT        MIN(datum___) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_4
                               WHERE        (ord__ref = dbo.order___.ord__ref)) AS DATEFROM,
                             (SELECT        MIN(datum___) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_4
                               WHERE        (ord__ref = dbo.order___.ord__ref)) AS DATETO,
                             (SELECT        SUM(time____) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_3
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (type____ = ''MakeReadyAM'')) AS MRAM,
                             (SELECT        SUM(time____) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_3
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (type____ = ''MakeReadyPM'')) AS MRPM,
                             (SELECT        SUM(time____) AS Expr1
                               FROM            dbo.vw_PressClockings_per_activity AS vw_PressClockings_per_activity_3
                               WHERE        (ord__ref = dbo.order___.ord__ref) AND (type____ = ''BreakdownTrans'')) AS BDTRA
FROM            dbo.order___ LEFT OUTER JOIN
                         dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref
' 
