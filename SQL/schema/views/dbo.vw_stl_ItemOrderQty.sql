SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_ItemOrderQty]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_ItemOrderQty
AS
SELECT        ord__ref, afg__ref, SUM(b_aantal) AS ItemOrderQty
FROM            dbo.bstlyn__
GROUP BY ord__ref, afg__ref
' 
