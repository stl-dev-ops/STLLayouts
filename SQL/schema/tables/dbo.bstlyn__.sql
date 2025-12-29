SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bstlyn__](
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
 CONSTRAINT [bstlyni0] PRIMARY KEY CLUSTERED 
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni1')
CREATE NONCLUSTERED INDEX [bstlyni1] ON [dbo].[bstlyn__]
(
	[ord__ref] ASC,
	[vrs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni17')
CREATE NONCLUSTERED INDEX [bstlyni17] ON [dbo].[bstlyn__]
(
	[last_edit_time] ASC,
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni2')
CREATE NONCLUSTERED INDEX [bstlyni2] ON [dbo].[bstlyn__]
(
	[lvb__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni3')
CREATE NONCLUSTERED INDEX [bstlyni3] ON [dbo].[bstlyn__]
(
	[bst__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni4')
CREATE NONCLUSTERED INDEX [bstlyni4] ON [dbo].[bstlyn__]
(
	[bst__bon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni5')
CREATE NONCLUSTERED INDEX [bstlyni5] ON [dbo].[bstlyn__]
(
	[akplynrf] ASC,
	[trn__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni6')
CREATE NONCLUSTERED INDEX [bstlyni6] ON [dbo].[bstlyn__]
(
	[bst__dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni7')
CREATE NONCLUSTERED INDEX [bstlyni7] ON [dbo].[bstlyn__]
(
	[lbn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni8')
CREATE NONCLUSTERED INDEX [bstlyni8] ON [dbo].[bstlyn__]
(
	[afg__ref] ASC,
	[vrz__tst] ASC,
	[vpakvast] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlyni9')
CREATE NONCLUSTERED INDEX [bstlyni9] ON [dbo].[bstlyn__]
(
	[prys_typ] ASC,
	[prys_tst] ASC,
	[prysvast] ASC,
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlynia')
CREATE NONCLUSTERED INDEX [bstlynia] ON [dbo].[bstlyn__]
(
	[kla__ref] ASC,
	[bst__dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlynib')
CREATE NONCLUSTERED INDEX [bstlynib] ON [dbo].[bstlyn__]
(
	[kitlynrf] ASC,
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlynic')
CREATE NONCLUSTERED INDEX [bstlynic] ON [dbo].[bstlyn__]
(
	[bsbn_kla] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlynid')
CREATE NONCLUSTERED INDEX [bstlynid] ON [dbo].[bstlyn__]
(
	[orilynrf] ASC,
	[vrz__tst] ASC,
	[trn__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlynie')
CREATE NONCLUSTERED INDEX [bstlynie] ON [dbo].[bstlyn__]
(
	[root_lyn__ref] ASC,
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlynif')
CREATE NONCLUSTERED INDEX [bstlynif] ON [dbo].[bstlyn__]
(
	[afr__ref] ASC,
	[trn__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstlyn__]') AND name = N'bstlynig')
CREATE NONCLUSTERED INDEX [bstlynig] ON [dbo].[bstlyn__]
(
	[trn__srt] ASC,
	[fac__tst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bstvlgnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bstvlgnr]  DEFAULT ('') FOR [bstvlgnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__afg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__afg__rpn]  DEFAULT ('') FOR [afg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__afg_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__afg_oms1]  DEFAULT ('') FOR [afg_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__afg_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__afg_oms2]  DEFAULT ('') FOR [afg_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kitlynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kitlynrf]  DEFAULT ('') FOR [kitlynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__soortkit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__soortkit]  DEFAULT ('0') FOR [soortkit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__orilynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__orilynrf]  DEFAULT ('') FOR [orilynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__root_lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__root_lyn__ref]  DEFAULT ('') FOR [root_lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__parent_lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__parent_lyn__ref]  DEFAULT ('') FOR [parent_lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__crea_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__crea_uur]  DEFAULT ('  0:00') FOR [crea_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__off1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__off1_ref]  DEFAULT ('') FOR [off1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__prod_off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__prod_off]  DEFAULT ('') FOR [prod_off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__prod_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__prod_com]  DEFAULT ('') FOR [prod_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tar_def_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tar_def_ref]  DEFAULT ('') FOR [tar_def_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__korting_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__korting_]  DEFAULT ((0)) FOR [korting_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lyn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lyn__srt]  DEFAULT ('2') FOR [lyn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bst__bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bst__bon]  DEFAULT ('') FOR [bst__bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bsbn_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bsbn_kla]  DEFAULT ('') FOR [bsbn_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bsbn_kl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bsbn_kl2]  DEFAULT ('') FOR [bsbn_kl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bst__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bst__url]  DEFAULT ('') FOR [bst__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bst__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bst__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bst__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bst__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bst__uur]  DEFAULT ('  0:00') FOR [bst__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bst__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bst__com]  DEFAULT ('') FOR [bst__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__b_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__b_aantal]  DEFAULT ((0)) FOR [b_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__beaantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__beaantal]  DEFAULT ((0)) FOR [beaantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__prys_srt]  DEFAULT ('7') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__prys_typ]  DEFAULT ('1') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__prys_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__prys_tst]  DEFAULT ('0') FOR [prys_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__prys_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__prys_com]  DEFAULT ('') FOR [prys_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__pr_excl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__pr_excl_]  DEFAULT ((0)) FOR [pr_excl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__preexcl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__preexcl_]  DEFAULT ((0)) FOR [preexcl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__preexclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__preexclv]  DEFAULT ((0)) FOR [preexclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__pr_incl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__pr_incl_]  DEFAULT ((0)) FOR [pr_incl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__proexcl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__proexcl_]  DEFAULT ((0)) FOR [proexcl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__proexclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__proexclv]  DEFAULT ((0)) FOR [proexclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__pr_exclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__pr_exclv]  DEFAULT ((0)) FOR [pr_exclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__pr_inclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__pr_inclv]  DEFAULT ((0)) FOR [pr_inclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__btw__ref]  DEFAULT ('0') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bedr__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bedr__bm]  DEFAULT ((0)) FOR [bedr__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bedr__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bedr__vm]  DEFAULT ((0)) FOR [bedr__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bedro_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bedro_bm]  DEFAULT ((0)) FOR [bedro_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bedro_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bedro_vm]  DEFAULT ((0)) FOR [bedro_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__prysvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__prysvast]  DEFAULT ('N') FOR [prysvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fac_eenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fac_eenh]  DEFAULT ((1)) FOR [fac_eenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vpakvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vpakvast]  DEFAULT ('Y') FOR [vpakvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__aant__e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__aant__e2]  DEFAULT ((0)) FOR [aant__e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__aant__e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__aant__e3]  DEFAULT ((0)) FOR [aant__e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__aant__e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__aant__e4]  DEFAULT ((0)) FOR [aant__e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__aant__e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__aant__e5]  DEFAULT ((0)) FOR [aant__e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__akplynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__akplynrf]  DEFAULT ('') FOR [akplynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lvb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lvb__ref]  DEFAULT ('') FOR [lvb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lev__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lev__com]  DEFAULT ('') FOR [lev__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lbn__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lbn__com]  DEFAULT ('') FOR [lbn__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__leverkod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__leverkod]  DEFAULT ('1') FOR [leverkod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__l_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__l_aantal]  DEFAULT ((0)) FOR [l_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lant_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lant_min]  DEFAULT ((0)) FOR [lant_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lant_max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lant_max]  DEFAULT ((0)) FOR [lant_max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__ltol_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__ltol_min]  DEFAULT ((0)) FOR [ltol_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__ltol_max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__ltol_max]  DEFAULT ((0)) FOR [ltol_max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrz__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrz__tst]  DEFAULT ('N') FOR [vrz__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__laad_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__laad_tst]  DEFAULT ('N') FOR [laad_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__annul___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__annul___]  DEFAULT ('N') FOR [annul___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lev__tst]  DEFAULT ('N') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrzv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrzv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrzv_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrzv_uur]  DEFAULT ('  0:00') FOR [vrzv_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levv_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levv_uur]  DEFAULT ('  0:00') FOR [levv_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levb_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levb_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levb_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levb_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levb_uur]  DEFAULT ('  0:00') FOR [levb_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrz__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrz__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrz__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrz__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrz__uur]  DEFAULT ('  0:00') FOR [vrz__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lev__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lev__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [lev__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lev__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lev__uur]  DEFAULT ('  0:00') FOR [lev__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levtrcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levtrcom]  DEFAULT ('') FOR [levtrcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrzvodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrzvodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzvodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrzvouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrzvouur]  DEFAULT ('  0:00') FOR [vrzvouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levvodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levvodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levvodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levvouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levvouur]  DEFAULT ('  0:00') FOR [levvouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrzvbdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrzvbdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzvbdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__vrzvbuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__vrzvbuur]  DEFAULT ('  0:00') FOR [vrzvbuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levvbdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levvbdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levvbdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__levvbuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__levvbuur]  DEFAULT ('  0:00') FOR [levvbuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__trn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__trn__srt]  DEFAULT ('1') FOR [trn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__knplkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__knplkref]  DEFAULT ('') FOR [knplkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__trsp_dgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__trsp_dgn]  DEFAULT ((0)) FOR [trsp_dgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__trsp_urn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__trsp_urn]  DEFAULT ('') FOR [trsp_urn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__trsp_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__trsp_typ]  DEFAULT ('2') FOR [trsp_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__trng_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__trng_ref]  DEFAULT ('') FOR [trng_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__aant_pak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__aant_pak]  DEFAULT ((0)) FOR [aant_pak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__aant_pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__aant_pal]  DEFAULT ((0)) FOR [aant_pal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__b_antpak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__b_antpak]  DEFAULT ((0)) FOR [b_antpak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__b_antpal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__b_antpal]  DEFAULT ((0)) FOR [b_antpal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__l_antpak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__l_antpak]  DEFAULT ((0)) FOR [l_antpak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__l_antpal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__l_antpal]  DEFAULT ((0)) FOR [l_antpal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__extgew__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__extgew__]  DEFAULT ((0)) FOR [extgew__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__b_netto_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__b_netto_]  DEFAULT ((0)) FOR [b_netto_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__b_tarra_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__b_tarra_]  DEFAULT ((0)) FOR [b_tarra_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__l_tarra_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__l_tarra_]  DEFAULT ((0)) FOR [l_tarra_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kolom_6_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kolom_6_]  DEFAULT ('') FOR [kolom_6_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kolom_7_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kolom_7_]  DEFAULT ('') FOR [kolom_7_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kolom_8_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kolom_8_]  DEFAULT ('') FOR [kolom_8_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kolom_9_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kolom_9_]  DEFAULT ('') FOR [kolom_9_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kolom_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kolom_11]  DEFAULT ((0)) FOR [kolom_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__koloma11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__koloma11]  DEFAULT ((0)) FOR [koloma11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__koloma12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__koloma12]  DEFAULT ((0)) FOR [koloma12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__kolom_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__kolom_13]  DEFAULT ((0)) FOR [kolom_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__gwstintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__gwstintr]  DEFAULT ('1') FOR [gwstintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fmd__ref]  DEFAULT ('') FOR [fmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fac__tst]  DEFAULT ('0') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fac__wyz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fac__wyz]  DEFAULT ('1') FOR [fac__wyz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fac__typ]  DEFAULT ('1') FOR [fac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fac__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fac__grp]  DEFAULT ('1') FOR [fac__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fac__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fac__com]  DEFAULT ('') FOR [fac__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__knpfcref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__knpfcref]  DEFAULT ('') FOR [knpfcref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__f_aantal]  DEFAULT ((0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bedrf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bedrf_bm]  DEFAULT ((0)) FOR [bedrf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bedrf_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bedrf_vm]  DEFAULT ((0)) FOR [bedrf_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__bst__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__bst__lay]  DEFAULT ('') FOR [bst__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__uit__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__uit__lay]  DEFAULT ('') FOR [uit__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lvb__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lvb__lay]  DEFAULT ('') FOR [lvb__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__lvb___ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__lvb___ex]  DEFAULT ((1)) FOR [lvb___ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__stafprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__stafprys]  DEFAULT ('1') FOR [stafprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__p_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__p_aantal]  DEFAULT ((0)) FOR [p_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__ord__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__ord__grp]  DEFAULT ('') FOR [ord__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__crea_ori]  DEFAULT ('0') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__jobnredi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__jobnredi]  DEFAULT ('') FOR [jobnredi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__jobnrvrz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__jobnrvrz]  DEFAULT ('') FOR [jobnrvrz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__fiat____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__fiat____]  DEFAULT ('Y') FOR [fiat____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__flok_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__flok_ref]  DEFAULT ('') FOR [flok_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__flknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__flknpref]  DEFAULT ('') FOR [flknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__supervis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__supervis]  DEFAULT ('') FOR [supervis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betdmeth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betdmeth]  DEFAULT ('') FOR [betdmeth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betd_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betd_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [betd_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betd_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betd_uur]  DEFAULT ('  0:00') FOR [betd_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betd_tid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betd_tid]  DEFAULT ('') FOR [betd_tid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betdcard]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betdcard]  DEFAULT ('') FOR [betdcard]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betd_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betd_kla]  DEFAULT ('') FOR [betd_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betd_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betd_com]  DEFAULT ('') FOR [betd_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betdf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betdf_bm]  DEFAULT ((0)) FOR [betdf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betdf_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betdf_vm]  DEFAULT ((0)) FOR [betdf_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__webshopid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__webshopid]  DEFAULT ('') FOR [webshopid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__land_productie]  DEFAULT ('') FOR [land_productie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__btw_nr_klant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__btw_nr_klant]  DEFAULT ('') FOR [btw_nr_klant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstlyn__betw_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstlyn__] ADD  CONSTRAINT [DF_bstlyn__betw_srt]  DEFAULT ('1') FOR [betw_srt]
END

