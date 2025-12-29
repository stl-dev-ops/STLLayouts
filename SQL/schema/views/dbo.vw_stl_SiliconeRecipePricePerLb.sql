SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_SiliconeRecipePricePerLb]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_SiliconeRecipePricePerLb
AS
SELECT        sr.stlSR_SiliconeRecipeID, sr.klpmsref, sr.description, SUM(srps.mixturePct * an.l_akp_vl) AS PricePerLb
FROM            dbo.stlSR_SiliconeRecipe AS sr INNER JOIN
                         dbo.stlSR_ProductSpec AS srps ON sr.stlSR_SiliconeRecipeID = srps.stlSR_SiliconeRecipeID INNER JOIN
                         dbo.artikn__ AS an ON srps.art__ref = an.art__ref
GROUP BY sr.stlSR_SiliconeRecipeID, sr.klpmsref, sr.description
' 
