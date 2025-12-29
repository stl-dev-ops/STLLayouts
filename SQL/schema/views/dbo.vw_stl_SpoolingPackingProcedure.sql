SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_SpoolingPackingProcedure]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_SpoolingPackingProcedure
AS
SELECT        CASE WHEN CHARINDEX(''spool'', vpak_oms) > 0 THEN ''TRUE'' ELSE ''FALSE'' END AS SpoolJob, vpak_oms, vpak_ref
FROM            dbo.vpakpr__
' 
