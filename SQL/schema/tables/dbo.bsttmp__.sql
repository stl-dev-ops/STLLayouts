SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bsttmp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bsttmp__](
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[bstvlgnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[kitlynrf] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[soortkit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[orilynrf] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[root_lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[parent_lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[crea_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_off] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[tar_def_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[korting_] [float] NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__bon] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbn_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbn_kl2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__url] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__dat] [date] NOT NULL,
	[bst__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__com] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_aantal] [float] NOT NULL,
	[beaantal] [float] NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_com] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr_excl_] [float] NOT NULL,
	[preexcl_] [float] NOT NULL,
	[preexclv] [float] NOT NULL,
	[pr_incl_] [float] NOT NULL,
	[proexcl_] [float] NOT NULL,
	[proexclv] [float] NOT NULL,
	[pr_exclv] [float] NOT NULL,
	[pr_inclv] [float] NOT NULL,
	[btw__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedr__bm] [float] NOT NULL,
	[bedr__vm] [float] NOT NULL,
	[bedro_bm] [float] NOT NULL,
	[bedro_vm] [float] NOT NULL,
	[prysvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_eenh] [int] NOT NULL,
	[vpakvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__e2] [float] NOT NULL,
	[aant__e3] [float] NOT NULL,
	[aant__e4] [float] NOT NULL,
	[aant__e5] [float] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[akplynrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvb__ref] [nvarchar](58) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__com] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[leverkod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[l_aantal] [float] NOT NULL,
	[lant_min] [float] NOT NULL,
	[lant_max] [float] NOT NULL,
	[ltol_min] [float] NOT NULL,
	[ltol_max] [float] NOT NULL,
	[vrz__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laad_tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[annul___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrzv_dat] [date] NOT NULL,
	[vrzv_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levv_dat] [date] NOT NULL,
	[levv_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levb_dat] [date] NOT NULL,
	[levb_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__dat] [date] NOT NULL,
	[vrz__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__dat] [date] NOT NULL,
	[lev__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrcom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrzvodat] [date] NOT NULL,
	[vrzvouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvodat] [date] NOT NULL,
	[levvouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrzvbdat] [date] NOT NULL,
	[vrzvbuur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvbdat] [date] NOT NULL,
	[levvbuur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_dgn] [int] NOT NULL,
	[trsp_urn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trng_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_pak] [int] NOT NULL,
	[aant_pal] [float] NOT NULL,
	[b_antpak] [int] NOT NULL,
	[b_antpal] [float] NOT NULL,
	[l_antpak] [int] NOT NULL,
	[l_antpal] [float] NOT NULL,
	[extgew__] [float] NOT NULL,
	[b_netto_] [float] NOT NULL,
	[b_tarra_] [float] NOT NULL,
	[l_tarra_] [float] NOT NULL,
	[kolom_6_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_7_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_8_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_9_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_11] [int] NOT NULL,
	[koloma11] [float] NOT NULL,
	[koloma12] [float] NOT NULL,
	[kolom_13] [float] NOT NULL,
	[gwstintr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__wyz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__grp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpfcref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[f_aantal] [float] NOT NULL,
	[bedrf_bm] [float] NOT NULL,
	[bedrf_vm] [float] NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__dat] [date] NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvb__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvb___ex] [int] NOT NULL,
	[stafprys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[p_aantal] [float] NOT NULL,
	[ord__grp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_ori] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnredi] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrvrz] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[flok_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[flknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[supervis] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd__vm] [float] NOT NULL,
	[betdmeth] [nvarchar](64) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_dat] [date] NOT NULL,
	[betd_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_tid] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdcard] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_kla] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_com] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdf_bm] [float] NOT NULL,
	[betdf_vm] [float] NOT NULL,
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
	[webshopid] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_productie] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_nr_klant] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cerm8_reference] [nvarchar](80) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [bsttmpi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bstvlgnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bstvlgnr]  DEFAULT ('') FOR [bstvlgnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__afg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__afg__rpn]  DEFAULT ('') FOR [afg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__afg_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__afg_oms1]  DEFAULT ('') FOR [afg_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__afg_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__afg_oms2]  DEFAULT ('') FOR [afg_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kitlynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kitlynrf]  DEFAULT ('') FOR [kitlynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__soortkit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__soortkit]  DEFAULT ('0') FOR [soortkit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__orilynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__orilynrf]  DEFAULT ('') FOR [orilynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__root_lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__root_lyn__ref]  DEFAULT ('') FOR [root_lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__parent_lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__parent_lyn__ref]  DEFAULT ('') FOR [parent_lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__crea_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__crea_uur]  DEFAULT ('  0:00') FOR [crea_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__off1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__off1_ref]  DEFAULT ('') FOR [off1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__prod_off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__prod_off]  DEFAULT ('') FOR [prod_off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__prod_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__prod_com]  DEFAULT ('') FOR [prod_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tar_def_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tar_def_ref]  DEFAULT ('') FOR [tar_def_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__korting_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__korting_]  DEFAULT ((0)) FOR [korting_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lyn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lyn__srt]  DEFAULT ('2') FOR [lyn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bst__bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bst__bon]  DEFAULT ('') FOR [bst__bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bsbn_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bsbn_kla]  DEFAULT ('') FOR [bsbn_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bsbn_kl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bsbn_kl2]  DEFAULT ('') FOR [bsbn_kl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bst__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bst__url]  DEFAULT ('') FOR [bst__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bst__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bst__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bst__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bst__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bst__uur]  DEFAULT ('  0:00') FOR [bst__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bst__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bst__com]  DEFAULT ('') FOR [bst__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__b_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__b_aantal]  DEFAULT ((0)) FOR [b_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__beaantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__beaantal]  DEFAULT ((0)) FOR [beaantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__prys_srt]  DEFAULT ('7') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__prys_typ]  DEFAULT ('1') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__prys_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__prys_tst]  DEFAULT ('0') FOR [prys_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__prys_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__prys_com]  DEFAULT ('') FOR [prys_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__pr_excl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__pr_excl_]  DEFAULT ((0)) FOR [pr_excl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__preexcl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__preexcl_]  DEFAULT ((0)) FOR [preexcl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__preexclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__preexclv]  DEFAULT ((0)) FOR [preexclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__pr_incl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__pr_incl_]  DEFAULT ((0)) FOR [pr_incl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__proexcl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__proexcl_]  DEFAULT ((0)) FOR [proexcl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__proexclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__proexclv]  DEFAULT ((0)) FOR [proexclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__pr_exclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__pr_exclv]  DEFAULT ((0)) FOR [pr_exclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__pr_inclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__pr_inclv]  DEFAULT ((0)) FOR [pr_inclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__btw__ref]  DEFAULT ('0') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bedr__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bedr__bm]  DEFAULT ((0)) FOR [bedr__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bedr__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bedr__vm]  DEFAULT ((0)) FOR [bedr__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bedro_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bedro_bm]  DEFAULT ((0)) FOR [bedro_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bedro_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bedro_vm]  DEFAULT ((0)) FOR [bedro_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__prysvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__prysvast]  DEFAULT ('N') FOR [prysvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fac_eenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fac_eenh]  DEFAULT ((1)) FOR [fac_eenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vpakvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vpakvast]  DEFAULT ('Y') FOR [vpakvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__aant__e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__aant__e2]  DEFAULT ((0)) FOR [aant__e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__aant__e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__aant__e3]  DEFAULT ((0)) FOR [aant__e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__aant__e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__aant__e4]  DEFAULT ((0)) FOR [aant__e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__aant__e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__aant__e5]  DEFAULT ((0)) FOR [aant__e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__akplynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__akplynrf]  DEFAULT ('') FOR [akplynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lvb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lvb__ref]  DEFAULT ('') FOR [lvb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lev__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lev__com]  DEFAULT ('') FOR [lev__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lbn__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lbn__com]  DEFAULT ('') FOR [lbn__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__leverkod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__leverkod]  DEFAULT ('1') FOR [leverkod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__l_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__l_aantal]  DEFAULT ((0)) FOR [l_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lant_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lant_min]  DEFAULT ((0)) FOR [lant_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lant_max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lant_max]  DEFAULT ((0)) FOR [lant_max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__ltol_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__ltol_min]  DEFAULT ((0)) FOR [ltol_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__ltol_max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__ltol_max]  DEFAULT ((0)) FOR [ltol_max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrz__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrz__tst]  DEFAULT ('N') FOR [vrz__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__laad_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__laad_tst]  DEFAULT ('N') FOR [laad_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__annul___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__annul___]  DEFAULT ('N') FOR [annul___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lev__tst]  DEFAULT ('N') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrzv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrzv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrzv_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrzv_uur]  DEFAULT ('  0:00') FOR [vrzv_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levv_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levv_uur]  DEFAULT ('  0:00') FOR [levv_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levb_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levb_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levb_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levb_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levb_uur]  DEFAULT ('  0:00') FOR [levb_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrz__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrz__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrz__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrz__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrz__uur]  DEFAULT ('  0:00') FOR [vrz__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lev__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lev__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [lev__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lev__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lev__uur]  DEFAULT ('  0:00') FOR [lev__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levtrcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levtrcom]  DEFAULT ('') FOR [levtrcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrzvodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrzvodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzvodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrzvouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrzvouur]  DEFAULT ('  0:00') FOR [vrzvouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levvodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levvodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levvodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levvouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levvouur]  DEFAULT ('  0:00') FOR [levvouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrzvbdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrzvbdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzvbdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__vrzvbuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__vrzvbuur]  DEFAULT ('  0:00') FOR [vrzvbuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levvbdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levvbdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levvbdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__levvbuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__levvbuur]  DEFAULT ('  0:00') FOR [levvbuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__trn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__trn__srt]  DEFAULT ('1') FOR [trn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__knplkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__knplkref]  DEFAULT ('') FOR [knplkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__trsp_dgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__trsp_dgn]  DEFAULT ((0)) FOR [trsp_dgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__trsp_urn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__trsp_urn]  DEFAULT ('') FOR [trsp_urn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__trsp_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__trsp_typ]  DEFAULT ('2') FOR [trsp_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__trng_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__trng_ref]  DEFAULT ('') FOR [trng_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__aant_pak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__aant_pak]  DEFAULT ((0)) FOR [aant_pak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__aant_pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__aant_pal]  DEFAULT ((0)) FOR [aant_pal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__b_antpak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__b_antpak]  DEFAULT ((0)) FOR [b_antpak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__b_antpal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__b_antpal]  DEFAULT ((0)) FOR [b_antpal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__l_antpak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__l_antpak]  DEFAULT ((0)) FOR [l_antpak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__l_antpal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__l_antpal]  DEFAULT ((0)) FOR [l_antpal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__extgew__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__extgew__]  DEFAULT ((0)) FOR [extgew__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__b_netto_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__b_netto_]  DEFAULT ((0)) FOR [b_netto_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__b_tarra_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__b_tarra_]  DEFAULT ((0)) FOR [b_tarra_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__l_tarra_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__l_tarra_]  DEFAULT ((0)) FOR [l_tarra_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kolom_6_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kolom_6_]  DEFAULT ('') FOR [kolom_6_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kolom_7_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kolom_7_]  DEFAULT ('') FOR [kolom_7_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kolom_8_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kolom_8_]  DEFAULT ('') FOR [kolom_8_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kolom_9_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kolom_9_]  DEFAULT ('') FOR [kolom_9_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kolom_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kolom_11]  DEFAULT ((0)) FOR [kolom_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__koloma11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__koloma11]  DEFAULT ((0)) FOR [koloma11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__koloma12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__koloma12]  DEFAULT ((0)) FOR [koloma12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__kolom_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__kolom_13]  DEFAULT ((0)) FOR [kolom_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__gwstintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__gwstintr]  DEFAULT ('1') FOR [gwstintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fmd__ref]  DEFAULT ('') FOR [fmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fac__tst]  DEFAULT ('0') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fac__wyz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fac__wyz]  DEFAULT ('1') FOR [fac__wyz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fac__typ]  DEFAULT ('1') FOR [fac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fac__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fac__grp]  DEFAULT ('1') FOR [fac__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fac__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fac__com]  DEFAULT ('') FOR [fac__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__knpfcref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__knpfcref]  DEFAULT ('') FOR [knpfcref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__f_aantal]  DEFAULT ((0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bedrf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bedrf_bm]  DEFAULT ((0)) FOR [bedrf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bedrf_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bedrf_vm]  DEFAULT ((0)) FOR [bedrf_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__bst__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__bst__lay]  DEFAULT ('') FOR [bst__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__uit__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__uit__lay]  DEFAULT ('') FOR [uit__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lvb__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lvb__lay]  DEFAULT ('') FOR [lvb__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__lvb___ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__lvb___ex]  DEFAULT ((1)) FOR [lvb___ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__stafprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__stafprys]  DEFAULT ('1') FOR [stafprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__p_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__p_aantal]  DEFAULT ((0)) FOR [p_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__ord__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__ord__grp]  DEFAULT ('') FOR [ord__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__crea_ori]  DEFAULT ('0') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__jobnredi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__jobnredi]  DEFAULT ('') FOR [jobnredi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__jobnrvrz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__jobnrvrz]  DEFAULT ('') FOR [jobnrvrz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__fiat____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__fiat____]  DEFAULT ('Y') FOR [fiat____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__flok_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__flok_ref]  DEFAULT ('') FOR [flok_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__flknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__flknpref]  DEFAULT ('') FOR [flknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__supervis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__supervis]  DEFAULT ('') FOR [supervis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betdmeth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betdmeth]  DEFAULT ('') FOR [betdmeth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betd_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betd_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [betd_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betd_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betd_uur]  DEFAULT ('  0:00') FOR [betd_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betd_tid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betd_tid]  DEFAULT ('') FOR [betd_tid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betdcard]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betdcard]  DEFAULT ('') FOR [betdcard]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betd_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betd_kla]  DEFAULT ('') FOR [betd_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betd_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betd_com]  DEFAULT ('') FOR [betd_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betdf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betdf_bm]  DEFAULT ((0)) FOR [betdf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betdf_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betdf_vm]  DEFAULT ((0)) FOR [betdf_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__webshopid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__webshopid]  DEFAULT ('') FOR [webshopid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__land_productie]  DEFAULT ('') FOR [land_productie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__btw_nr_klant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__btw_nr_klant]  DEFAULT ('') FOR [btw_nr_klant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bsttmp__betw_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bsttmp__] ADD  CONSTRAINT [DF_bsttmp__betw_srt]  DEFAULT ('1') FOR [betw_srt]
END

