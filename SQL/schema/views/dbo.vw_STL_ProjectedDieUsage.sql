SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_STL_ProjectedDieUsage]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_STL_ProjectedDieUsage
AS
SELECT        batch, datum___, plpl_ref, ord__ref, jobCounterNeeded, jobCounterRemaining, stns_ref, stns_rpn, sku, currentSkuCounter, remainingBeforeJobSkuCounter, remainingAfterJobSkuCounter, dieCheck
FROM            OPENQUERY([STL-SQL1\CRMDB], ''EXEC sqlb00.dbo.ProjectedDieUsage'') AS derivedtbl_1
' 
