SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EstimatedCosts]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.EstimatedCosts
AS
SELECT     dbo.order___.ord__ref, dbo.order___.kla__ref, dbo.order___.kla__rpn, dbo.order___.omschr__, dbo.order___.oplage__, dbo.v4eti___.etiket_b, dbo.v4eti___.etiket_h, 
                      dbo.v4eti___.tssnaf_b, dbo.v4eti___.tssnaf_h, dbo.v4eti___.klcod_fr, dbo.v4eti___.stel_tyd, dbo.v4eti___.druk_tyd, dbo.v4eti___.was__tyd, dbo.ordcum__.lonen_ok, 
                      dbo.ordcum__.machi_ok, dbo.ordcum__.overh_ok, dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.ordcum__.lev__dat, 
                      dbo.ordcum__.fak__ref, dbo.ordcum__.dok__dat, dbo.ordcum__.dat__prd, dbo.ordcum__.aant_prd, dbo.ordcum__.facafgv6, DATEPART(YYYY, dbo.ordcum__.dat__prd) 
                      AS prodyear, DATEPART(MM, dbo.ordcum__.dat__prd) AS prodmonth, DATEPART(DD, dbo.ordcum__.dat__prd) AS prodday, dbo.ordcum__.dat__prd AS ToDate, 
                      CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND 
                      vast_dat >= kstf_dat AND vast_dat >= dat__prd AND vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND 
                      kstf_dat >= dat__prd AND kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptFromDate, CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND 
                      lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND vast_dat >= kstf_dat AND vast_dat >= dat__prd AND 
                      vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND kstf_dat >= dat__prd AND 
                      kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptToDate, ''PRESS'' AS Type
FROM         dbo.order___ INNER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref INNER JOIN
                      dbo.ordcum__ ON dbo.order___.ord__ref = dbo.ordcum__.ord__ref
WHERE     (dbo.v4eti___.prs__ref <> N''5004'')
UNION ALL
SELECT     dbo.order___.ord__ref, dbo.order___.kla__ref, dbo.order___.kla__rpn, dbo.order___.omschr__, dbo.order___.oplage__, dbo.v4eti___.etiket_b, dbo.v4eti___.etiket_h, 
                      dbo.v4eti___.tssnaf_b, dbo.v4eti___.tssnaf_h, dbo.v4eti___.klcod_fr, dbo.v4eti___.stel_tyd, dbo.v4eti___.druk_tyd, dbo.v4eti___.was__tyd, dbo.ordcum__.lonen_ok, 
                      dbo.ordcum__.machi_ok, dbo.ordcum__.overh_ok, dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.ordcum__.lev__dat, 
                      dbo.ordcum__.fak__ref, dbo.ordcum__.dok__dat, dbo.ordcum__.dat__prd, dbo.ordcum__.aant_prd, dbo.ordcum__.facafgv6, DATEPART(YYYY, dbo.ordcum__.dat__prd) 
                      AS prodyear, DATEPART(MM, dbo.ordcum__.dat__prd) AS prodmonth, DATEPART(DD, dbo.ordcum__.dat__prd) AS prodday, dbo.ordcum__.dat__prd AS ToDate, 
                      CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND 
                      vast_dat >= kstf_dat AND vast_dat >= dat__prd AND vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND 
                      kstf_dat >= dat__prd AND kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptFromDate, CASE WHEN lev__dat >= vast_dat AND lev__dat >= kstf_dat AND 
                      lev__dat >= dat__prd AND lev__dat >= ddok_dat THEN lev__dat WHEN vast_dat >= lev__dat AND vast_dat >= kstf_dat AND vast_dat >= dat__prd AND 
                      vast_dat >= ddok_dat THEN vast_dat WHEN kstf_dat >= lev__dat AND kstf_dat >= vast_dat AND kstf_dat >= dat__prd AND 
                      kstf_dat >= ddok_dat THEN kstf_dat WHEN dat__prd >= lev__dat AND dat__prd >= vast_dat AND dat__prd >= kstf_dat AND 
                      dat__prd >= ddok_dat THEN dat__prd WHEN ddok_dat >= lev__dat AND ddok_dat >= vast_dat AND ddok_dat >= kstf_dat AND 
                      ddok_dat >= dat__prd THEN ddok_dat ELSE dat__prd END AS RptToDate, ''COHESIO'' AS Type
FROM         dbo.order___ INNER JOIN
                      dbo.v4eti___ ON dbo.order___.ord__ref = dbo.v4eti___.off__ref INNER JOIN
                      dbo.ordcum__ ON dbo.order___.ord__ref = dbo.ordcum__.ord__ref
WHERE     (dbo.v4eti___.prs__ref = N''5004'')
' 
