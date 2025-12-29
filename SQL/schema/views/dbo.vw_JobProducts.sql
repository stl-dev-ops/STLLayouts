SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobProducts]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_JobProducts
AS
SELECT        off__ref, CAST(STUFF
                             ((SELECT        N'', '' + afg__ref
                                 FROM            v4vrs___ AS JobProducts
                                 WHERE        JobProducts.off__ref = JobVersions.off__ref
                                 ORDER BY afg__ref FOR XML PATH('''')), 1, 2, '''') AS NVARCHAR(1024)) ProductIDs, MIN(afg__ref) AS FirstProductID, MAX(afg__ref) AS LastProductID
FROM            v4vrs___ AS JobVersions
GROUP BY off__ref
' 
