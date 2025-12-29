SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_RandD]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_RandD
AS
SELECT        dbo.ordcum__.papie_ok, dbo.ordcum__.grdvrbok, dbo.ordcum__.ondaan__, dbo.order___.leverdat, dbo.order___.ord__ref AS Job, dbo.order___.ktrk_ref, dbo.kontra__.ktrk_rpn, 
                         dbo.ordcum__.papie_ok + dbo.ordcum__.grdvrbok + dbo.ordcum__.ondaan__ AS TotCOG, dbo.order___.omschr__, dbo.order___.kla__ref, dbo.order___.kla__rpn
FROM            dbo.ordcum__ INNER JOIN
                         dbo.order___ ON dbo.ordcum__.ord__ref = dbo.order___.ord__ref LEFT OUTER JOIN
                         dbo.kontra__ ON dbo.order___.ktrk_ref = dbo.kontra__.ktrk_ref
WHERE        (dbo.order___.kla__rpn LIKE N''%R&D%'')
' 
