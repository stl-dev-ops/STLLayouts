SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_incente_]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_incente_
AS
SELECT     dbo.incente_.wn___ref, dbo.incente_.ord__ref, dbo.incente_.wn_naam_, dbo.incente_.wn_vnaam, dbo.incente_.department, dbo.incente_.e_minutes, 
                      dbo.incente_.t_minutes, dbo.incente_.percent_, dbo.incente_.paid__yn, dbo.incente_.pay__amt, dbo.incente_.paid_amt, dbo.incente_.dat_paid, 
                      dbo.incent__.datum___ AS datefrom, dbo.incent__.datum___ AS dateto, dbo.incente_.target_met, dbo.incente_.wn_vnaam + '' '' + dbo.incente_.wn_naam_ AS employee, 
                      dbo.incente_.pot__amt, dbo.incente_.exception
FROM         dbo.incente_ INNER JOIN
                      dbo.incent__ ON dbo.incente_.ord__ref = dbo.incent__.ord__ref
' 
