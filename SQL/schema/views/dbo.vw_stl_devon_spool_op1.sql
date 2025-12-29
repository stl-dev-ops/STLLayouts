SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_spool_op1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_spool_op1
AS
SELECT     dbo.hispnt__.ord__ref AS Job, dbo.hispnt__.datum___ AS Date1, dbo.hispnt__.datum___ AS Date2, COUNT(dbo.afgsku__.volgnr__) AS SKU, 
                      dbo.hispnt__.wn___rpn AS Employee, dbo.werkpo__.wp_naam_ AS Machine, dbo.hispnt__.wn___ref AS EmID
FROM         dbo.hispnt__ INNER JOIN
                      dbo.afgsku__ ON dbo.hispnt__.ord__ref = dbo.afgsku__.ord__ref INNER JOIN
                      dbo.werkpo__ ON dbo.hispnt__.wp___ref = dbo.werkpo__.wp___ref
WHERE     (dbo.hispnt__.ord__ref > ''0'') AND (dbo.werkpo__.wp___ref > ''6000'')
GROUP BY dbo.hispnt__.datum___, dbo.hispnt__.ord__ref, dbo.hispnt__.wn___rpn, dbo.werkpo__.wp_naam_, dbo.hispnt__.wn___ref
' 
