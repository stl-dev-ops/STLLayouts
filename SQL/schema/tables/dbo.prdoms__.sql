SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prdoms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prdoms__](
	[ord_begl] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[overpaut] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kalkulat] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[overpprc] [float] NOT NULL,
	[ordbg_dg] [int] NOT NULL,
	[lev__trm] [int] NOT NULL,
	[cpylvtrm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plts_kod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exinfpln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oph__pln] [int] NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtxt] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx6] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx7] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx8] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtx9] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratxt] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx6] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx7] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx8] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratx9] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fakmak__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordafs__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_gesl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[printrol] [int] NOT NULL,
	[printbox] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgaant_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn___ex] [int] NOT NULL,
	[trnbn_ex] [int] NOT NULL,
	[auttrglb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__vol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__num] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrsafpct] [int] NOT NULL,
	[prdbn_ex] [int] NOT NULL,
	[ordafsfk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[resbn_ex] [int] NOT NULL,
	[afd0_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd1_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd2_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd3_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd4_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd5_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd6_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd7_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd8_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd9_oml] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak_rgl2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv01] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv13] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv21] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv22] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv31] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv32] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv33] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv34] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv35] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv36] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv61] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dv62] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r01] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r11] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r12] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r13] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r21] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r22] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r31] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r32] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r33] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r34] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r35] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r36] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_r61] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms01] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms02] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms11] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms12] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms13] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms21] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms31] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms32] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms33] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms34] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms35] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms36] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms61] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttoms62] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb01] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb02] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb11] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb12] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb13] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb21] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb31] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb32] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb33] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb34] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb35] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb36] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb61] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sttomb62] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[peil___1] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[peil___2] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[peil___3] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[peil___4] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[peil___5] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[peil___6] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[plwy_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[werk_dag] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plannen_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jaar_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[plwe_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan__iu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cat__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_stl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_pp_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_afw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_grd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_art] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plncumpp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plncumdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst2_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst3_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst4_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst5_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst6_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst7_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst8_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst9_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpan_pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_prys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_supp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_oplv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[offbr_pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plts__pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltsbedr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toonwyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[adaggeld] [int] NOT NULL,
	[oms__pap] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[adagopva] [int] NOT NULL,
	[eqmnt___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_vpak] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[labelbrf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_brf] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omd_vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd1vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd2vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp__rek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kaskredt] [float] NOT NULL,
	[regwyz__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplwypln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplwyres] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[k_levdat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_kr1_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_kr2_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n1__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_klas] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n2__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n3__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n4__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n5__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n6__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n7__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n8__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n9__] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n10_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n11_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n12_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n13_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n14_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n15_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_n16_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsdat01] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsdat02] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsdat03] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsdat04] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsdat05] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkbrf__1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkbrf__2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkbrf__3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkbrf__4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkbrf__5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[levcod_1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[levcod_2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[levcod_3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[levcod_4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__uur] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[levkzuur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtinkt8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bglinkt8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkexdir] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[cpybrief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkv_var] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opt_voka] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opt_orka] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[offbr_ex] [int] NOT NULL,
	[ord___ex] [int] NOT NULL,
	[aant_eti] [int] NOT NULL,
	[levnaklr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgbddir] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgsubd1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgsubd2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgsubd3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgsubd4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgsubd5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgbdtyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgbdloc] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgbdins] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgbdprf] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_html] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgohtml] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmbkrom1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmbkrom2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmbkrom3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[qc_oms_1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[qc_oms_2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[qc_oms_3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[qc_oms_4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[opodgref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stnbddir] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[stnbdtyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mrgstprs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordidafg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdrefpp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[send__pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref_cad] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[send_cad] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordiedir] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[oabon_ex] [int] NOT NULL,
	[vkpob_pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordbv_pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltsobpp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltsb_ob] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toonw_ob] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omspa_ob] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlccvrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlccant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlc2vrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[emofsnel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[krediet_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_vpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkbrfopl] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstovzvc] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstovznc] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdbn5_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdbnhis] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdbnvrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[chck_res] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[chck_pln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[chck_rwg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kp_of_of] [int] NOT NULL,
	[kp_of_ar] [int] NOT NULL,
	[kp_of_or] [int] NOT NULL,
	[kp_ar_of] [int] NOT NULL,
	[kp_ar_ar] [int] NOT NULL,
	[kp_ar_or] [int] NOT NULL,
	[kp_or_of] [int] NOT NULL,
	[kp_or_ar] [int] NOT NULL,
	[kp_or_or] [int] NOT NULL,
	[op_of_of] [int] NOT NULL,
	[op_of_ar] [int] NOT NULL,
	[op_of_or] [int] NOT NULL,
	[op_ar_of] [int] NOT NULL,
	[op_ar_ar] [int] NOT NULL,
	[op_ar_or] [int] NOT NULL,
	[op_or_of] [int] NOT NULL,
	[op_or_ar] [int] NOT NULL,
	[op_or_or] [int] NOT NULL,
	[kovz__p1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kovz__p2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kovz__p3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kovz__p4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kovz__p5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kovdtlp3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kovzmarg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kovz_exe] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[goedkafg] [int] NOT NULL,
	[goedkbst] [int] NOT NULL,
	[goedkord] [int] NOT NULL,
	[vw56_glv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwglvonm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vw56_vrb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwvrbonm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vw56_vr2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwvr2onm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vw56_cgr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwrolonm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vw56_awz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vw56_rty] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwrtyonm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrsklord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kal1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kal2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_pln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_def] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_bon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdbnafg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdb_mak] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdb_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_jdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_rol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_ink] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_cmb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plac_u_d] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plac_dat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plac_und] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plac_grd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plac_cil] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plac_ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plac_com] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn_volg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dvafprio] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[caltoafg] [int] NOT NULL,
	[afgtoafg] [int] NOT NULL,
	[internet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klarefgn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klavstgn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdrefgn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdrefg2] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[gn_exdir] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[gnafgdir] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[gnpptool] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gnjobafw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[phoenix_exports] [int] NOT NULL,
	[afgbdext] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[apv__src] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[apvvwoff] [int] NOT NULL,
	[apvvword] [int] NOT NULL,
	[apvvwafg] [int] NOT NULL,
	[apvwykla] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkinh_01] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkinh_02] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkinh_03] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lkinh_04] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[levv_her] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfltool] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[job_changed_bus] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[milestones_vw_ord] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prdomsi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ord_begl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ord_begl]  DEFAULT ('') FOR [ord_begl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__overpaut]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__overpaut]  DEFAULT ('') FOR [overpaut]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kalkulat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kalkulat]  DEFAULT ('') FOR [kalkulat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__overpprc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__overpprc]  DEFAULT ((0)) FOR [overpprc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ordbg_dg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ordbg_dg]  DEFAULT ((0)) FOR [ordbg_dg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lev__trm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lev__trm]  DEFAULT ((0)) FOR [lev__trm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__cpylvtrm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__cpylvtrm]  DEFAULT ('') FOR [cpylvtrm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plts_kod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plts_kod]  DEFAULT ('') FOR [plts_kod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lok__srt]  DEFAULT ('') FOR [lok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__trn__ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__trn__ant]  DEFAULT ('') FOR [trn__ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__exinfpln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__exinfpln]  DEFAULT ('') FOR [exinfpln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oph__pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oph__pln]  DEFAULT ((0)) FOR [oph__pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant_]  DEFAULT ('') FOR [omsaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant2]  DEFAULT ('') FOR [omsaant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant3]  DEFAULT ('') FOR [omsaant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant4]  DEFAULT ('') FOR [omsaant4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant5]  DEFAULT ('') FOR [omsaant5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant6]  DEFAULT ('') FOR [omsaant6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant7]  DEFAULT ('') FOR [omsaant7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant8]  DEFAULT ('') FOR [omsaant8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsaant9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsaant9]  DEFAULT ('') FOR [omsaant9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtxt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtxt]  DEFAULT ('') FOR [oplagtxt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx2]  DEFAULT ('') FOR [oplagtx2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx3]  DEFAULT ('') FOR [oplagtx3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx4]  DEFAULT ('') FOR [oplagtx4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx5]  DEFAULT ('') FOR [oplagtx5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx6]  DEFAULT ('') FOR [oplagtx6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx7]  DEFAULT ('') FOR [oplagtx7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx8]  DEFAULT ('') FOR [oplagtx8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplagtx9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplagtx9]  DEFAULT ('') FOR [oplagtx9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratxt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratxt]  DEFAULT ('') FOR [extratxt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx2]  DEFAULT ('') FOR [extratx2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx3]  DEFAULT ('') FOR [extratx3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx4]  DEFAULT ('') FOR [extratx4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx5]  DEFAULT ('') FOR [extratx5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx6]  DEFAULT ('') FOR [extratx6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx7]  DEFAULT ('') FOR [extratx7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx8]  DEFAULT ('') FOR [extratx8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__extratx9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__extratx9]  DEFAULT ('') FOR [extratx9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__fakmak__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__fakmak__]  DEFAULT ('') FOR [fakmak__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ordafs__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ordafs__]  DEFAULT ('') FOR [ordafs__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__fac_gesl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__fac_gesl]  DEFAULT ('') FOR [fac_gesl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__printrol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__printrol]  DEFAULT ((0)) FOR [printrol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__printbox]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__printbox]  DEFAULT ('') FOR [printbox]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgaant_]  DEFAULT ('') FOR [afgaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lbn___ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lbn___ex]  DEFAULT ((0)) FOR [lbn___ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__trnbn_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__trnbn_ex]  DEFAULT ((0)) FOR [trnbn_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__auttrglb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__auttrglb]  DEFAULT ('') FOR [auttrglb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lev__vol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lev__vol]  DEFAULT ('') FOR [lev__vol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vrs__num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vrs__num]  DEFAULT ('') FOR [vrs__num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vrsafpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vrsafpct]  DEFAULT ((0)) FOR [vrsafpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdbn_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdbn_ex]  DEFAULT ((0)) FOR [prdbn_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ordafsfk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ordafsfk]  DEFAULT ('') FOR [ordafsfk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__resbn_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__resbn_ex]  DEFAULT ((0)) FOR [resbn_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd0_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd0_oml]  DEFAULT ('') FOR [afd0_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd1_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd1_oml]  DEFAULT ('') FOR [afd1_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd2_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd2_oml]  DEFAULT ('') FOR [afd2_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd3_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd3_oml]  DEFAULT ('') FOR [afd3_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd4_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd4_oml]  DEFAULT ('') FOR [afd4_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd5_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd5_oml]  DEFAULT ('') FOR [afd5_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd6_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd6_oml]  DEFAULT ('') FOR [afd6_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd7_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd7_oml]  DEFAULT ('') FOR [afd7_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd8_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd8_oml]  DEFAULT ('') FOR [afd8_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afd9_oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afd9_oml]  DEFAULT ('') FOR [afd9_oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__fak_rgl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__fak_rgl2]  DEFAULT ('') FOR [fak_rgl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv01]  DEFAULT ('') FOR [pln_dv01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv11]  DEFAULT ('') FOR [pln_dv11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv12]  DEFAULT ('') FOR [pln_dv12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv13]  DEFAULT ('') FOR [pln_dv13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv21]  DEFAULT ('') FOR [pln_dv21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv22]  DEFAULT ('') FOR [pln_dv22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv31]  DEFAULT ('') FOR [pln_dv31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv32]  DEFAULT ('') FOR [pln_dv32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv33]  DEFAULT ('') FOR [pln_dv33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv34]  DEFAULT ('') FOR [pln_dv34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv35]  DEFAULT ('') FOR [pln_dv35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv36]  DEFAULT ('') FOR [pln_dv36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv61]  DEFAULT ('') FOR [pln_dv61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pln_dv62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pln_dv62]  DEFAULT ('') FOR [pln_dv62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r01]  DEFAULT ('') FOR [plpl_r01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r11]  DEFAULT ('') FOR [plpl_r11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r12]  DEFAULT ('') FOR [plpl_r12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r13]  DEFAULT ('') FOR [plpl_r13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r21]  DEFAULT ('') FOR [plpl_r21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r22]  DEFAULT ('') FOR [plpl_r22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r31]  DEFAULT ('') FOR [plpl_r31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r32]  DEFAULT ('') FOR [plpl_r32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r33]  DEFAULT ('') FOR [plpl_r33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r34]  DEFAULT ('') FOR [plpl_r34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r35]  DEFAULT ('') FOR [plpl_r35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r36]  DEFAULT ('') FOR [plpl_r36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plpl_r61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plpl_r61]  DEFAULT ('') FOR [plpl_r61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms01]  DEFAULT ('') FOR [sttoms01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms02]  DEFAULT ('') FOR [sttoms02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms11]  DEFAULT ('') FOR [sttoms11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms12]  DEFAULT ('') FOR [sttoms12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms13]  DEFAULT ('') FOR [sttoms13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms21]  DEFAULT ('') FOR [sttoms21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms31]  DEFAULT ('') FOR [sttoms31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms32]  DEFAULT ('') FOR [sttoms32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms33]  DEFAULT ('') FOR [sttoms33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms34]  DEFAULT ('') FOR [sttoms34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms35]  DEFAULT ('') FOR [sttoms35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms36]  DEFAULT ('') FOR [sttoms36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms61]  DEFAULT ('') FOR [sttoms61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttoms62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttoms62]  DEFAULT ('') FOR [sttoms62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb01]  DEFAULT ('') FOR [sttomb01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb02]  DEFAULT ('') FOR [sttomb02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb11]  DEFAULT ('') FOR [sttomb11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb12]  DEFAULT ('') FOR [sttomb12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb13]  DEFAULT ('') FOR [sttomb13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb21]  DEFAULT ('') FOR [sttomb21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb31]  DEFAULT ('') FOR [sttomb31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb32]  DEFAULT ('') FOR [sttomb32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb33]  DEFAULT ('') FOR [sttomb33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb34]  DEFAULT ('') FOR [sttomb34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb35]  DEFAULT ('') FOR [sttomb35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb36]  DEFAULT ('') FOR [sttomb36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb61]  DEFAULT ('') FOR [sttomb61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__sttomb62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__sttomb62]  DEFAULT ('') FOR [sttomb62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__peil___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__peil___1]  DEFAULT ('') FOR [peil___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__peil___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__peil___2]  DEFAULT ('') FOR [peil___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__peil___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__peil___3]  DEFAULT ('') FOR [peil___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__peil___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__peil___4]  DEFAULT ('') FOR [peil___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__peil___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__peil___5]  DEFAULT ('') FOR [peil___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__peil___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__peil___6]  DEFAULT ('') FOR [peil___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plwy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plwy_ref]  DEFAULT ('') FOR [plwy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pmd__ref]  DEFAULT ('') FOR [pmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__werk_dag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__werk_dag]  DEFAULT ('') FOR [werk_dag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plannen_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plannen_]  DEFAULT ('') FOR [plannen_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__jaar_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__jaar_ref]  DEFAULT ('') FOR [jaar_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plwe_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plwe_ref]  DEFAULT ('') FOR [plwe_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plan__iu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plan__iu]  DEFAULT ('') FOR [plan__iu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__cat__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__cat__ref]  DEFAULT ('') FOR [cat__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plan_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plan_typ]  DEFAULT ('') FOR [plan_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plan_stl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plan_stl]  DEFAULT ('') FOR [plan_stl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plan_pp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plan_pp_]  DEFAULT ('') FOR [plan_pp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plan_afw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plan_afw]  DEFAULT ('') FOR [plan_afw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plan_grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plan_grd]  DEFAULT ('') FOR [plan_grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plan_art]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plan_art]  DEFAULT ('') FOR [plan_art]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plncumpp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plncumpp]  DEFAULT ('') FOR [plncumpp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plncumdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plncumdr]  DEFAULT ('') FOR [plncumdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst__ref]  DEFAULT ('') FOR [tst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst2_ref]  DEFAULT ('') FOR [tst2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst3_ref]  DEFAULT ('') FOR [tst3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst4_ref]  DEFAULT ('') FOR [tst4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst5_ref]  DEFAULT ('') FOR [tst5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst6_ref]  DEFAULT ('') FOR [tst6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst7_ref]  DEFAULT ('') FOR [tst7_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst8_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst8_ref]  DEFAULT ('') FOR [tst8_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tst9_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tst9_ref]  DEFAULT ('') FOR [tst9_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vkpan_pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vkpan_pp]  DEFAULT ('') FOR [vkpan_pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__brf_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__brf_prys]  DEFAULT ('') FOR [brf_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__brf_supp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__brf_supp]  DEFAULT ('') FOR [brf_supp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__brf_oplv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__brf_oplv]  DEFAULT ('') FOR [brf_oplv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__offbr_pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__offbr_pp]  DEFAULT ('') FOR [offbr_pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plts__pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plts__pp]  DEFAULT ('') FOR [plts__pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pltsbedr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pltsbedr]  DEFAULT ('') FOR [pltsbedr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__toonwyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__toonwyze]  DEFAULT ('') FOR [toonwyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__adaggeld]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__adaggeld]  DEFAULT ((0)) FOR [adaggeld]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms__pap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms__pap]  DEFAULT ('') FOR [oms__pap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__adagopva]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__adagopva]  DEFAULT ((0)) FOR [adagopva]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__eqmnt___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__eqmnt___]  DEFAULT ('') FOR [eqmnt___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_vpak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_vpak]  DEFAULT ('') FOR [oms_vpak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__labelbrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__labelbrf]  DEFAULT ('') FOR [labelbrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__fiat_brf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__fiat_brf]  DEFAULT ('') FOR [fiat_brf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prd__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prd__vrs]  DEFAULT ('') FOR [prd__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omd__ref]  DEFAULT ('') FOR [omd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pmd1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pmd1_ref]  DEFAULT ('') FOR [pmd1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pmd2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pmd2_ref]  DEFAULT ('') FOR [pmd2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__tmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__tmd__ref]  DEFAULT ('') FOR [tmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lmd__ref]  DEFAULT ('') FOR [lmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omd_vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omd_vref]  DEFAULT ('') FOR [omd_vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pmd1vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pmd1vref]  DEFAULT ('') FOR [pmd1vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pmd2vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pmd2vref]  DEFAULT ('') FOR [pmd2vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vkp__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vkp__rek]  DEFAULT ('') FOR [vkp__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kaskredt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kaskredt]  DEFAULT ((0)) FOR [kaskredt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__regwyz__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__regwyz__]  DEFAULT ('') FOR [regwyz__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplwypln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplwypln]  DEFAULT ('') FOR [oplwypln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oplwyres]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oplwyres]  DEFAULT ('') FOR [oplwyres]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__k_levdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__k_levdat]  DEFAULT ('') FOR [k_levdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_kr1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_kr1_]  DEFAULT ('') FOR [oms_kr1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_kr2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_kr2_]  DEFAULT ('') FOR [oms_kr2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n1__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n1__]  DEFAULT ('') FOR [oms_n1__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_klas]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_klas]  DEFAULT ('') FOR [oms_klas]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n2__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n2__]  DEFAULT ('') FOR [oms_n2__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n3__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n3__]  DEFAULT ('') FOR [oms_n3__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n4__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n4__]  DEFAULT ('') FOR [oms_n4__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n5__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n5__]  DEFAULT ('') FOR [oms_n5__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n6__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n6__]  DEFAULT ('') FOR [oms_n6__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n7__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n7__]  DEFAULT ('') FOR [oms_n7__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n8__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n8__]  DEFAULT ('') FOR [oms_n8__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n9__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n9__]  DEFAULT ('') FOR [oms_n9__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n10_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n10_]  DEFAULT ('') FOR [oms_n10_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n11_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n11_]  DEFAULT ('') FOR [oms_n11_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n12_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n12_]  DEFAULT ('') FOR [oms_n12_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n13_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n13_]  DEFAULT ('') FOR [oms_n13_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n14_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n14_]  DEFAULT ('') FOR [oms_n14_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n15_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n15_]  DEFAULT ('') FOR [oms_n15_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oms_n16_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oms_n16_]  DEFAULT ('') FOR [oms_n16_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsdat01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsdat01]  DEFAULT ('') FOR [omsdat01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsdat02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsdat02]  DEFAULT ('') FOR [omsdat02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsdat03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsdat03]  DEFAULT ('') FOR [omsdat03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsdat04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsdat04]  DEFAULT ('') FOR [omsdat04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omsdat05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omsdat05]  DEFAULT ('') FOR [omsdat05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkbrf__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkbrf__1]  DEFAULT ('') FOR [lkbrf__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkbrf__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkbrf__2]  DEFAULT ('') FOR [lkbrf__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkbrf__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkbrf__3]  DEFAULT ('') FOR [lkbrf__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkbrf__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkbrf__4]  DEFAULT ('') FOR [lkbrf__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkbrf__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkbrf__5]  DEFAULT ('') FOR [lkbrf__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__levcod_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__levcod_1]  DEFAULT ('') FOR [levcod_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__levcod_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__levcod_2]  DEFAULT ('') FOR [levcod_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__levcod_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__levcod_3]  DEFAULT ('') FOR [levcod_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__levcod_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__levcod_4]  DEFAULT ('') FOR [levcod_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lev__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lev__uur]  DEFAULT ('') FOR [lev__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__levkzuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__levkzuur]  DEFAULT ('') FOR [levkzuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt1]  DEFAULT ('') FOR [srtinkt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt2]  DEFAULT ('') FOR [srtinkt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt3]  DEFAULT ('') FOR [srtinkt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt4]  DEFAULT ('') FOR [srtinkt4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt5]  DEFAULT ('') FOR [srtinkt5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt6]  DEFAULT ('') FOR [srtinkt6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt7]  DEFAULT ('') FOR [srtinkt7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__srtinkt8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__srtinkt8]  DEFAULT ('') FOR [srtinkt8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt1]  DEFAULT ('') FOR [bglinkt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt2]  DEFAULT ('') FOR [bglinkt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt3]  DEFAULT ('') FOR [bglinkt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt4]  DEFAULT ('') FOR [bglinkt4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt5]  DEFAULT ('') FOR [bglinkt5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt6]  DEFAULT ('') FOR [bglinkt6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt7]  DEFAULT ('') FOR [bglinkt7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__bglinkt8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__bglinkt8]  DEFAULT ('') FOR [bglinkt8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__inkexdir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__inkexdir]  DEFAULT ('') FOR [inkexdir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__cpybrief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__cpybrief]  DEFAULT ('') FOR [cpybrief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__drkv_var]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__drkv_var]  DEFAULT ('') FOR [drkv_var]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__opt_voka]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__opt_voka]  DEFAULT ('') FOR [opt_voka]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__opt_orka]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__opt_orka]  DEFAULT ('') FOR [opt_orka]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__offbr_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__offbr_ex]  DEFAULT ((0)) FOR [offbr_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ord___ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ord___ex]  DEFAULT ((0)) FOR [ord___ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__aant_eti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__aant_eti]  DEFAULT ((0)) FOR [aant_eti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__levnaklr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__levnaklr]  DEFAULT ('') FOR [levnaklr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgbddir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgbddir]  DEFAULT ('') FOR [afgbddir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgsubd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgsubd1]  DEFAULT ('') FOR [afgsubd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgsubd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgsubd2]  DEFAULT ('') FOR [afgsubd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgsubd3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgsubd3]  DEFAULT ('') FOR [afgsubd3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgsubd4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgsubd4]  DEFAULT ('') FOR [afgsubd4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgsubd5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgsubd5]  DEFAULT ('') FOR [afgsubd5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgbdtyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgbdtyp]  DEFAULT ('') FOR [afgbdtyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgbdloc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgbdloc]  DEFAULT ('') FOR [afgbdloc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgbdins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgbdins]  DEFAULT ('') FOR [afgbdins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgbdprf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgbdprf]  DEFAULT ('') FOR [afgbdprf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afg_html]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afg_html]  DEFAULT ('') FOR [afg_html]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgohtml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgohtml]  DEFAULT ('') FOR [afgohtml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__cmbkrom1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__cmbkrom1]  DEFAULT ('') FOR [cmbkrom1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__cmbkrom2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__cmbkrom2]  DEFAULT ('') FOR [cmbkrom2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__cmbkrom3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__cmbkrom3]  DEFAULT ('') FOR [cmbkrom3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__qc_oms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__qc_oms_1]  DEFAULT ('') FOR [qc_oms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__qc_oms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__qc_oms_2]  DEFAULT ('') FOR [qc_oms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__qc_oms_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__qc_oms_3]  DEFAULT ('') FOR [qc_oms_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__qc_oms_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__qc_oms_4]  DEFAULT ('') FOR [qc_oms_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__opodgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__opodgref]  DEFAULT ('') FOR [opodgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__stnbddir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__stnbddir]  DEFAULT ('') FOR [stnbddir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__stnbdtyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__stnbdtyp]  DEFAULT ('') FOR [stnbdtyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__mrgstprs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__mrgstprs]  DEFAULT ('') FOR [mrgstprs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ordidafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ordidafg]  DEFAULT ('') FOR [ordidafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdrefpp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdrefpp]  DEFAULT ('') FOR [prdrefpp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__send__pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__send__pp]  DEFAULT ('') FOR [send__pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prd__ref_cad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prd__ref_cad]  DEFAULT ('') FOR [prd__ref_cad]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__send_cad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__send_cad]  DEFAULT ('') FOR [send_cad]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ordiedir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ordiedir]  DEFAULT ('') FOR [ordiedir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__oabon_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__oabon_ex]  DEFAULT ((0)) FOR [oabon_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vkpob_pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vkpob_pp]  DEFAULT ('') FOR [vkpob_pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ordbv_pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ordbv_pp]  DEFAULT ('') FOR [ordbv_pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pltsobpp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pltsobpp]  DEFAULT ('') FOR [pltsobpp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__pltsb_ob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__pltsb_ob]  DEFAULT ('') FOR [pltsb_ob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__toonw_ob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__toonw_ob]  DEFAULT ('') FOR [toonw_ob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__omspa_ob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__omspa_ob]  DEFAULT ('') FOR [omspa_ob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__emlccvrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__emlccvrt]  DEFAULT ('') FOR [emlccvrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__emlccant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__emlccant]  DEFAULT ('') FOR [emlccant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__emlc2vrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__emlc2vrt]  DEFAULT ('') FOR [emlc2vrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__emofsnel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__emofsnel]  DEFAULT ('') FOR [emofsnel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__krediet_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__krediet_]  DEFAULT ('') FOR [krediet_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ktrk_vpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ktrk_vpl]  DEFAULT ('') FOR [ktrk_vpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkbrfopl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkbrfopl]  DEFAULT ('') FOR [lkbrfopl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kstovzvc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kstovzvc]  DEFAULT ('') FOR [kstovzvc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kstovznc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kstovznc]  DEFAULT ('') FOR [kstovznc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdbn5_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdbn5_6]  DEFAULT ('') FOR [prdbn5_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdbnhis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdbnhis]  DEFAULT ('') FOR [prdbnhis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdbnvrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdbnvrs]  DEFAULT ('') FOR [prdbnvrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__chck_res]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__chck_res]  DEFAULT ('') FOR [chck_res]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__chck_pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__chck_pln]  DEFAULT ('') FOR [chck_pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__chck_rwg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__chck_rwg]  DEFAULT ('') FOR [chck_rwg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_of_of]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_of_of]  DEFAULT ((0)) FOR [kp_of_of]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_of_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_of_ar]  DEFAULT ((0)) FOR [kp_of_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_of_or]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_of_or]  DEFAULT ((0)) FOR [kp_of_or]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_ar_of]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_ar_of]  DEFAULT ((0)) FOR [kp_ar_of]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_ar_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_ar_ar]  DEFAULT ((0)) FOR [kp_ar_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_ar_or]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_ar_or]  DEFAULT ((0)) FOR [kp_ar_or]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_or_of]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_or_of]  DEFAULT ((0)) FOR [kp_or_of]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_or_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_or_ar]  DEFAULT ((0)) FOR [kp_or_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kp_or_or]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kp_or_or]  DEFAULT ((0)) FOR [kp_or_or]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_of_of]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_of_of]  DEFAULT ((0)) FOR [op_of_of]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_of_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_of_ar]  DEFAULT ((0)) FOR [op_of_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_of_or]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_of_or]  DEFAULT ((0)) FOR [op_of_or]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_ar_of]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_ar_of]  DEFAULT ((0)) FOR [op_ar_of]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_ar_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_ar_ar]  DEFAULT ((0)) FOR [op_ar_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_ar_or]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_ar_or]  DEFAULT ((0)) FOR [op_ar_or]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_or_of]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_or_of]  DEFAULT ((0)) FOR [op_or_of]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_or_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_or_ar]  DEFAULT ((0)) FOR [op_or_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__op_or_or]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__op_or_or]  DEFAULT ((0)) FOR [op_or_or]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovz__p1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovz__p1]  DEFAULT ('') FOR [kovz__p1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovz__p2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovz__p2]  DEFAULT ('') FOR [kovz__p2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovz__p3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovz__p3]  DEFAULT ('') FOR [kovz__p3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovz__p4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovz__p4]  DEFAULT ('') FOR [kovz__p4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovz__p5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovz__p5]  DEFAULT ('') FOR [kovz__p5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovdtlp3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovdtlp3]  DEFAULT ('') FOR [kovdtlp3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovzmarg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovzmarg]  DEFAULT ('') FOR [kovzmarg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kovz_exe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kovz_exe]  DEFAULT ('') FOR [kovz_exe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__goedkafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__goedkafg]  DEFAULT ((0)) FOR [goedkafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__goedkbst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__goedkbst]  DEFAULT ((0)) FOR [goedkbst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__goedkord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__goedkord]  DEFAULT ((0)) FOR [goedkord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vw56_glv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vw56_glv]  DEFAULT ('') FOR [vw56_glv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vwglvonm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vwglvonm]  DEFAULT ('') FOR [vwglvonm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vw56_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vw56_vrb]  DEFAULT ('') FOR [vw56_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vwvrbonm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vwvrbonm]  DEFAULT ('') FOR [vwvrbonm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vw56_vr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vw56_vr2]  DEFAULT ('') FOR [vw56_vr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vwvr2onm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vwvr2onm]  DEFAULT ('') FOR [vwvr2onm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vw56_cgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vw56_cgr]  DEFAULT ('') FOR [vw56_cgr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vwrolonm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vwrolonm]  DEFAULT ('') FOR [vwrolonm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vw56_awz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vw56_awz]  DEFAULT ('') FOR [vw56_awz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vw56_rty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vw56_rty]  DEFAULT ('') FOR [vw56_rty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vwrtyonm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vwrtyonm]  DEFAULT ('') FOR [vwrtyonm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__ord__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__ord__vrs]  DEFAULT ('') FOR [ord__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__vrsklord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__vrsklord]  DEFAULT ('') FOR [vrsklord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kal1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kal1_ref]  DEFAULT ('') FOR [kal1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kal2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kal2_ref]  DEFAULT ('') FOR [kal2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prod_pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prod_pln]  DEFAULT ('') FOR [prod_pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prod_def]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prod_def]  DEFAULT ('') FOR [prod_def]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prod_bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prod_bon]  DEFAULT ('') FOR [prod_bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdbnafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdbnafg]  DEFAULT ('') FOR [prdbnafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdb_mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdb_mak]  DEFAULT ('') FOR [prdb_mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdb_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdb_typ]  DEFAULT ('') FOR [prdb_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prod_jdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prod_jdf]  DEFAULT ('') FOR [prod_jdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prod_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prod_rol]  DEFAULT ('') FOR [prod_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prod_ink]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prod_ink]  DEFAULT ('') FOR [prod_ink]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prod_cmb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prod_cmb]  DEFAULT ('') FOR [prod_cmb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plac_u_d]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plac_u_d]  DEFAULT ('') FOR [plac_u_d]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plac_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plac_dat]  DEFAULT ('') FOR [plac_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plac_und]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plac_und]  DEFAULT ('') FOR [plac_und]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plac_grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plac_grd]  DEFAULT ('') FOR [plac_grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plac_cil]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plac_cil]  DEFAULT ('') FOR [plac_cil]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plac_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plac_ord]  DEFAULT ('') FOR [plac_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__plac_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__plac_com]  DEFAULT ('') FOR [plac_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__kpn_volg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__kpn_volg]  DEFAULT ('') FOR [kpn_volg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__dvafprio]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__dvafprio]  DEFAULT ('') FOR [dvafprio]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__caltoafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__caltoafg]  DEFAULT ((0)) FOR [caltoafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgtoafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgtoafg]  DEFAULT ((0)) FOR [afgtoafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__internet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__internet]  DEFAULT ('') FOR [internet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__klarefgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__klarefgn]  DEFAULT ('') FOR [klarefgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__klavstgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__klavstgn]  DEFAULT ('') FOR [klavstgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdrefgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdrefgn]  DEFAULT ('') FOR [prdrefgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prdrefg2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prdrefg2]  DEFAULT ('') FOR [prdrefg2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__gn_exdir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__gn_exdir]  DEFAULT ('') FOR [gn_exdir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__gnafgdir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__gnafgdir]  DEFAULT ('') FOR [gnafgdir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__gnpptool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__gnpptool]  DEFAULT ('') FOR [gnpptool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__gnjobafw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__gnjobafw]  DEFAULT ('') FOR [gnjobafw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__phoenix_exports]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__phoenix_exports]  DEFAULT ((0)) FOR [phoenix_exports]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__afgbdext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__afgbdext]  DEFAULT ('') FOR [afgbdext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__apv__src]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__apv__src]  DEFAULT ('') FOR [apv__src]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__apvvwoff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__apvvwoff]  DEFAULT ((0)) FOR [apvvwoff]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__apvvword]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__apvvword]  DEFAULT ((0)) FOR [apvvword]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__apvvwafg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__apvvwafg]  DEFAULT ((0)) FOR [apvvwafg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__apvwykla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__apvwykla]  DEFAULT ('') FOR [apvwykla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkinh_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkinh_01]  DEFAULT ('') FOR [lkinh_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkinh_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkinh_02]  DEFAULT ('') FOR [lkinh_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkinh_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkinh_03]  DEFAULT ('') FOR [lkinh_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__lkinh_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__lkinh_04]  DEFAULT ('') FOR [lkinh_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__levv_her]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__levv_her]  DEFAULT ('') FOR [levv_her]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__prfltool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__prfltool]  DEFAULT ('') FOR [prfltool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__job_changed_bus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__job_changed_bus]  DEFAULT ('') FOR [job_changed_bus]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdoms__milestones_vw_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdoms__] ADD  CONSTRAINT [DF_prdoms__milestones_vw_ord]  DEFAULT ((0)) FOR [milestones_vw_ord]
END

