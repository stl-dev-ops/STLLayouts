SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLSKUToMRNo]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLSKUToMRNo
AS
SELECT     dbo.afgsku__.sku__ref AS sku, dbo.afgsku__.ord__ref AS JobNo, dbo.afgsku__.volgnr__ AS Seq, dbo.afgsku__.volgnr__ / dbo.v4eti___.aantal_b AS MRNo
FROM         dbo.afgsku__ LEFT OUTER JOIN
                      dbo.v4eti___ ON dbo.afgsku__.ord__ref = dbo.v4eti___.off__ref
' 
