SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_devon_term]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_devon_term
AS
SELECT     kla__rpn, bedr__vm, vrz__tst, betk_ref, vrzv_dat, lyn__ref, ord__ref
FROM         dbo.bstlyn__
' 
