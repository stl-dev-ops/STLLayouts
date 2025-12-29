SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLPortalPRoductCatalog]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLPortalPRoductCatalog
AS
SELECT        kla__ref AS CustomerID, afg__ref AS STLProductID, zynrefkl AS CustomerProductID, afg_oms1 AS ProductDescription, uitgeput AS EndOfLife
FROM            dbo.afgart__
WHERE        (uitgeput = ''N'')
' 
