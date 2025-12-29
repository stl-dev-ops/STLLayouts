SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_pete_jobsperweek]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_pete_jobsperweek
AS
SELECT     dbo.order___.ord__ref AS jobid, dbo.order___.best_dat AS orderdate, dbo.order___.best_dat AS datefrom, dbo.order___.best_dat AS dateto, 
                      dbo.order___.kla__ref AS custid, dbo.order___.kla__rpn AS custkw, dbo.order___.omschr__ AS jobdescr, dbo.v4eti___.etiket_b AS sizeacr, 
                      dbo.v4eti___.etiket_h AS sizear, dbo.v4eti___.tssnaf_b AS gabacr, dbo.v4eti___.tssnaf_h AS gabar, dbo.v4eti___.aantal_b AS numbracr, 
                      dbo.v4eti___.aantal_h AS numbrar, dbo.v4eti___.tedrk_to AS feet, dbo.v4eti___.stel_tyd AS setuptime, dbo.v4eti___.druk_tyd AS printtime, 
                      dbo.v4eti___.was__tyd AS washuptime
FROM         dbo.order___ INNER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref
' 
