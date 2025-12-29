SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STLTT_TmpTTFootage]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STLTT_TmpTTFootage
AS
SELECT        TOP (100) PERCENT ord__ref, SUM(grossFt) AS tt_GrossFT, SUM(goodFt) AS tt_GoodFt
FROM            dbo.stlTT_TargetTracker
GROUP BY ord__ref
' 
