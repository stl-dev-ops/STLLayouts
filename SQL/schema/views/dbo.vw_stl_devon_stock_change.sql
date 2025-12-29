SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_stock_change]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_stock_change
AS
SELECT     dbo.hisafg__.afg__ref, dbo.hisafg__.kla__ref, dbo.hisafg__.kla__rpn, SUM(dbo.hisafg__.aant__in) AS Instock, SUM(dbo.hisafg__.aant_uit) AS Outstock, 
                      dbo.afgart__.afg_oms1, dbo.afgart__.art__ref AS Material, dbo.afgart__.klcod_fr, dbo.afgart__.wikk____, dbo.afgart__.vpak_ref, dbo.afgart__.kpnafw_3
FROM         dbo.hisafg__ INNER JOIN
                      dbo.afgart__ ON dbo.hisafg__.afg__ref = dbo.afgart__.afg__ref
WHERE     (dbo.hisafg__.datum___ > ''1/1/2017'') AND (dbo.hisafg__.datum___ < ''3/21/2018'')
GROUP BY dbo.hisafg__.afg__ref, dbo.hisafg__.kla__ref, dbo.hisafg__.kla__rpn, dbo.afgart__.afg_oms1, dbo.afgart__.art__ref, dbo.afgart__.klcod_fr, dbo.afgart__.wikk____, 
                      dbo.afgart__.vpak_ref, dbo.afgart__.kpnafw_3
' 
