SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgprd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgprd__](
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_krea] [date] NOT NULL,
	[dat_afsl] [date] NOT NULL,
	[uur_afsl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wie_afsl] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_afsl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__dvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mgr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbl__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[magr_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[overlap_] [float] NOT NULL,
	[sealtype_b] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[seal_b] [float] NOT NULL,
	[sealtype_onder] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[seal_h_onder] [float] NOT NULL,
	[gussettype_b] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rev_prnt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[opl__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opl__oms] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal6] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal7] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal8] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opltaal9] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[supp_ant] [int] NOT NULL,
	[ktr__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[refbykla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[specif__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plano_br] [float] NOT NULL,
	[plano_ln] [float] NOT NULL,
	[afgew_b1] [float] NOT NULL,
	[afgew_ln] [float] NOT NULL,
	[afgew_b2] [float] NOT NULL,
	[vouw___2] [float] NOT NULL,
	[rug_____] [float] NOT NULL,
	[multidrk] [int] NOT NULL,
	[fiat_prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_ant] [int] NOT NULL,
	[fiat____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakspec] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vls__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bom___ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_eref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_wy] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak___wy] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dvl__gui] [int] NOT NULL,
	[omsaant_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[intr_ref] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fplm_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpll_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plwy_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[plwy1ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[plwy2ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmdohref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmdghref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmdporef] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsch_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsch_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsch_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsch_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsch_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordsch_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrskpsub] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omd_vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd1vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd2vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybonnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon_zelf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybe1nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon_ext1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybe2nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon_ext2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laypbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layrbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laylbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij_drvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybijnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__and] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvb1nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij_vrs1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvb2nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij_vrs2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvppnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvprnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpenr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vr2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvppn2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvprn2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpen2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vr3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvppn3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvprn3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpen3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vr4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laygroep] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bijgroep] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb4] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb5] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb6] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb7] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb8] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6vo1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6vo1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6vo2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6vo2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6vo3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6vo3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6bpr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6b_e] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6b2e] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6bij] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laycheck] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[boncheck] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[w_oms_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_oms_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[a_oms_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_01] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_02] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_03] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_04] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_05] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_06] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_07] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_08] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_09] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[v_oms_16] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[papplsrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[paprosrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papplref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[paproref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[custsize] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnpag__x] [float] NOT NULL,
	[mnpag__y] [float] NOT NULL,
	[mxpag__x] [float] NOT NULL,
	[mxpag__y] [float] NOT NULL,
	[etas1ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas3ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas4ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas5ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[internet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rfqonw4l] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[min_aant] [int] NOT NULL,
	[max_aant] [int] NOT NULL,
	[cpversie] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cpautcal] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cpdirord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodcrea] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_jdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__inh] [int] NOT NULL,
	[grp__oms] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal6] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal7] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal8] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grptaal9] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlrfqfm] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlrfqkl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlrfqmt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlrfqaf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlrfqvp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[emlrfq__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrscpord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrssplit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dvl__oms] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__oms] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam__oms] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[cal__opl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[virt_vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gang_vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[seal_zijkant] [float] NOT NULL,
	[edge_trim] [float] NOT NULL,
	[gap] [float] NOT NULL,
	[fopp2vel] [float] NOT NULL,
 CONSTRAINT [prdidx_1] PRIMARY KEY CLUSTERED 
(
	[prd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgprd__]') AND name = N'prdidx_2')
CREATE NONCLUSTERED INDEX [prdidx_2] ON [dbo].[afgprd__]
(
	[refbykla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__prd__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__prd__rpn]  DEFAULT ('') FOR [prd__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__uitgeput]  DEFAULT ('') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__dat_krea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__dat_krea]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_krea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__dat_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__dat_afsl]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__uur_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__uur_afsl]  DEFAULT ('') FOR [uur_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__wie_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__wie_afsl]  DEFAULT ('') FOR [wie_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__kom_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__kom_afsl]  DEFAULT ('') FOR [kom_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__typ__dvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__typ__dvl]  DEFAULT ('') FOR [typ__dvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__mgr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__mgr__ref]  DEFAULT ('') FOR [mgr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__lbl__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__lbl__srt]  DEFAULT ('') FOR [lbl__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__magr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__magr_ref]  DEFAULT ('') FOR [magr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__overlap_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__overlap_]  DEFAULT ((0)) FOR [overlap_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__sealtype_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__sealtype_b]  DEFAULT ('') FOR [sealtype_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__seal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__seal_b]  DEFAULT ((0)) FOR [seal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__sealtype_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__sealtype_onder]  DEFAULT ('') FOR [sealtype_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__seal_h_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__seal_h_onder]  DEFAULT ((0)) FOR [seal_h_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__gussettype_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__gussettype_b]  DEFAULT ('') FOR [gussettype_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__rev_prnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__rev_prnt]  DEFAULT ('') FOR [rev_prnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opl__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opl__typ]  DEFAULT ('') FOR [opl__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opl__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opl__oms]  DEFAULT ('') FOR [opl__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal1]  DEFAULT ('') FOR [opltaal1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal2]  DEFAULT ('') FOR [opltaal2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal3]  DEFAULT ('') FOR [opltaal3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal4]  DEFAULT ('') FOR [opltaal4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal5]  DEFAULT ('') FOR [opltaal5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal6]  DEFAULT ('') FOR [opltaal6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal7]  DEFAULT ('') FOR [opltaal7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal8]  DEFAULT ('') FOR [opltaal8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__opltaal9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__opltaal9]  DEFAULT ('') FOR [opltaal9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__supp_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__supp_ant]  DEFAULT ((0)) FOR [supp_ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ktr__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ktr__vrs]  DEFAULT ('') FOR [ktr__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__refbykla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__refbykla]  DEFAULT ('') FOR [refbykla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__specif__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__specif__]  DEFAULT ('') FOR [specif__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__kpn__srt]  DEFAULT ('') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__afw__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__afw__srt]  DEFAULT ('') FOR [afw__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__plano_br]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__plano_br]  DEFAULT ((0)) FOR [plano_br]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__plano_ln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__plano_ln]  DEFAULT ((0)) FOR [plano_ln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__afgew_b1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__afgew_b1]  DEFAULT ((0)) FOR [afgew_b1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__afgew_ln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__afgew_ln]  DEFAULT ((0)) FOR [afgew_ln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__afgew_b2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__afgew_b2]  DEFAULT ((0)) FOR [afgew_b2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vouw___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vouw___2]  DEFAULT ((0)) FOR [vouw___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__multidrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__multidrk]  DEFAULT ((0)) FOR [multidrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fiat_prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fiat_prd]  DEFAULT ('') FOR [fiat_prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fiat_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fiat_ant]  DEFAULT ((0)) FOR [fiat_ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fiat____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fiat____]  DEFAULT ('') FOR [fiat____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__type_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__type_ord]  DEFAULT ('') FOR [type_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vpakspec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vpakspec]  DEFAULT ('') FOR [vpakspec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vls__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vls__ref]  DEFAULT ('') FOR [vls__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bom___ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bom___ok]  DEFAULT ('') FOR [bom___ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fmt_eref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fmt_eref]  DEFAULT ('') FOR [fmt_eref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omzet_wy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omzet_wy]  DEFAULT ('') FOR [omzet_wy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fak___wy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fak___wy]  DEFAULT ('') FOR [fak___wy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__dvl__gui]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__dvl__gui]  DEFAULT ((0)) FOR [dvl__gui]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant_]  DEFAULT ('') FOR [omsaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant2]  DEFAULT ('') FOR [omsaant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant3]  DEFAULT ('') FOR [omsaant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant4]  DEFAULT ('') FOR [omsaant4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant5]  DEFAULT ('') FOR [omsaant5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant6]  DEFAULT ('') FOR [omsaant6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant7]  DEFAULT ('') FOR [omsaant7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant8]  DEFAULT ('') FOR [omsaant8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omsaant9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omsaant9]  DEFAULT ('') FOR [omsaant9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtxt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtxt]  DEFAULT ('') FOR [oplagtxt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx2]  DEFAULT ('') FOR [oplagtx2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx3]  DEFAULT ('') FOR [oplagtx3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx4]  DEFAULT ('') FOR [oplagtx4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx5]  DEFAULT ('') FOR [oplagtx5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx6]  DEFAULT ('') FOR [oplagtx6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx7]  DEFAULT ('') FOR [oplagtx7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx8]  DEFAULT ('') FOR [oplagtx8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__oplagtx9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__oplagtx9]  DEFAULT ('') FOR [oplagtx9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratxt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratxt]  DEFAULT ('') FOR [extratxt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx2]  DEFAULT ('') FOR [extratx2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx3]  DEFAULT ('') FOR [extratx3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx4]  DEFAULT ('') FOR [extratx4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx5]  DEFAULT ('') FOR [extratx5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx6]  DEFAULT ('') FOR [extratx6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx7]  DEFAULT ('') FOR [extratx7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx8]  DEFAULT ('') FOR [extratx8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__extratx9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__extratx9]  DEFAULT ('') FOR [extratx9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__intr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__intr_ref]  DEFAULT ('') FOR [intr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fplm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fplm_ref]  DEFAULT ('') FOR [fplm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fpll_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fpll_ref]  DEFAULT ('') FOR [fpll_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__plwy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__plwy_ref]  DEFAULT ('') FOR [plwy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__plwy1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__plwy1ref]  DEFAULT ('') FOR [plwy1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__plwy2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__plwy2ref]  DEFAULT ('') FOR [plwy2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmd__ref]  DEFAULT ('') FOR [pmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmdohref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmdohref]  DEFAULT ('') FOR [pmdohref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmdghref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmdghref]  DEFAULT ('') FOR [pmdghref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmdporef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmdporef]  DEFAULT ('') FOR [pmdporef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vdt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vdt__ref]  DEFAULT ('') FOR [vdt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ordsch_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ordsch_2]  DEFAULT ('') FOR [ordsch_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ordsch_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ordsch_3]  DEFAULT ('') FOR [ordsch_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ordsch_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ordsch_4]  DEFAULT ('') FOR [ordsch_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ordsch_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ordsch_5]  DEFAULT ('') FOR [ordsch_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ordsch_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ordsch_6]  DEFAULT ('') FOR [ordsch_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__ordsch_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__ordsch_7]  DEFAULT ('') FOR [ordsch_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vrskpsub]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vrskpsub]  DEFAULT ('') FOR [vrskpsub]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omd__ref]  DEFAULT ('') FOR [omd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmd1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmd1_ref]  DEFAULT ('') FOR [pmd1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmd2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmd2_ref]  DEFAULT ('') FOR [pmd2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__omd_vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__omd_vref]  DEFAULT ('') FOR [omd_vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmd1vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmd1vref]  DEFAULT ('') FOR [pmd1vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__pmd2vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__pmd2vref]  DEFAULT ('') FOR [pmd2vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__tmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__tmd__ref]  DEFAULT ('') FOR [tmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__lmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__lmd__ref]  DEFAULT ('') FOR [lmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laybonnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laybonnr]  DEFAULT ('') FOR [laybonnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bon_zelf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bon_zelf]  DEFAULT ('') FOR [bon_zelf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laybe1nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laybe1nr]  DEFAULT ('') FOR [laybe1nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bon_ext1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bon_ext1]  DEFAULT ('') FOR [bon_ext1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laybe2nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laybe2nr]  DEFAULT ('') FOR [laybe2nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bon_ext2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bon_ext2]  DEFAULT ('') FOR [bon_ext2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laypbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laypbynr]  DEFAULT ('') FOR [laypbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layrbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layrbynr]  DEFAULT ('') FOR [layrbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laylbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laylbynr]  DEFAULT ('') FOR [laylbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij_drvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij_drvl]  DEFAULT ('') FOR [bij_drvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laybijnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laybijnr]  DEFAULT ('') FOR [laybijnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij__and]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij__and]  DEFAULT ('') FOR [bij__and]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvbynr]  DEFAULT ('') FOR [layvbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij__vrs]  DEFAULT ('') FOR [bij__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvb1nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvb1nr]  DEFAULT ('') FOR [layvb1nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij_vrs1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij_vrs1]  DEFAULT ('') FOR [bij_vrs1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvb2nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvb2nr]  DEFAULT ('') FOR [layvb2nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij_vrs2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij_vrs2]  DEFAULT ('') FOR [bij_vrs2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvppnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvppnr]  DEFAULT ('') FOR [layvppnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvprnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvprnr]  DEFAULT ('') FOR [layvprnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvpenr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvpenr]  DEFAULT ('') FOR [layvpenr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij__vr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij__vr2]  DEFAULT ('') FOR [bij__vr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvppn2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvppn2]  DEFAULT ('') FOR [layvppn2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvprn2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvprn2]  DEFAULT ('') FOR [layvprn2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvpen2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvpen2]  DEFAULT ('') FOR [layvpen2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij__vr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij__vr3]  DEFAULT ('') FOR [bij__vr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvppn3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvppn3]  DEFAULT ('') FOR [layvppn3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvprn3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvprn3]  DEFAULT ('') FOR [layvprn3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layvpen3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layvpen3]  DEFAULT ('') FOR [layvpen3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bij__vr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bij__vr4]  DEFAULT ('') FOR [bij__vr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laygroep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laygroep]  DEFAULT ('') FOR [laygroep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bijgroep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bijgroep]  DEFAULT ('') FOR [bijgroep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb1]  DEFAULT ('') FOR [layv6pb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb1]  DEFAULT ('') FOR [bonv6pb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb2]  DEFAULT ('') FOR [layv6pb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb2]  DEFAULT ('') FOR [bonv6pb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb3]  DEFAULT ('') FOR [layv6pb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb3]  DEFAULT ('') FOR [bonv6pb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb4]  DEFAULT ('') FOR [layv6pb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb4]  DEFAULT ('') FOR [bonv6pb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb5]  DEFAULT ('') FOR [layv6pb5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb5]  DEFAULT ('') FOR [bonv6pb5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb6]  DEFAULT ('') FOR [layv6pb6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb6]  DEFAULT ('') FOR [bonv6pb6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb7]  DEFAULT ('') FOR [layv6pb7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb7]  DEFAULT ('') FOR [bonv6pb7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6pb8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6pb8]  DEFAULT ('') FOR [layv6pb8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6pb8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6pb8]  DEFAULT ('') FOR [bonv6pb8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6vo1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6vo1]  DEFAULT ('') FOR [layv6vo1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6vo1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6vo1]  DEFAULT ('') FOR [bonv6vo1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6vo2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6vo2]  DEFAULT ('') FOR [layv6vo2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6vo2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6vo2]  DEFAULT ('') FOR [bonv6vo2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6vo3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6vo3]  DEFAULT ('') FOR [layv6vo3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6vo3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6vo3]  DEFAULT ('') FOR [bonv6vo3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6bpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6bpr]  DEFAULT ('') FOR [layv6bpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6b_e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6b_e]  DEFAULT ('') FOR [layv6b_e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__layv6b2e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__layv6b2e]  DEFAULT ('') FOR [layv6b2e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__bonv6bij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__bonv6bij]  DEFAULT ('') FOR [bonv6bij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__laycheck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__laycheck]  DEFAULT ('') FOR [laycheck]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__boncheck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__boncheck]  DEFAULT ('') FOR [boncheck]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_01]  DEFAULT ('') FOR [w_oms_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_02]  DEFAULT ('') FOR [w_oms_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_03]  DEFAULT ('') FOR [w_oms_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_04]  DEFAULT ('') FOR [w_oms_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_05]  DEFAULT ('') FOR [w_oms_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_06]  DEFAULT ('') FOR [w_oms_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_07]  DEFAULT ('') FOR [w_oms_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_08]  DEFAULT ('') FOR [w_oms_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_09]  DEFAULT ('') FOR [w_oms_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_10]  DEFAULT ('') FOR [w_oms_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_11]  DEFAULT ('') FOR [w_oms_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_12]  DEFAULT ('') FOR [w_oms_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_13]  DEFAULT ('') FOR [w_oms_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_14]  DEFAULT ('') FOR [w_oms_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_15]  DEFAULT ('') FOR [w_oms_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__w_oms_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__w_oms_16]  DEFAULT ('') FOR [w_oms_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_01]  DEFAULT ('') FOR [p_oms_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_02]  DEFAULT ('') FOR [p_oms_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_03]  DEFAULT ('') FOR [p_oms_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_04]  DEFAULT ('') FOR [p_oms_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_05]  DEFAULT ('') FOR [p_oms_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_06]  DEFAULT ('') FOR [p_oms_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_07]  DEFAULT ('') FOR [p_oms_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_08]  DEFAULT ('') FOR [p_oms_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_09]  DEFAULT ('') FOR [p_oms_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_10]  DEFAULT ('') FOR [p_oms_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_11]  DEFAULT ('') FOR [p_oms_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_12]  DEFAULT ('') FOR [p_oms_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_13]  DEFAULT ('') FOR [p_oms_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_14]  DEFAULT ('') FOR [p_oms_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_15]  DEFAULT ('') FOR [p_oms_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__p_oms_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__p_oms_16]  DEFAULT ('') FOR [p_oms_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_01]  DEFAULT ('') FOR [a_oms_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_02]  DEFAULT ('') FOR [a_oms_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_03]  DEFAULT ('') FOR [a_oms_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_04]  DEFAULT ('') FOR [a_oms_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_05]  DEFAULT ('') FOR [a_oms_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_06]  DEFAULT ('') FOR [a_oms_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_07]  DEFAULT ('') FOR [a_oms_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_08]  DEFAULT ('') FOR [a_oms_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_09]  DEFAULT ('') FOR [a_oms_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_10]  DEFAULT ('') FOR [a_oms_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_11]  DEFAULT ('') FOR [a_oms_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_12]  DEFAULT ('') FOR [a_oms_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_13]  DEFAULT ('') FOR [a_oms_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_14]  DEFAULT ('') FOR [a_oms_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_15]  DEFAULT ('') FOR [a_oms_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__a_oms_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__a_oms_16]  DEFAULT ('') FOR [a_oms_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_01]  DEFAULT ('') FOR [v_oms_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_02]  DEFAULT ('') FOR [v_oms_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_03]  DEFAULT ('') FOR [v_oms_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_04]  DEFAULT ('') FOR [v_oms_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_05]  DEFAULT ('') FOR [v_oms_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_06]  DEFAULT ('') FOR [v_oms_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_07]  DEFAULT ('') FOR [v_oms_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_08]  DEFAULT ('') FOR [v_oms_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_09]  DEFAULT ('') FOR [v_oms_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_10]  DEFAULT ('') FOR [v_oms_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_11]  DEFAULT ('') FOR [v_oms_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_12]  DEFAULT ('') FOR [v_oms_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_13]  DEFAULT ('') FOR [v_oms_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_14]  DEFAULT ('') FOR [v_oms_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_15]  DEFAULT ('') FOR [v_oms_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__v_oms_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__v_oms_16]  DEFAULT ('') FOR [v_oms_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__papplsrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__papplsrt]  DEFAULT ('') FOR [papplsrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__paprosrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__paprosrt]  DEFAULT ('') FOR [paprosrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__papplref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__papplref]  DEFAULT ('') FOR [papplref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__paproref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__paproref]  DEFAULT ('') FOR [paproref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__custsize]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__custsize]  DEFAULT ('') FOR [custsize]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__mnpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__mnpag__x]  DEFAULT ((0)) FOR [mnpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__mnpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__mnpag__y]  DEFAULT ((0)) FOR [mnpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__mxpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__mxpag__x]  DEFAULT ((0)) FOR [mxpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__mxpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__mxpag__y]  DEFAULT ((0)) FOR [mxpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__etas1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__etas1ref]  DEFAULT ('') FOR [etas1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__etas2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__etas2ref]  DEFAULT ('') FOR [etas2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__etas3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__etas3ref]  DEFAULT ('') FOR [etas3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__etas4ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__etas4ref]  DEFAULT ('') FOR [etas4ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__etas5ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__etas5ref]  DEFAULT ('') FOR [etas5ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__off2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__off2_ref]  DEFAULT ('') FOR [off2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__internet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__internet]  DEFAULT ('') FOR [internet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__rfqonw4l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__rfqonw4l]  DEFAULT ('') FOR [rfqonw4l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__min_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__min_aant]  DEFAULT ((0)) FOR [min_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__max_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__max_aant]  DEFAULT ((0)) FOR [max_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__cpversie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__cpversie]  DEFAULT ('') FOR [cpversie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__cpautcal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__cpautcal]  DEFAULT ('') FOR [cpautcal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__cpdirord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__cpdirord]  DEFAULT ('') FOR [cpdirord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__prodcrea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__prodcrea]  DEFAULT ('') FOR [prodcrea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__prod_jdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__prod_jdf]  DEFAULT ('') FOR [prod_jdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grp__prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grp__prd]  DEFAULT ('') FOR [grp__prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grp__inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grp__inh]  DEFAULT ((0)) FOR [grp__inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grp__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grp__oms]  DEFAULT ('') FOR [grp__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal1]  DEFAULT ('') FOR [grptaal1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal2]  DEFAULT ('') FOR [grptaal2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal3]  DEFAULT ('') FOR [grptaal3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal4]  DEFAULT ('') FOR [grptaal4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal5]  DEFAULT ('') FOR [grptaal5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal6]  DEFAULT ('') FOR [grptaal6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal7]  DEFAULT ('') FOR [grptaal7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal8]  DEFAULT ('') FOR [grptaal8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__grptaal9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__grptaal9]  DEFAULT ('') FOR [grptaal9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__emlrfqfm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__emlrfqfm]  DEFAULT ('') FOR [emlrfqfm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__emlrfqkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__emlrfqkl]  DEFAULT ('') FOR [emlrfqkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__emlrfqmt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__emlrfqmt]  DEFAULT ('') FOR [emlrfqmt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__emlrfqaf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__emlrfqaf]  DEFAULT ('') FOR [emlrfqaf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__emlrfqvp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__emlrfqvp]  DEFAULT ('') FOR [emlrfqvp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__emlrfq__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__emlrfq__]  DEFAULT ('') FOR [emlrfq__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vrscpord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vrscpord]  DEFAULT ('') FOR [vrscpord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vrssplit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vrssplit]  DEFAULT ('') FOR [vrssplit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__dvl__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__dvl__oms]  DEFAULT ('') FOR [dvl__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__vrs__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__vrs__oms]  DEFAULT ('') FOR [vrs__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__dam__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__dam__oms]  DEFAULT ('') FOR [dam__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__cal__opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__cal__opl]  DEFAULT ('') FOR [cal__opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__virt_vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__virt_vrs]  DEFAULT ('') FOR [virt_vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__gang_vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__gang_vrs]  DEFAULT ('') FOR [gang_vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__seal_zijkant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__seal_zijkant]  DEFAULT ((0)) FOR [seal_zijkant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__edge_trim]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__edge_trim]  DEFAULT ((0)) FOR [edge_trim]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__gap]  DEFAULT ((0)) FOR [gap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgprd__fopp2vel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgprd__] ADD  CONSTRAINT [DF_afgprd__fopp2vel]  DEFAULT ((0)) FOR [fopp2vel]
END

