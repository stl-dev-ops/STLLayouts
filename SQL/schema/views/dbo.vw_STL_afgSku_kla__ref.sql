SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_afgSku_kla__ref]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_afgSku_kla__ref
AS
SELECT        s.sku__ref, a.kla__ref
FROM            dbo.afgsku__ AS s INNER JOIN
                         dbo.afgart__ AS a ON s.afg__ref = a.afg__ref
' 
