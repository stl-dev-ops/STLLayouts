SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_MaxShipDate]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_MaxShipDate
AS
SELECT     TOP (100) PERCENT ord__ref, MAX(vrz__dat) AS MaxShipDate
FROM         dbo.bstlyn__
WHERE     (vrz__tst <> ''N'') AND (vrz__tst <> ''0'') AND (vrz__tst <> ''1'')
GROUP BY ord__ref
ORDER BY ord__ref
' 
