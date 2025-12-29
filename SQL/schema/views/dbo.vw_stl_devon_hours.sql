SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_hours]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_hours
AS
SELECT     SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) AS Minutes, dbo.hispnt__.wn___ref, dbo.hispnt__.wp___ref, dbo.hispnt__.ord__ref, 
                      dbo.order___.leverdat, dbo.order___.ktrk_ref, dbo.kontra__.ktrk_rpn, dbo.hispnt__.wn___rpn, dbo.order___.omschr__
FROM         dbo.hispnt__ INNER JOIN
                      dbo.order___ ON dbo.hispnt__.ord__ref = dbo.order___.ord__ref INNER JOIN
                      dbo.kontra__ ON dbo.order___.ktrk_ref = dbo.kontra__.ktrk_ref
GROUP BY dbo.hispnt__.ord__ref, dbo.hispnt__.wp___ref, dbo.hispnt__.wn___ref, dbo.hispnt__.datum___, dbo.order___.leverdat, dbo.order___.ktrk_ref, dbo.kontra__.ktrk_rpn, 
                      dbo.hispnt__.wn___rpn, dbo.order___.omschr__
' 
