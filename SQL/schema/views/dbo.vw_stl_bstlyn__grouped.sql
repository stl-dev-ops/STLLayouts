SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_bstlyn__grouped]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_bstlyn__grouped
AS
SELECT        ord__ref, vrs__ref, bsbn_kla
FROM            dbo.bstlyn__
GROUP BY ord__ref, vrs__ref, bsbn_kla
' 
