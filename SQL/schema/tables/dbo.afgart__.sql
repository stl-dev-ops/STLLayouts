SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgart__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms11] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms12] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms13] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms14] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms15] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms16] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms17] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms18] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms19] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms21] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms22] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms23] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms24] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms25] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms26] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms27] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms28] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgoms29] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_uitg] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_crea] [date] NOT NULL,
	[lock_usr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aant] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant6] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant7] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant8] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant9] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms__pak] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[halffabr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sms__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[multipart] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtdrkvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfm_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz_dflt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_code] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar__ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean___nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrijveld] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrijvel2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrijdat1] [date] NOT NULL,
	[krit___1] [float] NOT NULL,
	[krit___2] [float] NOT NULL,
	[vdt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_1ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_2ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_3ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_4ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_5ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_6ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_7ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_8ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bar_9ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__1nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__2nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__3nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__4nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__5nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__6nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__7nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__8nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean__9nr] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval06] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval07] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval08] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval09] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ext__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_dflt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_wy] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_keu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_def_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_akp_vm] [float] NOT NULL,
	[kort_akp] [float] NOT NULL,
	[vkp___vm] [float] NOT NULL,
	[pr_incl_] [float] NOT NULL,
	[pr_excl_] [float] NOT NULL,
	[pr_inclv] [float] NOT NULL,
	[pr_exclv] [float] NOT NULL,
	[pr_inclo] [float] NOT NULL,
	[pr_exclo] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_oms2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[spec_lev] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrm_d] [int] NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[min__chk] [int] NOT NULL,
	[max__chk] [int] NOT NULL,
	[per__chk] [int] NOT NULL,
	[comm_chk] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__web] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wrkd_web] [int] NOT NULL,
	[min__web] [int] NOT NULL,
	[max__web] [int] NOT NULL,
	[per__web] [int] NOT NULL,
	[chvrdweb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[isi__web] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[url__dam] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[comm_web] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[kenm_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[accoord_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_acco] [date] NOT NULL,
	[accoord_customer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[basisprd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kit__off] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordrefpp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[qa_level] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__e2] [float] NOT NULL,
	[aant__e3] [float] NOT NULL,
	[aant__e4] [float] NOT NULL,
	[aant__e5] [float] NOT NULL,
	[art_ref1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom1] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom2] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom3] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom4] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom5] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_4] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_5] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanteti1] [int] NOT NULL,
	[aanteti2] [int] NOT NULL,
	[aanteti3] [int] NOT NULL,
	[aanteti4] [int] NOT NULL,
	[aanteti5] [int] NOT NULL,
	[laypalet] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_doos] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[ligging_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanteenh] [float] NOT NULL,
	[nto_1000] [float] NOT NULL,
	[bto_1000] [float] NOT NULL,
	[voorrang] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[diamt_mn] [float] NOT NULL,
	[diamt_mx] [float] NOT NULL,
	[aant_rol] [float] NOT NULL,
	[kern____] [float] NOT NULL,
	[dikteafg] [float] NOT NULL,
	[diktekrn] [float] NOT NULL,
	[vpk_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpk_rest] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantdoos] [float] NOT NULL,
	[pr_stock] [float] NOT NULL,
	[minstock] [float] NOT NULL,
	[maxstock] [float] NOT NULL,
	[vrrd_art] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd_mag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_orig] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd_orig] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[cliche_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[cliche_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_kern] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[commkern] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__las] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[comm_las] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla___vw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klaprint] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__mac] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag_10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordergeb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[elm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afdruk__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_stock] [float] NOT NULL,
	[reserve_] [float] NOT NULL,
	[prod_tyd] [int] NOT NULL,
	[wij__dat] [date] NOT NULL,
	[wij__usr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_b] [float] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[m2__1000] [float] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[code__kl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[radius__] [float] NOT NULL,
	[rol____b] [float] NOT NULL,
	[lay_flat] [float] NOT NULL,
	[overlap_] [float] NOT NULL,
	[face_h] [float] NOT NULL,
	[face_b] [float] NOT NULL,
	[backoffset_b] [float] NOT NULL,
	[sealtype_b] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[seal_b] [float] NOT NULL,
	[sealtype_onder] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[seal_h_onder] [float] NOT NULL,
	[gussettype_b] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gusset_b] [float] NOT NULL,
	[lblgp___] [float] NOT NULL,
	[lblgp_mn] [float] NOT NULL,
	[lblgp_mx] [float] NOT NULL,
	[aant_hgt] [int] NOT NULL,
	[aant_brd] [int] NOT NULL,
	[aantlbrd] [int] NOT NULL,
	[kopwit__] [float] NOT NULL,
	[voetwit_] [float] NOT NULL,
	[wikk____] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm3_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm4_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm5_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm6_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_fr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_lm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_rg] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stcntref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[blwkopnr] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[stap_bre] [float] NOT NULL,
	[stap_len] [float] NOT NULL,
	[sny__bre] [float] NOT NULL,
	[sny__len] [float] NOT NULL,
	[vrzflm_a] [int] NOT NULL,
	[vrzflm_b] [int] NOT NULL,
	[inw__mta] [float] NOT NULL,
	[inw__mtb] [float] NOT NULL,
	[inw__mtc] [float] NOT NULL,
	[inktzyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kern_mat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw_lint] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [float] NOT NULL,
	[stgy_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_ori] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[diamtmax] [float] NOT NULL,
	[diamtmin] [float] NOT NULL,
	[editordo] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[artwork_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[var_data] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[src_file] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgmdlrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmpl_ref] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[dat__vkp] [date] NOT NULL,
	[dat_stck] [date] NOT NULL,
	[seal_zijkant] [float] NOT NULL,
	[gusset_onder] [float] NOT NULL,
	[edge_trim] [float] NOT NULL,
	[gap] [float] NOT NULL,
	[land_productie] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[gtin14] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval11] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval12] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval13] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval14] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval15] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval16] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval17] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval18] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval19] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval20] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[uuid] [uniqueidentifier] NOT NULL,
	[advanced_approval_code] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[max_overrun_pct] [float] NULL,
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [afgarti1] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti2')
CREATE NONCLUSTERED INDEX [afgarti2] ON [dbo].[afgart__]
(
	[kla__ref] ASC,
	[zynrefkl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti3')
CREATE NONCLUSTERED INDEX [afgarti3] ON [dbo].[afgart__]
(
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti4')
CREATE NONCLUSTERED INDEX [afgarti4] ON [dbo].[afgart__]
(
	[uitgeput] ASC,
	[off1_ref] ASC,
	[bst__web] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti5')
CREATE NONCLUSTERED INDEX [afgarti5] ON [dbo].[afgart__]
(
	[klm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti6')
CREATE NONCLUSTERED INDEX [afgarti6] ON [dbo].[afgart__]
(
	[ordrefpp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti7')
CREATE NONCLUSTERED INDEX [afgarti7] ON [dbo].[afgart__]
(
	[afg2_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti8')
CREATE NONCLUSTERED INDEX [afgarti8] ON [dbo].[afgart__]
(
	[afgmdlrf] ASC,
	[uitgeput] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgarti9')
CREATE NONCLUSTERED INDEX [afgarti9] ON [dbo].[afgart__]
(
	[shaperef] ASC,
	[var__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgartia')
CREATE NONCLUSTERED INDEX [afgartia] ON [dbo].[afgart__]
(
	[off1_ref] ASC,
	[bst__web] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgartib')
CREATE UNIQUE NONCLUSTERED INDEX [afgartib] ON [dbo].[afgart__]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgart__]') AND name = N'afgartic')
CREATE NONCLUSTERED INDEX [afgartic] ON [dbo].[afgart__]
(
	[dat_crea] ASC,
	[uitgeput] ASC,
	[vdt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__versiref]  DEFAULT ('001') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afg_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afg_oms1]  DEFAULT ('') FOR [afg_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms11]  DEFAULT ('') FOR [afgoms11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms12]  DEFAULT ('') FOR [afgoms12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms13]  DEFAULT ('') FOR [afgoms13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms14]  DEFAULT ('') FOR [afgoms14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms15]  DEFAULT ('') FOR [afgoms15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms16]  DEFAULT ('') FOR [afgoms16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms17]  DEFAULT ('') FOR [afgoms17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms18]  DEFAULT ('') FOR [afgoms18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms19]  DEFAULT ('') FOR [afgoms19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afg_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afg_oms2]  DEFAULT ('') FOR [afg_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms21]  DEFAULT ('') FOR [afgoms21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms22]  DEFAULT ('') FOR [afgoms22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms23]  DEFAULT ('') FOR [afgoms23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms24]  DEFAULT ('') FOR [afgoms24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms25]  DEFAULT ('') FOR [afgoms25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms26]  DEFAULT ('') FOR [afgoms26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms27]  DEFAULT ('') FOR [afgoms27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms28]  DEFAULT ('') FOR [afgoms28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgoms29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgoms29]  DEFAULT ('') FOR [afgoms29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__uitgeput]  DEFAULT ('N') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dat_uitg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dat_uitg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_uitg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dat_crea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dat_crea]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_crea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__lock_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__lock_usr]  DEFAULT ('1') FOR [lock_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afg__rpn]  DEFAULT ('') FOR [afg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__oms_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__oms_aant]  DEFAULT ('') FOR [oms_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant1]  DEFAULT ('') FOR [omsaant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant2]  DEFAULT ('') FOR [omsaant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant3]  DEFAULT ('') FOR [omsaant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant4]  DEFAULT ('') FOR [omsaant4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant5]  DEFAULT ('') FOR [omsaant5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant6]  DEFAULT ('') FOR [omsaant6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant7]  DEFAULT ('') FOR [omsaant7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant8]  DEFAULT ('') FOR [omsaant8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omsaant9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omsaant9]  DEFAULT ('') FOR [omsaant9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__oms_aan2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__oms_aan2]  DEFAULT ('') FOR [oms_aan2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__oms_aan3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__oms_aan3]  DEFAULT ('') FOR [oms_aan3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__oms__pak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__oms__pak]  DEFAULT ('') FOR [oms__pak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__halffabr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__halffabr]  DEFAULT ('N') FOR [halffabr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__sms__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__sms__typ]  DEFAULT ('0') FOR [sms__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__multipart]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__multipart]  DEFAULT ('0') FOR [multipart]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__srtdrkvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__srtdrkvl]  DEFAULT ('0') FOR [srtdrkvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__prfm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__prfm_ref]  DEFAULT ('') FOR [prfm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrz_dflt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrz_dflt]  DEFAULT ('1') FOR [vrz_dflt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__klm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__klm__ref]  DEFAULT ('') FOR [klm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__srt_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__srt_code]  DEFAULT ('') FOR [srt_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar__ref]  DEFAULT ('') FOR [bar__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean___nr]  DEFAULT ('') FOR [ean___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrijveld]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrijveld]  DEFAULT ('') FOR [vrijveld]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrijvel2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrijvel2]  DEFAULT ('') FOR [vrijvel2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrijdat1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrijdat1]  DEFAULT (CONVERT([date],'20490101',(112))) FOR [vrijdat1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__krit___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__krit___1]  DEFAULT ((0)) FOR [krit___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__krit___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__krit___2]  DEFAULT ((0)) FOR [krit___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vdt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vdt__ref]  DEFAULT ('') FOR [vdt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_1ref]  DEFAULT ('') FOR [bar_1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_2ref]  DEFAULT ('') FOR [bar_2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_3ref]  DEFAULT ('') FOR [bar_3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_4ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_4ref]  DEFAULT ('') FOR [bar_4ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_5ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_5ref]  DEFAULT ('') FOR [bar_5ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_6ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_6ref]  DEFAULT ('') FOR [bar_6ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_7ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_7ref]  DEFAULT ('') FOR [bar_7ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_8ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_8ref]  DEFAULT ('') FOR [bar_8ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bar_9ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bar_9ref]  DEFAULT ('') FOR [bar_9ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__1nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__1nr]  DEFAULT ('') FOR [ean__1nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__2nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__2nr]  DEFAULT ('') FOR [ean__2nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__3nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__3nr]  DEFAULT ('') FOR [ean__3nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__4nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__4nr]  DEFAULT ('') FOR [ean__4nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__5nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__5nr]  DEFAULT ('') FOR [ean__5nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__6nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__6nr]  DEFAULT ('') FOR [ean__6nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__7nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__7nr]  DEFAULT ('') FOR [ean__7nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__8nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__8nr]  DEFAULT ('') FOR [ean__8nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ean__9nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ean__9nr]  DEFAULT ('') FOR [ean__9nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ext__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ext__ref]  DEFAULT ('100001') FOR [ext__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__prys_srt]  DEFAULT ('7') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__prys_typ]  DEFAULT ('1') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__fac_dflt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__fac_dflt]  DEFAULT ('1') FOR [fac_dflt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__omzet_wy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__omzet_wy]  DEFAULT ('1') FOR [omzet_wy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dgbk_keu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dgbk_keu]  DEFAULT ('1') FOR [dgbk_keu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__arek2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__arek2ref]  DEFAULT ('') FOR [arek2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__btw_def_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__btw_def_]  DEFAULT ('0') FOR [btw_def_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__stx__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__stx__srt]  DEFAULT ('1') FOR [stx__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__b_akp_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__b_akp_vm]  DEFAULT ((0)) FOR [b_akp_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kort_akp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kort_akp]  DEFAULT ((0)) FOR [kort_akp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vkp___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vkp___vm]  DEFAULT ((0)) FOR [vkp___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pr_incl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pr_incl_]  DEFAULT ((0)) FOR [pr_incl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pr_excl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pr_excl_]  DEFAULT ((0)) FOR [pr_excl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pr_inclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pr_inclv]  DEFAULT ((0)) FOR [pr_inclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pr_exclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pr_exclv]  DEFAULT ((0)) FOR [pr_exclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pr_inclo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pr_inclo]  DEFAULT ((0)) FOR [pr_inclo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pr_exclo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pr_exclo]  DEFAULT ((0)) FOR [pr_exclo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__fac_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__fac_oms1]  DEFAULT ('') FOR [fac_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__fac_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__fac_oms2]  DEFAULT ('') FOR [fac_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__spec_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__spec_lev]  DEFAULT ('') FOR [spec_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__levtrm_d]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__levtrm_d]  DEFAULT ((0)) FOR [levtrm_d]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__layoutnr]  DEFAULT ('11') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__min__chk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__min__chk]  DEFAULT ((0)) FOR [min__chk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__max__chk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__max__chk]  DEFAULT ((0)) FOR [max__chk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__per__chk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__per__chk]  DEFAULT ((1)) FOR [per__chk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__comm_chk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__comm_chk]  DEFAULT ('') FOR [comm_chk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bst__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bst__web]  DEFAULT ('N') FOR [bst__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__wrkd_web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__wrkd_web]  DEFAULT ((0)) FOR [wrkd_web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__min__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__min__web]  DEFAULT ((0)) FOR [min__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__max__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__max__web]  DEFAULT ((0)) FOR [max__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__per__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__per__web]  DEFAULT ((1)) FOR [per__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__chvrdweb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__chvrdweb]  DEFAULT ('Y') FOR [chvrdweb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__isi__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__isi__web]  DEFAULT ('N') FOR [isi__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__url__dam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__url__dam]  DEFAULT ('') FOR [url__dam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__comm_web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__comm_web]  DEFAULT ('') FOR [comm_web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kenm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kenm_ref]  DEFAULT ('') FOR [kenm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__accoord_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__accoord_]  DEFAULT ('Y') FOR [accoord_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dat_acco]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dat_acco]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_acco]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__accoord_customer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__accoord_customer]  DEFAULT ('Y') FOR [accoord_customer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__basisprd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__basisprd]  DEFAULT ('1') FOR [basisprd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__off1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__off1_ref]  DEFAULT ('') FOR [off1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dam__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dam__ref]  DEFAULT ('') FOR [dam__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kit__off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kit__off]  DEFAULT ('') FOR [kit__off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__shp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__shp__ref]  DEFAULT ('') FOR [shp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__var__ref]  DEFAULT ('') FOR [var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ordrefpp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ordrefpp]  DEFAULT ('') FOR [ordrefpp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__qa_level]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__qa_level]  DEFAULT ('') FOR [qa_level]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aant__e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aant__e2]  DEFAULT ((0)) FOR [aant__e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aant__e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aant__e3]  DEFAULT ((0)) FOR [aant__e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aant__e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aant__e4]  DEFAULT ((0)) FOR [aant__e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aant__e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aant__e5]  DEFAULT ((0)) FOR [aant__e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__art_ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__art_ref1]  DEFAULT ('') FOR [art_ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__art_ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__art_ref2]  DEFAULT ('') FOR [art_ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__art_ref3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__art_ref3]  DEFAULT ('') FOR [art_ref3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__art_ref4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__art_ref4]  DEFAULT ('') FOR [art_ref4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__art_ref5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__art_ref5]  DEFAULT ('') FOR [art_ref5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpak_id1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpak_id1]  DEFAULT ('') FOR [vpak_id1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpak_id2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpak_id2]  DEFAULT ('') FOR [vpak_id2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpak_id3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpak_id3]  DEFAULT ('') FOR [vpak_id3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpak_id4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpak_id4]  DEFAULT ('') FOR [vpak_id4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpak_id5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpak_id5]  DEFAULT ('') FOR [vpak_id5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpakcom1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpakcom1]  DEFAULT ('') FOR [vpakcom1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpakcom2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpakcom2]  DEFAULT ('') FOR [vpakcom2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpakcom3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpakcom3]  DEFAULT ('') FOR [vpakcom3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpakcom4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpakcom4]  DEFAULT ('') FOR [vpakcom4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpakcom5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpakcom5]  DEFAULT ('') FOR [vpakcom5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__layvpk_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__layvpk_1]  DEFAULT ('') FOR [layvpk_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__layvpk_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__layvpk_2]  DEFAULT ('') FOR [layvpk_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__layvpk_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__layvpk_3]  DEFAULT ('') FOR [layvpk_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__layvpk_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__layvpk_4]  DEFAULT ('') FOR [layvpk_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__layvpk_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__layvpk_5]  DEFAULT ('') FOR [layvpk_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__etiket_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__etiket_1]  DEFAULT ('N') FOR [etiket_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__etiket_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__etiket_2]  DEFAULT ('N') FOR [etiket_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__etiket_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__etiket_3]  DEFAULT ('N') FOR [etiket_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__etiket_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__etiket_4]  DEFAULT ('N') FOR [etiket_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__etiket_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__etiket_5]  DEFAULT ('N') FOR [etiket_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aanteti1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aanteti1]  DEFAULT ((1)) FOR [aanteti1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aanteti2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aanteti2]  DEFAULT ((1)) FOR [aanteti2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aanteti3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aanteti3]  DEFAULT ((1)) FOR [aanteti3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aanteti4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aanteti4]  DEFAULT ((1)) FOR [aanteti4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aanteti5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aanteti5]  DEFAULT ((1)) FOR [aanteti5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__laypalet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__laypalet]  DEFAULT ('') FOR [laypalet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__srt_doos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__srt_doos]  DEFAULT ('') FOR [srt_doos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ligging_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ligging_]  DEFAULT ('') FOR [ligging_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aanteenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aanteenh]  DEFAULT ((1.0)) FOR [aanteenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__nto_1000]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__nto_1000]  DEFAULT ((0.0)) FOR [nto_1000]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__bto_1000]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__bto_1000]  DEFAULT ((0.0)) FOR [bto_1000]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__voorrang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__voorrang]  DEFAULT ('2') FOR [voorrang]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__diamt_mn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__diamt_mn]  DEFAULT ((0)) FOR [diamt_mn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__diamt_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__diamt_mx]  DEFAULT ((0)) FOR [diamt_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aant_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aant_rol]  DEFAULT ((0)) FOR [aant_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kern____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kern____]  DEFAULT ((0)) FOR [kern____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dikteafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dikteafg]  DEFAULT ((0)) FOR [dikteafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__diktekrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__diktekrn]  DEFAULT ((0)) FOR [diktekrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpk_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpk_vrpl]  DEFAULT ('N') FOR [vpk_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vpk_rest]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vpk_rest]  DEFAULT ('Y') FOR [vpk_rest]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aantdoos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aantdoos]  DEFAULT ((0)) FOR [aantdoos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pr_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pr_stock]  DEFAULT ((0)) FOR [pr_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__minstock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__minstock]  DEFAULT ((0)) FOR [minstock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__maxstock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__maxstock]  DEFAULT ((0)) FOR [maxstock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrrd_art]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrrd_art]  DEFAULT ('N') FOR [vrrd_art]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrrd_mag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrrd_mag]  DEFAULT ('1') FOR [vrrd_mag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrrd_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrrd_typ]  DEFAULT ('1') FOR [vrrd_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afg_orig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afg_orig]  DEFAULT ('') FOR [afg_orig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__prd_orig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__prd_orig]  DEFAULT ('') FOR [prd_orig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__cliche_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__cliche_1]  DEFAULT ('') FOR [cliche_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__cliche_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__cliche_2]  DEFAULT ('') FOR [cliche_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__drg_kern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__drg_kern]  DEFAULT ('0') FOR [drg_kern]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__commkern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__commkern]  DEFAULT ('') FOR [commkern]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__drg__las]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__drg__las]  DEFAULT ('0') FOR [drg__las]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__comm_las]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__comm_las]  DEFAULT ('') FOR [comm_las]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kla___vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kla___vw]  DEFAULT ('0') FOR [kla___vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__klaprint]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__klaprint]  DEFAULT ('0') FOR [klaprint]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kla__mac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kla__mac]  DEFAULT ('') FOR [kla__mac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__drg_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__drg_vrpl]  DEFAULT ('') FOR [drg_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_01]  DEFAULT ('') FOR [vraag_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_02]  DEFAULT ('') FOR [vraag_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_03]  DEFAULT ('') FOR [vraag_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_04]  DEFAULT ('') FOR [vraag_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_05]  DEFAULT ('') FOR [vraag_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_06]  DEFAULT ('') FOR [vraag_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_07]  DEFAULT ('') FOR [vraag_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_08]  DEFAULT ('') FOR [vraag_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_09]  DEFAULT ('') FOR [vraag_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vraag_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vraag_10]  DEFAULT ('') FOR [vraag_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__ordergeb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__ordergeb]  DEFAULT ('0') FOR [ordergeb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__elm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__elm__ref]  DEFAULT ('') FOR [elm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afdruk__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afdruk__]  DEFAULT ('Y') FOR [afdruk__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__reserve_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__reserve_]  DEFAULT ((0)) FOR [reserve_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__prod_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__prod_tyd]  DEFAULT ((0)) FOR [prod_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__wij__dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__wij__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__wij__usr]  DEFAULT ('') FOR [wij__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__etiket_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__etiket_b]  DEFAULT ((0)) FOR [etiket_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__m2__1000]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__m2__1000]  DEFAULT ((0)) FOR [m2__1000]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__eti_vorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__eti_vorm]  DEFAULT ('') FOR [eti_vorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__code__kl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__code__kl]  DEFAULT ('') FOR [code__kl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__radius__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__radius__]  DEFAULT ((0)) FOR [radius__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__rol____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__rol____b]  DEFAULT ((0)) FOR [rol____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__lay_flat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__lay_flat]  DEFAULT ((0)) FOR [lay_flat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__overlap_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__overlap_]  DEFAULT ((0)) FOR [overlap_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__face_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__face_h]  DEFAULT ((0)) FOR [face_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__face_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__face_b]  DEFAULT ((0)) FOR [face_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__backoffset_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__backoffset_b]  DEFAULT ((0)) FOR [backoffset_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__sealtype_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__sealtype_b]  DEFAULT ('') FOR [sealtype_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__seal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__seal_b]  DEFAULT ((0)) FOR [seal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__sealtype_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__sealtype_onder]  DEFAULT ('') FOR [sealtype_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__seal_h_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__seal_h_onder]  DEFAULT ((0)) FOR [seal_h_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__gussettype_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__gussettype_b]  DEFAULT ('') FOR [gussettype_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__gusset_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__gusset_b]  DEFAULT ((0)) FOR [gusset_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__lblgp___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__lblgp___]  DEFAULT ((0)) FOR [lblgp___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__lblgp_mn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__lblgp_mn]  DEFAULT ((0)) FOR [lblgp_mn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__lblgp_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__lblgp_mx]  DEFAULT ((0)) FOR [lblgp_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aant_hgt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aant_hgt]  DEFAULT ((0)) FOR [aant_hgt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aant_brd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aant_brd]  DEFAULT ((0)) FOR [aant_brd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__aantlbrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__aantlbrd]  DEFAULT ((0)) FOR [aantlbrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kopwit__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kopwit__]  DEFAULT ((0)) FOR [kopwit__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__voetwit_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__voetwit_]  DEFAULT ((0)) FOR [voetwit_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__wikk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__wikk____]  DEFAULT ('') FOR [wikk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrm2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrm2_ref]  DEFAULT ('') FOR [vrm2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrm3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrm3_ref]  DEFAULT ('') FOR [vrm3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrm4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrm4_ref]  DEFAULT ('') FOR [vrm4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrm5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrm5_ref]  DEFAULT ('') FOR [vrm5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrm6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrm6_ref]  DEFAULT ('') FOR [vrm6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__klcod_fr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__klcod_fr]  DEFAULT ('') FOR [klcod_fr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__klcod_lm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__klcod_lm]  DEFAULT ('') FOR [klcod_lm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__klcod_rg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__klcod_rg]  DEFAULT ('') FOR [klcod_rg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__drg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__drg2_ref]  DEFAULT ('') FOR [drg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_1]  DEFAULT ('N') FOR [kpnafw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_2]  DEFAULT ('N') FOR [kpnafw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_3]  DEFAULT ('N') FOR [kpnafw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_4]  DEFAULT ('N') FOR [kpnafw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_6]  DEFAULT ('N') FOR [kpnafw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_7]  DEFAULT ('N') FOR [kpnafw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_8]  DEFAULT ('N') FOR [kpnafw_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kpnafw_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kpnafw_9]  DEFAULT ('N') FOR [kpnafw_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__looprich]  DEFAULT ('') FOR [looprich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__stcntref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__stcntref]  DEFAULT ('') FOR [stcntref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__blwkopnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__blwkopnr]  DEFAULT ('') FOR [blwkopnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__stap_bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__stap_bre]  DEFAULT ((0)) FOR [stap_bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__stap_len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__stap_len]  DEFAULT ((0)) FOR [stap_len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__sny__bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__sny__bre]  DEFAULT ((0)) FOR [sny__bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__sny__len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__sny__len]  DEFAULT ((0)) FOR [sny__len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrzflm_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrzflm_a]  DEFAULT ((0)) FOR [vrzflm_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__vrzflm_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__vrzflm_b]  DEFAULT ((0)) FOR [vrzflm_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__inw__mta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__inw__mta]  DEFAULT ((0)) FOR [inw__mta]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__inw__mtb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__inw__mtb]  DEFAULT ((0)) FOR [inw__mtb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__inw__mtc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__inw__mtc]  DEFAULT ((0)) FOR [inw__mtc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__inktzyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__inktzyde]  DEFAULT ('0') FOR [inktzyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__kern_mat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__kern_mat]  DEFAULT ('0') FOR [kern_mat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afw_lint]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afw_lint]  DEFAULT ('') FOR [afw_lint]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__grammage]  DEFAULT ((0)) FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__stgy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__stgy_ref]  DEFAULT ('') FOR [stgy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__eti__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__eti__ref]  DEFAULT ('') FOR [eti__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__crea_ori]  DEFAULT ('0') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__diamtmax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__diamtmax]  DEFAULT ((0.0)) FOR [diamtmax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__diamtmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__diamtmin]  DEFAULT ((0.0)) FOR [diamtmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__editordo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__editordo]  DEFAULT ('') FOR [editordo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__artwork_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__artwork_]  DEFAULT ('1') FOR [artwork_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__var_data]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__var_data]  DEFAULT ('0') FOR [var_data]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__src_file]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__src_file]  DEFAULT ('') FOR [src_file]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__afgmdlrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__afgmdlrf]  DEFAULT ('') FOR [afgmdlrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tmpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tmpl_ref]  DEFAULT ('') FOR [tmpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dat__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dat__vkp]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__dat_stck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__dat_stck]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_stck]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__seal_zijkant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__seal_zijkant]  DEFAULT ((0)) FOR [seal_zijkant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__gusset_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__gusset_onder]  DEFAULT ((0)) FOR [gusset_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__edge_trim]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__edge_trim]  DEFAULT ((0)) FOR [edge_trim]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__gap]  DEFAULT ((0)) FOR [gap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__land_productie]  DEFAULT ('') FOR [land_productie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__gtin14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__gtin14]  DEFAULT ('') FOR [gtin14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval11]  DEFAULT ('') FOR [tstval11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval12]  DEFAULT ('') FOR [tstval12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval13]  DEFAULT ('') FOR [tstval13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval14]  DEFAULT ('') FOR [tstval14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval15]  DEFAULT ('') FOR [tstval15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval16]  DEFAULT ('') FOR [tstval16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval17]  DEFAULT ('') FOR [tstval17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval18]  DEFAULT ('') FOR [tstval18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval19]  DEFAULT ('') FOR [tstval19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__tstval20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__tstval20]  DEFAULT ('') FOR [tstval20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__uuid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__uuid]  DEFAULT (newid()) FOR [uuid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__advanced_approval_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__advanced_approval_code]  DEFAULT ('') FOR [advanced_approval_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgart__mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgart__] ADD  CONSTRAINT [DF_afgart__mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

