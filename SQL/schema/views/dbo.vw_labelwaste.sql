SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_labelwaste]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[vw_labelwaste]
AS
select  
 order___.ord__ref,
 order___.kla__ref,
 order___.omschr__,
 order___.oplage__,
 order___.kla__rpn,
 order___.prkl_ref,
 ordcum__.in_produ,
 order___.prd__ref,
 order___.best_dat,
 open____ = order___.open____,
 dat_open = case(order___.open____)
  when ''N'' then order___.dat_open
  else ''12/31/2049'' 
  end, 
 order___.dossier_,
 prkl_oms = prodkl__ .omschr__,
 qty_finished = isnull(Q1.qty_finished,0),
 qty_finished_ft = (isnull(Q1.qty_finished,0) / isnull(nullif(Q7.aantal_b,0),1)) * isnull(nullif(Q7.repetition,0),1) * (isnull(nullif(Q2.nbr_of_subs,0),1) + isnull(Q3.nbr_of_subs,0)),
 est_press = Q2.est_press,
 est_feet = isnull(Q2.est_ft,0) + isnull(Q3.est_ft,0),
 act_feet = isnull(Q4.act_ft,0),
 perc_waste = case(isnull(Q2.est_ft,0) + isnull(Q3.est_ft,0))
  when 0 then 0
  else round((isnull(Q4.act_ft,0)/(isnull(nullif(Q2.est_ft,0),1) + isnull(Q3.est_ft,1)))*100,1)
  end, 
 perc_overall_waste = case(isnull(Q1.qty_finished,0) / isnull(nullif(Q7.aantal_b,0),1)) * isnull(nullif(Q7.repetition,0),1) * (isnull(nullif(Q2.nbr_of_subs,0),1) + isnull(Q3.nbr_of_subs,0))
  when 0 then 0
  else round(isnull(Q4.act_ft,0)/((isnull(nullif(Q1.qty_finished,0),1) / isnull(nullif(Q7.aantal_b,0),1)) * isnull(nullif(Q7.repetition,0),1) * (isnull(nullif(Q2.nbr_of_subs,0),1) + isnull(Q3.nbr_of_subs,0)))*100,1)
  end, 
 nbr_of_substr = isnull(Q2.nbr_of_subs,0) + isnull(Q3.nbr_of_subs,0),
 est_cost = isnull(Q5.est_cost,0),
 act_cost = isnull(Q4.act_cost,0),
 perc_cost = case(isnull(Q5.est_cost,0))
  when 0 then 0
  else round((isnull(Q4.act_cost,0)/isnull(nullif(Q5.est_cost,0),1))*100,1)
  end,
 qty_finished_cost = isnull(Q4.act_cost,0) *  ((isnull(Q1.qty_finished,0) / isnull(nullif(Q7.aantal_b,0),1)) * isnull(nullif(Q7.repetition,0),1) * (isnull(nullif(Q2.nbr_of_subs,0),1) + isnull(Q3.nbr_of_subs,0))) / (isnull(nullif(Q4.act_ft,0),1)),
 est_sales = isnull(Q6.est_sales,0),
 act_sales = isnull(ordcum__.facafgv6,0)

FROM order___
join ordcum__ on order___.ord__ref = ordcum__.ord__ref
join prodkl__ on order___.prkl_ref = prodkl__.prkl_ref
cross apply (select sum(aant_prd) as qty_finished from v4vrs___ where off__ref = order___.ord__ref) Q1
cross apply (select 
             min(v4edg___.prs__ref) as est_press,
             min(v4eti___.tedrkd__) as ft_ordered, ---?
             min(v4eti___.tedrkdto) as est_ft, 
             count(distinct v4eti___.kpn__ref) as nbr_of_subs
             from v4eti___
             join v4edg___ on v4eti___.off__ref = v4edg___.off__ref and v4eti___.kpn__ref = v4edg___.kpn__ref
             where v4eti___.off__ref = order___.ord__ref) Q2 --- estimation base substrate
cross apply (select 
             sum(v4etaf__.bst____m) as est_ft, 
             count(v4etaf__.kpn__ref) as nbr_of_subs
             from v4etaf__
             where v4etaf__.off__ref = order___.ord__ref
               and v4etaf__.drg__ref != '''') Q3  --- estimation extra substrates            
cross apply (select 
             sum(kost____) as act_cost,
			 sum(aantal__) *-1 as act_ft
			 from stobew__
			 where art__srt = ''5''
			   and ord__ref = order___.ord__ref) Q4 --- actual consumption
cross apply (select 
             sum(total___) as est_cost
			 from v4kkst__
			 where rbk__ref in (''610000'',''610001'')
			   and kst__srt = ''0''
			   and off__ref = order___.ord__ref) Q5 --- estimation consumption cost
cross apply (select 
             sum(CASE when (v4vrs___.prys_srt = ''7'') then v4vrs___.oplage__*v4vrs___.prijs_bm /1000
			          when (v4vrs___.prys_srt = ''5'') then v4vrs___.oplage__*v4vrs___.prijs_bm 
			          else 0 end) as est_sales
			 from v4vrs___
			 where off__ref = order___.ord__ref) Q6 --- estimation sales
cross apply (SELECT top 1 ((v4eti___.etiket_h+v4eti___.tssnaf_h)*0.0833333) as repetition, 
                          v4eti___.aantal_b as aantal_b 
		     FROM v4eti___
             where off__ref = order___.ord__ref) Q7 --- size detail for feet calc
 where order___.  type_ord != ''3''           

' 
