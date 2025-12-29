SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlST_qrybstlyn__Grouped]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlST_qrybstlyn__Grouped
AS
SELECT        ord__ref, vrs__ref,
                             (SELECT        TOP (1) bsbn_kla
                               FROM            dbo.bstlyn__ AS b2
                               WHERE        (ord__ref = b.ord__ref) AND (vrs__ref = b.vrs__ref)) AS bsbn_kla
FROM            dbo.bstlyn__ AS b
GROUP BY ord__ref, vrs__ref
' 
