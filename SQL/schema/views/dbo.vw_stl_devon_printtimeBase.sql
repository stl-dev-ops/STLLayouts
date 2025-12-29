SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_printtimeBase]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_printtimeBase
AS
SELECT     wn___ref, datum___, datum___ AS ToDate, wp___ref, ord__ref, wn___rpn
FROM         dbo.hispnt__
WHERE     (wp___ref = ''5001'') OR
                      (wp___ref = ''5002'') OR
                      (wp___ref = ''5003'')
GROUP BY wn___ref, datum___, wp___ref, ord__ref, wn___rpn
' 
