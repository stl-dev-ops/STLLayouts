SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_FEDEX_TermsofDelivery]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_FEDEX_TermsofDelivery
AS
SELECT     TOP (100) PERCENT omschr__
FROM         dbo.lev_vw__
WHERE     (omschr__ LIKE ''%Fed%'')
ORDER BY omschr__
' 
