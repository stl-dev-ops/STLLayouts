SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_JobProgress_By_wn___ref_tottime_NotNull]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_JobProgress_By_wn___ref_tottime_NotNull
AS
SELECT     ord__ref, wn___ref, goodft__, grossft_, mrtime__, prtime__, bdtime__, tottime_, omschr__, kla__ref, kla__rpn, etiket_b, etiket_h, tssnaf_b, tssnaf_h, aantal_b, 
                      aantal_h, MINDATUM, DATEFROM, DATETO, MRAM, MRPM, BDTRA
FROM         dbo.vw_JobProgress_By_wn___ref
WHERE     (tottime_ IS NOT NULL)
' 
