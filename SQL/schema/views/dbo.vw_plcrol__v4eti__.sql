SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_plcrol__v4eti__]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_plcrol__v4eti__
AS
 SELECT     dbo.plcrol__.art__ref AS matid, dbo.plcrol__.artd_ref AS rollid, dbo.plcrol__.wp___ref AS pressid, dbo.plcrol__.akt__ref AS actid, dbo.plcrol__.wn___ref AS operid, 
                      dbo.plcrol__.dat__beg AS startd, dbo.plcrol__.dat__end AS endd, dbo.GetMinutesFromCERMTimeString(dbo.plcrol__.uur__beg) AS startu, 
                      dbo.GetMinutesFromCERMTimeString(dbo.plcrol__.uur__end) AS endu, dbo.plcrol__.aantal__ AS grossft, dbo.plcrol__.aantlmok AS goodft, 
                      dbo.plcrol__.aantexok AS goodlbl, dbo.plcrol__.ord__ref AS jobid, dbo.plcrol__.kpn__ref AS sheetid,
                          (SELECT     art_oms1
                            FROM          dbo.artiky__
                            WHERE      (art__ref = dbo.plcrol__.art__ref)) AS matdesc,
                          (SELECT     akt_oms_
                            FROM          dbo.wpakt___
                            WHERE      (wp___ref = dbo.plcrol__.wp___ref) AND (akt__ref = dbo.plcrol__.akt__ref)) AS actidesc,
                          (SELECT     wp_naam_
                            FROM          dbo.werkpo__
                            WHERE      (wp___ref = dbo.plcrol__.wp___ref)) AS machdesc,
                          (SELECT     kla__ref
                            FROM          dbo.order___
                            WHERE      (ord__ref = dbo.plcrol__.ord__ref)) AS custid,
                          (SELECT     kla__rpn
                            FROM          dbo.order___ AS order____1
                            WHERE      (ord__ref = dbo.plcrol__.ord__ref)) AS custkw, dbo.v4eti___.etiket_b AS sizeac, dbo.v4eti___.etiket_h AS sizear, dbo.v4eti___.tssnaf_b AS gabac, 
                      dbo.v4eti___.tssnaf_h AS gabar, dbo.v4eti___.aantal_h AS nmbrar, dbo.v4eti___.aantal_b AS nmbrac, CASE DATEDIFF(DD, dat__beg, dat__end) 
                      WHEN 0 THEN dbo.GetMinutesFromCERMTimeString(uur__end) - dbo.GetMinutesFromCERMTimeString(uur__beg) 
                      WHEN 1 THEN (1440 - dbo.GetMinutesFromCERMTimeString(uur__beg)) + dbo.GetMinutesFromCERMTimeString(uur__end) END AS duration
FROM         dbo.plcrol__ LEFT OUTER JOIN
                      dbo.v4eti___ ON dbo.plcrol__.ord__ref = dbo.v4eti___.off__ref AND dbo.plcrol__.kpn__ref = dbo.v4eti___.kpn__ref
WHERE     (dbo.plcrol__.soort___ = ''f'') AND (dbo.plcrol__.uur__end <> '' XX:XX'')


UNION ALL

select '''' as matid, '''' as rollid, wp___ref as pressid, akt__ref as actid, wn___ref as operid, datum___ as startd, case 
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then datum___
when dbo.GetMinutesFromCERMTimeString(stoppen_)>1440 then datum___+1
else datum___+2
end as endd,
case
when dbo.GetMinutesFromCERMTimeString(starten_)<1440 then dbo.GetMinutesFromCERMTimeString(starten_)
else dbo.GetMinutesFromCERMTimeString(starten_)-1440
end as startu, case
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then dbo.GetMinutesFromCERMTimeString(stoppen_)
else dbo.GetMinutesFromCERMTimeString(stoppen_)-1440
end as endu, '''' as grossft,'''' as  goodft, '''' as goodlbl,
      ord__ref as  jobid, '''' as  sheetid,'''' as  matdesc, (SELECT     akt_oms_
                            FROM          dbo.wpakt___
                            WHERE      (wp___ref = dbo.w_atl1__.wp___ref) AND (akt__ref = dbo.w_atl1__.akt__ref)) as actidesc, '''' as machdesc, '''' as custid, '''' as custkw, '''' as sizeac, '''' as sizear, '''' as gabac, '''' as gabar,'''' as  nmbrar, '''' as nmbrac, 
dbo.GetMinutesFromCERMTimeString(stoppen_)-dbo.GetMinutesFromCERMTimeString(starten_) as duration

 from w_atl1__ where wp___ref=''0000'' and stoppen_<>'' XX:XX''
 union all
 select '''' as matid, '''' as rollid, wp___ref as pressid, akt__ref as actid, wn___ref as operid, datum___ as startd, case 
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then datum___
when dbo.GetMinutesFromCERMTimeString(stoppen_)>1440 then datum___+1
else datum___+2
end as endd,
case
when dbo.GetMinutesFromCERMTimeString(starten_)<1440 then dbo.GetMinutesFromCERMTimeString(starten_)
else dbo.GetMinutesFromCERMTimeString(starten_)-1440
end as startu, case
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then dbo.GetMinutesFromCERMTimeString(stoppen_)
else dbo.GetMinutesFromCERMTimeString(stoppen_)-1440
end as endu, '''' as grossft,'''' as  goodft, '''' as goodlbl,
      ord__ref as  jobid, '''' as  sheetid,'''' as  matdesc,(SELECT     akt_oms_
                            FROM          dbo.wpakt___
                            WHERE      (wp___ref = dbo.w_atl2__.wp___ref) AND (akt__ref = dbo.w_atl2__.akt__ref)) as actidesc, '''' as machdesc, '''' as custid, '''' as custkw, '''' as sizeac, '''' as sizear, '''' as gabac, '''' as gabar,'''' as  nmbrar, '''' as nmbrac, 
dbo.GetMinutesFromCERMTimeString(stoppen_)-dbo.GetMinutesFromCERMTimeString(starten_) as duration

 from w_atl2__ where wp___ref=''0000'' and stoppen_<>'' XX:XX''
 
 union all
 select '''' as matid, '''' as rollid, wp___ref as pressid, akt__ref as actid, wn___ref as operid, datum___ as startd, case 
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then datum___
when dbo.GetMinutesFromCERMTimeString(stoppen_)>1440 then datum___+1
else datum___+2
end as endd,
case
when dbo.GetMinutesFromCERMTimeString(starten_)<1440 then dbo.GetMinutesFromCERMTimeString(starten_)
else dbo.GetMinutesFromCERMTimeString(starten_)-1440
end as startu, case
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then dbo.GetMinutesFromCERMTimeString(stoppen_)
else dbo.GetMinutesFromCERMTimeString(stoppen_)-1440
end as endu, '''' as grossft,'''' as  goodft, '''' as goodlbl,
      ord__ref as  jobid, '''' as  sheetid,'''' as  matdesc,(SELECT     akt_oms_
                            FROM          dbo.wpakt___
                            WHERE      (wp___ref = dbo.w_pnt2__.wp___ref) AND (akt__ref = dbo.w_pnt2__.akt__ref)) as actidesc, '''' as machdesc, '''' as custid, '''' as custkw, '''' as sizeac, '''' as sizear, '''' as gabac, '''' as gabar,'''' as  nmbrar, '''' as nmbrac, 
dbo.GetMinutesFromCERMTimeString(stoppen_)-dbo.GetMinutesFromCERMTimeString(starten_) as duration

 from w_pnt2__ where wp___ref=''0000'' and stoppen_<>'' XX:XX''
 union all
 select '''' as matid, '''' as rollid, wp___ref as pressid, akt__ref as actid, wn___ref as operid, datum___ as startd, case 
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then datum___
when dbo.GetMinutesFromCERMTimeString(stoppen_)>1440 then datum___+1
else datum___+2
end as endd,
case
when dbo.GetMinutesFromCERMTimeString(starten_)<1440 then dbo.GetMinutesFromCERMTimeString(starten_)
else dbo.GetMinutesFromCERMTimeString(starten_)-1440
end as startu, case
when dbo.GetMinutesFromCERMTimeString(stoppen_)<1440 then dbo.GetMinutesFromCERMTimeString(stoppen_)
else dbo.GetMinutesFromCERMTimeString(stoppen_)-1440
end as endu, '''' as grossft,'''' as  goodft, '''' as goodlbl,
      ord__ref as  jobid, '''' as  sheetid,'''' as  matdesc,(SELECT     akt_oms_
                            FROM          dbo.wpakt___
                            WHERE      (wp___ref = dbo.hispnt__.wp___ref) AND (akt__ref = dbo.hispnt__.akt__ref)) as actidesc, '''' as machdesc, '''' as custid, '''' as custkw, '''' as sizeac, '''' as sizear, '''' as gabac, '''' as gabar,'''' as  nmbrar, '''' as nmbrac, 
dbo.GetMinutesFromCERMTimeString(stoppen_)-dbo.GetMinutesFromCERMTimeString(starten_) as duration

 from hispnt__ where wp___ref=''0000'' and stoppen_<>'' XX:XX''
 
 
 
 
 
' 
