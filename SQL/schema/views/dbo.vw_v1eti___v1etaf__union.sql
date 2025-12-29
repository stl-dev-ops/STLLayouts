SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_v1eti___v1etaf__union]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_v1eti___v1etaf__union
AS
select off__ref, stns_ref from v1eti___
union
select off__ref, stns_ref from v1etaf__
     
' 
