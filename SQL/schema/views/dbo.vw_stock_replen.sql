SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stock_replen]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_stock_replen]
AS
SELECT        dbo.afgant__.afg__ref, dbo.afgart__.vrrd_art AS stock, dbo.afgant__.in__vrrd, dbo.afgant__.te_lever, dbo.afgant__.in_produ, dbo.afgant__.in___qrt, dbo.afgant__.in_best_, dbo.afgart__.afg__rpn, 
                         dbo.afgart__.afg_oms1, dbo.afgart__.afg_oms2, dbo.afgart__.comm_chk, dbo.afgart__.lev__ref, dbo.afgart__.lev__rpn, dbo.afgart__.zyn__ref, dbo.afgart__.minstock, dbo.afgart__.maxstock, 
                         (dbo.afgant__.in__vrrd + dbo.afgant__.in_best_ + dbo.afgant__.in_produ) - (dbo.afgant__.te_lever + dbo.afgant__.in___qrt) AS qtyshort, 
                         dbo.afgart__.minstock - ((dbo.afgant__.in__vrrd + dbo.afgant__.in_best_ + dbo.afgant__.in_produ) - (dbo.afgant__.te_lever + dbo.afgant__.in___qrt)) AS replen__
FROM            dbo.afgant__ LEFT OUTER JOIN
                         dbo.afgart__ ON dbo.afgant__.afg__ref = dbo.afgart__.afg__ref
WHERE        (dbo.afgart__.uitgeput = ''N'')
' 
