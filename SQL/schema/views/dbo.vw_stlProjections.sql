SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProjections]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlProjections
AS
SELECT        dbo.stlProjections.ID, dbo.stlProjections.GroupID, dbo.stlProjectionGroups.prkl_ref, dbo.prodkl__.omschr__, dbo.stlProjectionGroups.prfm_ref, dbo.prodfm__.prfm_oms, dbo.stlProjections.PeriodID, 
                         dbo.stlProjectionPeriods.MonthID, dbo.stlProjectionPeriods.YearID, dbo.stlProjections.TypeID, dbo.stlProjectionTypes.ProjectionType, dbo.stlProjections.ProjectedLabelQuantity, 
                         dbo.stlProjections.ProjectedLabelValue, dbo.stlProjections.HistoricalLabelQuantity, dbo.stlProjections.HistoricalLabelValue
FROM            dbo.stlProjections INNER JOIN
                         dbo.stlProjectionTypes ON dbo.stlProjections.TypeID = dbo.stlProjectionTypes.ID INNER JOIN
                         dbo.stlProjectionPeriods ON dbo.stlProjections.PeriodID = dbo.stlProjectionPeriods.ID INNER JOIN
                         dbo.stlProjectionGroups ON dbo.stlProjections.GroupID = dbo.stlProjectionGroups.ID LEFT OUTER JOIN
                         dbo.prodkl__ ON dbo.stlProjectionGroups.prkl_ref = dbo.prodkl__.prkl_ref LEFT OUTER JOIN
                         dbo.prodfm__ ON dbo.stlProjectionGroups.prfm_ref = dbo.prodfm__.prfm_ref
' 
