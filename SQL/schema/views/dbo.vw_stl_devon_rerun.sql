SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_rerun]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_rerun
AS
SELECT     bst__ref, ord__ref, kla__rpn, MIN(vrz__dat) AS Date1, MAX(vrz__dat) AS Date2, afg_oms1, SUM(b_aantal) AS QTY, SUM(f_aantal) AS ShipQTY, SUM(bedrf_bm) 
                      AS Invoice, MAX(tstval03) AS Status
FROM         dbo.bstlyn__
GROUP BY bst__ref, ord__ref, kla__rpn, afg_oms1
' 
