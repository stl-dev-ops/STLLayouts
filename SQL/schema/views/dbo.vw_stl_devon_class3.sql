SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_class3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_class3
AS
SELECT     datum___, wn___rpn, Minutes, Class
FROM         dbo.vw_stl_devon_class1
union
SELECT     datum___, wn___rpn, Minutes, Class
FROM         dbo.vw_stl_devon_class2

' 
