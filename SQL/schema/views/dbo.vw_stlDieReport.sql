SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlDieReport]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[vw_stlDieReport]
AS
SELECT        DIES.aanmaak_ AS DateOfCreation, DIES.stns_ref AS DieID, DIES.stns_rpn AS DieKeyword, 
CASE DIES.stn_vorm 
	WHEN ''1'' THEN ''Rectangle'' 
	WHEN ''2'' THEN ''Circle'' 
	WHEN ''3'' THEN ''Irregular'' 
	WHEN ''4'' THEN ''Oval'' 
ELSE 
	DIES.stn_vorm 
END AS Shape, 
CASE DIES.materie_
	WHEN ''1'' THEN ''Rotary die (cyl.)'' 
	WHEN ''2'' THEN ''Flexible die'' 
ELSE 
	DIES.materie_ 
END AS Material, 
TOOL_TYPE.omschr__ AS ToolType, Substrates.drg__rpn AS SubstrateKeyword, Substrates.drg__oms AS SubstrateDescription, DieTypeComments.omschr__ AS Dietype, 
DieQualityComment.omschr__ AS DieQuality, CuttingHeightComments.omschr__ AS CuttingHeight, PRESSES.A10, PRESSES.AztecNonstop, PRESSES.B2, PRESSES.Coating, 
PRESSES.Cohesio, PRESSES.CohesioNonstop, PRESSES.DashCPress, PRESSES.Digital, PRESSES.F16, PRESSES.Rewind, PRESSES.SiliconeJob, PRESSES.Spooling, PRESSES.[DragonNonstop]

FROM 
(
	SELECT  stns_ref, SUM(A10) AS A10, SUM([Aztec Nonstop]) AS AztecNonstop, SUM(B2) AS B2, SUM(Coating) AS Coating, SUM(Cohesio) AS Cohesio, SUM([Cohesio Nonstop]) AS CohesioNonstop, SUM([Dash C Press]) 
	AS DashCPress, SUM(Digital) AS Digital, SUM(F16) AS F16, SUM(Rewind) AS Rewind, SUM([Silicone Job]) AS SiliconeJob, SUM(Spooling) AS Spooling, SUM([Dragon Nonstop]) AS [DragonNonstop]
	FROM vw_STLDiePresses
	GROUP BY stns_ref
) AS PRESSES RIGHT JOIN
stnspr__ AS DIES ON PRESSES.stns_ref = DIES.stns_ref LEFT JOIN
gegdrg__ AS TOOL_TYPE RIGHT JOIN
arthlp__ AS TOOLS ON TOOL_TYPE.ggdr_ref = TOOLS.ggdr_ref ON DIES.stns_ref = TOOLS.arth_ref LEFT JOIN
kommen__ AS CuttingHeightComments ON DIES.kom_snyh = CuttingHeightComments.kom__ref LEFT JOIN
kommen__ AS DieQualityComment ON DIES.kom__kwa = DieQualityComment.kom__ref LEFT JOIN
kommen__ AS DieTypeComments ON DIES.kom__typ = DieTypeComments.kom__ref LEFT JOIN
drgers__ AS Substrates ON DIES.drg__ref = Substrates.drg__ref
--WHERE NOT (DIES.stns_rpn LIKE ''ES%'') AND NOT (DIES.stns_rpn LIKE ''VR%'')
' 
