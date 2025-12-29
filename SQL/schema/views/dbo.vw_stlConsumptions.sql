SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlConsumptions]'))
EXEC dbo.sp_executesql @statement = N'




CREATE VIEW [dbo].[vw_stlConsumptions]
AS
SELECT art__ref, artc_ref, omschr__, datum___, aantal__, FirstConsumption, LastConsumption, afg__ref, ProductDescription, ProductGroupID, ProductGroup, ord__ref, kla__ref, kla__rpn, soort___
FROM stlConsumptions


' 
