SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_TmpIncentJobNoMaxDate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_TmpIncentJobNoMaxDate
AS
SELECT        TOP (100) PERCENT ord__ref AS JobNo, MAX(datum___) AS MaxOfdatum___
FROM            dbo.incent__
GROUP BY ord__ref
' 
