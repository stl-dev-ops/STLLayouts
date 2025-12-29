SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlProjectionsWithProjectedSubstrateFeet]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stlProjectionsWithProjectedSubstrateFeet]
AS
SELECT p.ID, p12subFtPerLabel.prkl_ref, pg.omschr__, p12subFtPerLabel.prfm_ref, b.prfm_oms, p.PeriodID, p.MonthID, p.YearID, p.TypeID, p.ProjectionType, p.ProjectedLabelQuantity, p.ProjectedLabelValue, p.HistoricalLabelQuantity, 
p.HistoricalLabelValue, 
CASE WHEN p.ID IS NULL THEN
	NULL 
ELSE 
	CASE WHEN (p12subFtPerLabel.Labels * p.ProjectedLabelQuantity) <> 0 THEN
		CASE WHEN p12FtPerLabel.Feet <> 0 THEN
			(p12subFtPerLabel.Feet / p12subFtPerLabel.Labels * p.ProjectedLabelQuantity) * (p12subFtPerLabel.Feet / p12FtPerLabel.Feet) 
		ELSE
			NULL
		END
	ELSE
		NULL
	END
END AS ProjectedFeet, p12subFtPerLabel.drg__ref, s1.drg__rpn AS Sub1, p12subFtPerLabel.drg__ref2, 
s2.drg__rpn AS Sub2, p12subFtPerLabel.Feet AS [12moHistFeet], p12subFtPerLabel.Labels AS [12moHistLabels]
FROM            dbo.vw_stlProjections AS p RIGHT OUTER JOIN
vw_stlProjections12mosSubstratesFeetPerLabels AS p12subFtPerLabel ON p.prfm_ref = p12subFtPerLabel.prfm_ref AND p.prkl_ref = p12subFtPerLabel.prkl_ref LEFT OUTER JOIN
drgers__ AS s1 ON p12subFtPerLabel.drg__ref = s1.drg__ref LEFT OUTER JOIN
vw_stlProjections12mosFeetPerLabels AS p12FtPerLabel ON p12subFtPerLabel.prkl_ref = p12FtPerLabel.prkl_ref AND p12subFtPerLabel.prfm_ref = p12FtPerLabel.prfm_ref LEFT OUTER JOIN
drgers__ AS s2 ON p12subFtPerLabel.drg__ref2 = s2.drg__ref LEFT OUTER JOIN
prodkl__ AS pg ON p12subFtPerLabel.prkl_ref = pg.prkl_ref LEFT OUTER JOIN
prodfm__ AS b ON p12subFtPerLabel.prfm_ref = b.prfm_ref
' 
