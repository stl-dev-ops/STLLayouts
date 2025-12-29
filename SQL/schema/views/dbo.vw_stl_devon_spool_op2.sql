SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_spool_op2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_spool_op2
AS
SELECT     COUNT(dbo.afgsku__.volgnr__) AS SKU, dbo.hispnt__.ord__ref AS Job, dbo.hispnt__.datum___ AS Date1, dbo.hispnt__.datum___ AS Date2, 
                      dbo.hispnt__.wn___rpn AS Employee, dbo.hispnt__.wn___ref AS EmID
FROM         dbo.afgsku__ INNER JOIN
                      dbo.hispnt__ ON dbo.afgsku__.ord__ref = dbo.hispnt__.ord__ref AND dbo.afgsku__.crea_dat = dbo.hispnt__.datum___
GROUP BY dbo.hispnt__.datum___, dbo.hispnt__.ord__ref, dbo.hispnt__.wn___rpn, dbo.hispnt__.wn___ref
' 
