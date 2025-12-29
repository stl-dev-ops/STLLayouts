SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[cermdatadump]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.cermdatadump
AS
SELECT     kla__ref AS custid__,
                          (SELECT     cdeklaap
                            FROM          dbo.klabas__
                            WHERE      (kla__ref = dbo.bstlyn__.kla__ref)) AS gpcustid, bst__bon AS salesoid, lyn__ref AS sodlynid, kla__rpn AS custkw__, bedr__bm AS amount__, 
                      vrzv_dat AS expship_, DATEPART(month, vrzv_dat) AS exmaand_, DATEPART(year, vrzv_dat) AS exjaar__, DATEPART(week, vrzv_dat) AS exweek__, 
                      vrz__dat AS realship, DATEPART(month, vrz__dat) AS rsmaand_, DATEPART(year, vrz__dat) AS rsjaar__, DATEPART(week, vrz__dat) AS rsweek__, 
                      CASE (bstlyn__.vrz__tst) WHEN ''1'' THEN ''not yet ready for shipment'' WHEN ''N'' THEN ''to ship'' WHEN ''Y'' THEN ''Shipped'' END AS shipped_, CASE (bstlyn__.tstval04) 
                      WHEN ''0001'' THEN ''NO'' WHEN ''0002'' THEN ''YES'' END AS invgp___, ord__ref AS jobnr___, bedrf_bm AS Invoiced$, f_aantal AS Invoiced#, 
                      afg_oms1 AS Description
FROM         dbo.bstlyn__
' 
