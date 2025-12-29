SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLPressFtByDate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLPressFtByDate
AS
SELECT        p.wp___ref AS WorkCenter, w.wp_naam_ AS WorkCenterName, SUM(p.aantal__) AS Feet, p.dat__end AS FromDate, p.dat__end AS ToDate
FROM            dbo.plcrol__ AS p INNER JOIN
                         dbo.werkpo__ AS w ON p.wp___ref = w.wp___ref
WHERE        (p.wp___ref IN
                             (SELECT        wp___ref
                               FROM            dbo.werkpo__
                               WHERE        (kenmerk_ IN (''Press'', ''Cohesio'', ''Coating'')))) AND (p.soort___ = ''f'')
GROUP BY p.wp___ref, w.wp_naam_, p.dat__end
' 
