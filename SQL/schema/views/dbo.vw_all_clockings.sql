SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_all_clockings]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_all_clockings
AS
select ord__ref, wp___ref, wn___ref, datum___ datefrom, datum___ dateto, ''w_atl1_'' as tabel from w_atl1__
UNION ALL
select ord__ref, wp___ref, wn___ref, datum___ datefrom, datum___ dateto, ''w_atl2_'' as tabel from w_atl2__
UNION ALL
select ord__ref, wp___ref, wn___ref, datum___ datefrom, datum___ dateto, ''w_pnt2_'' as tabel  from w_pnt2__
UNION ALL
select ord__ref, wp___ref, wn___ref, datum___ datefrom, datum___ dateto, ''hispnt__'' as tabel from hispnt__

' 
