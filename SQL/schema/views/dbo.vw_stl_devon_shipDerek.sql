SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stl_devon_shipDerek]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stl_devon_shipDerek
AS
SELECT     vrzv_dat, kla__rpn, b_aantal, levvwref, tstval04, bst__com, ord__ref,
                          (SELECT     gblk_lev
                            FROM          dbo.klabas__
                            WHERE      (dbo.bstlyn__.kla__ref = kla__ref)) AS gblk_lev, lev__com, 
                      CASE WHEN dbo.bstlyn__.tstval04 = ''0001'' THEN ''STL Paid'' ELSE ''Customer Account'' END AS Account, 
                      CASE WHEN dbo.bstlyn__.levvwref = ''005'' THEN ''Ground'' WHEN dbo.bstlyn__.levvwref = ''020'' THEN ''Freight Priority'' WHEN dbo.bstlyn__.levvwref = ''016'' THEN ''International Economy Air''
                       WHEN dbo.bstlyn__.levvwref = ''004'' THEN ''Early AM'' WHEN dbo.bstlyn__.levvwref = ''006'' THEN ''International Priority Air'' WHEN dbo.bstlyn__.levvwref = ''007'' THEN
                       ''Ocean'' WHEN dbo.bstlyn__.levvwref = ''008'' THEN ''Freight Economy'' WHEN dbo.bstlyn__.levvwref = ''009'' THEN ''Saturday Delivery'' WHEN dbo.bstlyn__.levvwref = ''011''
                       THEN ''NDA'' WHEN dbo.bstlyn__.levvwref = ''012'' THEN ''2-day'' WHEN dbo.bstlyn__.levvwref = ''013'' THEN ''3-Day'' WHEN dbo.bstlyn__.levvwref = ''018'' THEN ''Will Call''
                       WHEN dbo.bstlyn__.levvwref = ''019'' THEN ''Contact Customer'' WHEN dbo.bstlyn__.levvwref = ''017'' THEN ''Ship to Stock'' ELSE ''See Jennifer'' END AS Carrier, 
                      vrz__dat
FROM         dbo.bstlyn__
' 
