SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_rd_hours]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_rd_hours
AS
SELECT        SUM(dbo.GetMinutesFromCERMTimeString(dbo.hispnt__.duur____)) AS Minutes, dbo.hispnt__.wn___ref, 
                         CASE WHEN dbo.hispnt__.wp___ref LIKE ''5%'' THEN ''Press'' WHEN dbo.hispnt__.wp___ref LIKE ''7%'' THEN ''Rewind'' WHEN dbo.hispnt__.wp___ref LIKE ''4%'' THEN ''Coating'' WHEN dbo.hispnt__.wp___ref LIKE ''9801%''
                          THEN ''Cohesio'' WHEN dbo.hispnt__.wp___ref LIKE ''8000%'' THEN ''Press Assistant'' WHEN dbo.hispnt__.wp___ref LIKE ''8%'' THEN ''Spooling'' ELSE ''Shipping'' END AS Dept, dbo.hispnt__.ord__ref, 
                         dbo.order___.leverdat, dbo.order___.ktrk_ref, dbo.kontra__.ktrk_rpn, dbo.hispnt__.wn___rpn, dbo.order___.omschr__, dbo.hispnt__.kla__ref, dbo.hispnt__.kla__rpn
FROM            dbo.hispnt__ INNER JOIN
                         dbo.order___ ON dbo.hispnt__.ord__ref = dbo.order___.ord__ref AND dbo.hispnt__.ord__ref = dbo.order___.ord__ref LEFT OUTER JOIN
                         dbo.kontra__ ON dbo.order___.ktrk_ref = dbo.kontra__.ktrk_ref
WHERE        (dbo.hispnt__.kla__rpn LIKE N''%R&D%'')
GROUP BY dbo.hispnt__.ord__ref, dbo.hispnt__.wp___ref, dbo.hispnt__.wn___ref, dbo.order___.ktrk_ref, dbo.kontra__.ktrk_rpn, dbo.hispnt__.wn___rpn, dbo.order___.omschr__, dbo.order___.leverdat, dbo.hispnt__.kla__ref, 
                         dbo.hispnt__.kla__rpn
' 
