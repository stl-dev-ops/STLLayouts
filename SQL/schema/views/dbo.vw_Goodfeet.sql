SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_Goodfeet]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_Goodfeet
AS
SELECT     inh_e1e2 *
                          (SELECT     (MAX(etiket_h) + MAX(tssnaf_h)) / 12 / MAX(aantal_b) AS Expr1
                            FROM          dbo.v4eti___
                            WHERE      (off__ref = dbo.hlfvrd__.ord__ref) AND (kpn__ref = dbo.hlfvrd__.kpn__ref)) AS goodft, ord__ref, datum_in, wn___ref, wp___ref
FROM         dbo.hlfvrd__
' 
