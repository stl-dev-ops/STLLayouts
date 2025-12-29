SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_TEMPCris]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_TEMPCris
AS
SELECT        TOP (100) PERCENT CAST(YEAR(dat_paid) AS varchar(4)) + ''/'' + CAST(MONTH(dat_paid) AS varchar(2)) AS YrMon, empNo AS eno, SUM(paid_amt) AS amt
FROM            dbo.incente_
WHERE        (dat_paid >= ''1/1/22'') AND (dat_paid < ''4/1/23'') AND (dat_paid > 0)
GROUP BY CAST(YEAR(dat_paid) AS varchar(4)) + ''/'' + CAST(MONTH(dat_paid) AS varchar(2)), empNo
ORDER BY YrMon
' 
