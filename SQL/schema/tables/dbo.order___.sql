SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[order___](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[best_dat] [date] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss_] [float] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss2] [float] NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean___nr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[gesl_bre] [float] NOT NULL,
	[gesl_len] [float] NOT NULL,
	[rug_____] [float] NOT NULL,
	[vouw____] [float] NOT NULL,
	[vouw___2] [float] NOT NULL,
	[open_bre] [float] NOT NULL,
	[open_len] [float] NOT NULL,
	[oplage__] [float] NOT NULL,
	[vglopl__] [float] NOT NULL,
	[wpafwref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[plts_kod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[leverdat] [date] NOT NULL,
	[leveruur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[leverkod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[leverkom] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[fsc__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbn_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[lotnrkla] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[refbykla] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[flms_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__idf] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[spec_lev] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[offa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__dat] [date] NOT NULL,
	[vorigord] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[voorz_bd] [float] NOT NULL,
	[krit___1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[krit___2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type__oa] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klassemt] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrij_dat] [date] NOT NULL,
	[goed_drk] [date] NOT NULL,
	[goedudrk] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[goed_afw] [date] NOT NULL,
	[goeduafw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[goed_lev] [date] NOT NULL,
	[goedulev] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plwy_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_0] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd_0] [int] NOT NULL,
	[pln_dd_1] [int] NOT NULL,
	[pln_dd_2] [int] NOT NULL,
	[pln_dd_3] [int] NOT NULL,
	[levertyd] [int] NOT NULL,
	[fiat_prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blok_atl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bloktxt1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[bloktxt2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[blok_dat] [date] NOT NULL,
	[blok_usr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bom___ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bom__dat] [date] NOT NULL,
	[bom__usr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bom__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[boa___ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[boa__dat] [date] NOT NULL,
	[boa__usr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[boa__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[toe_tmp_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_tmp_] [date] NOT NULL,
	[afgewrkt] [float] NOT NULL,
	[prodwijz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__cnt] [int] NOT NULL,
	[ord_begl] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[kalkulat] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_cont] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[faktur_1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[faktur_2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[oab__weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grdb_weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stbw_weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pntn_weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pdkn_weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[matb_weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[levb_weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ofk__weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hfl__weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wkb__weg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[groepeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplag_vm] [float] NOT NULL,
	[oplag_bm] [float] NOT NULL,
	[oplag_om] [float] NOT NULL,
	[extra_vm] [float] NOT NULL,
	[extra_bm] [float] NOT NULL,
	[extra_om] [float] NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplagtxt] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[extratxt] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fknp_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__wyz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[n1______] [int] NOT NULL,
	[n2______] [int] NOT NULL,
	[n3______] [int] NOT NULL,
	[n4______] [int] NOT NULL,
	[n5______] [int] NOT NULL,
	[n6______] [int] NOT NULL,
	[n7______] [int] NOT NULL,
	[n8______] [int] NOT NULL,
	[n9______] [int] NOT NULL,
	[n10_____] [int] NOT NULL,
	[n11_____] [int] NOT NULL,
	[n12_____] [int] NOT NULL,
	[n13_____] [int] NOT NULL,
	[n14_____] [int] NOT NULL,
	[n15_____] [int] NOT NULL,
	[n16_____] [int] NOT NULL,
	[dat01___] [date] NOT NULL,
	[dat02___] [date] NOT NULL,
	[dat03___] [date] NOT NULL,
	[dat04___] [date] NOT NULL,
	[dat05___] [date] NOT NULL,
	[open____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_open] [date] NOT NULL,
	[annul___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datannul] [date] NOT NULL,
	[jobnrher] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrvdl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fin___ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fin__com] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[fin__dat] [date] NOT NULL,
	[fin__usr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[kred_dat] [date] NOT NULL,
	[opvolgen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[antw__01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[flok_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[flknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[goed_lev_manueel] [bit] NOT NULL,
 CONSTRAINT [id_ord_1] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_2')
CREATE UNIQUE NONCLUSTERED INDEX [id_ord_2] ON [dbo].[order___]
(
	[ord__rpn] ASC,
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_3')
CREATE NONCLUSTERED INDEX [id_ord_3] ON [dbo].[order___]
(
	[open____] ASC,
	[type_ord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_4')
CREATE NONCLUSTERED INDEX [id_ord_4] ON [dbo].[order___]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_5')
CREATE NONCLUSTERED INDEX [id_ord_5] ON [dbo].[order___]
(
	[bsbn_kla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_6')
CREATE NONCLUSTERED INDEX [id_ord_6] ON [dbo].[order___]
(
	[kla__ref] ASC,
	[open____] ASC,
	[kred_dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_7')
CREATE NONCLUSTERED INDEX [id_ord_7] ON [dbo].[order___]
(
	[best_dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_8')
CREATE NONCLUSTERED INDEX [id_ord_8] ON [dbo].[order___]
(
	[toe_tmp_] ASC,
	[type_ord] ASC,
	[type__oa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[order___]') AND name = N'id_ord_9')
CREATE NONCLUSTERED INDEX [id_ord_9] ON [dbo].[order___]
(
	[ktrk_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___ord__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___ord__rpn]  DEFAULT ('') FOR [ord__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___best_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___best_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [best_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kommiss2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kommiss2]  DEFAULT ((0)) FOR [kommiss2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kpn__srt]  DEFAULT ('') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___afw__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___afw__srt]  DEFAULT ('') FOR [afw__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___type_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___type_ord]  DEFAULT ('') FOR [type_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___ean___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___ean___nr]  DEFAULT ('') FOR [ean___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___gesl_bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___gesl_bre]  DEFAULT ((0)) FOR [gesl_bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___gesl_len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___gesl_len]  DEFAULT ((0)) FOR [gesl_len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vouw____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vouw____]  DEFAULT ((0)) FOR [vouw____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vouw___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vouw___2]  DEFAULT ((0)) FOR [vouw___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___open_bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___open_bre]  DEFAULT ((0)) FOR [open_bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___open_len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___open_len]  DEFAULT ((0)) FOR [open_len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vglopl__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vglopl__]  DEFAULT ((0)) FOR [vglopl__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___wpafwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___wpafwref]  DEFAULT ('') FOR [wpafwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___plts_kod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___plts_kod]  DEFAULT ('') FOR [plts_kod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___knplkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___knplkref]  DEFAULT ('') FOR [knplkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___leverdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___leverdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [leverdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___leveruur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___leveruur]  DEFAULT ('') FOR [leveruur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___leverkod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___leverkod]  DEFAULT ('') FOR [leverkod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___leverkom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___leverkom]  DEFAULT ('') FOR [leverkom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fsc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fsc__ref]  DEFAULT ('') FOR [fsc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bsbn_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bsbn_kla]  DEFAULT ('') FOR [bsbn_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___lotnrkla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___lotnrkla]  DEFAULT ('') FOR [lotnrkla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___refbykla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___refbykla]  DEFAULT ('') FOR [refbykla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___flms_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___flms_ref]  DEFAULT ('') FOR [flms_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___edi__idf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___edi__idf]  DEFAULT ('') FOR [edi__idf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___spec_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___spec_lev]  DEFAULT ('') FOR [spec_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___offa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___offa_ref]  DEFAULT ('') FOR [offa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___off__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___off__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [off__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vorigord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vorigord]  DEFAULT ('') FOR [vorigord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___voorz_bd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___voorz_bd]  DEFAULT ((0)) FOR [voorz_bd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___krit___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___krit___1]  DEFAULT ('') FOR [krit___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___krit___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___krit___2]  DEFAULT ('') FOR [krit___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___type_prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___type_prd]  DEFAULT ('') FOR [type_prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___type__oa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___type__oa]  DEFAULT ('') FOR [type__oa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___klassemt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___klassemt]  DEFAULT ('') FOR [klassemt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vrij_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vrij_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrij_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___goed_drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___goed_drk]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [goed_drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___goedudrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___goedudrk]  DEFAULT ('') FOR [goedudrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___goed_afw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___goed_afw]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [goed_afw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___goeduafw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___goeduafw]  DEFAULT ('') FOR [goeduafw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___goed_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___goed_lev]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [goed_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___goedulev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___goedulev]  DEFAULT ('') FOR [goedulev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___plwy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___plwy_ref]  DEFAULT ('') FOR [plwy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pmd__ref]  DEFAULT ('') FOR [pmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dt_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dt_0]  DEFAULT ('') FOR [pln_dt_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dt_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dt_1]  DEFAULT ('') FOR [pln_dt_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dt_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dt_2]  DEFAULT ('') FOR [pln_dt_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dt_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dt_3]  DEFAULT ('') FOR [pln_dt_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dd_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dd_0]  DEFAULT ((0)) FOR [pln_dd_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dd_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dd_1]  DEFAULT ((0)) FOR [pln_dd_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dd_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dd_2]  DEFAULT ((0)) FOR [pln_dd_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pln_dd_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pln_dd_3]  DEFAULT ((0)) FOR [pln_dd_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___levertyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___levertyd]  DEFAULT ((0)) FOR [levertyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fiat_prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fiat_prd]  DEFAULT ('') FOR [fiat_prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___blok_atl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___blok_atl]  DEFAULT ('') FOR [blok_atl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bloktxt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bloktxt1]  DEFAULT ('') FOR [bloktxt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bloktxt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bloktxt2]  DEFAULT ('') FOR [bloktxt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___blok_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___blok_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [blok_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___blok_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___blok_usr]  DEFAULT ('') FOR [blok_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bom___ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bom___ok]  DEFAULT ('') FOR [bom___ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bom__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bom__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bom__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bom__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bom__usr]  DEFAULT ('') FOR [bom__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bom__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bom__com]  DEFAULT ('') FOR [bom__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___boa___ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___boa___ok]  DEFAULT ('') FOR [boa___ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___boa__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___boa__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [boa__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___boa__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___boa__usr]  DEFAULT ('') FOR [boa__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___boa__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___boa__com]  DEFAULT ('') FOR [boa__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___toe_tmp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___toe_tmp_]  DEFAULT ('') FOR [toe_tmp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dat_tmp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dat_tmp_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_tmp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___afgewrkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___afgewrkt]  DEFAULT ((0)) FOR [afgewrkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___prodwijz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___prodwijz]  DEFAULT ('') FOR [prodwijz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___bon__cnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___bon__cnt]  DEFAULT ((0)) FOR [bon__cnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___ord_begl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___ord_begl]  DEFAULT ('') FOR [ord_begl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kalkulat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kalkulat]  DEFAULT ('') FOR [kalkulat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___int_cont]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___int_cont]  DEFAULT ('') FOR [int_cont]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___faktur_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___faktur_1]  DEFAULT ('') FOR [faktur_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___faktur_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___faktur_2]  DEFAULT ('') FOR [faktur_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___oab__weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___oab__weg]  DEFAULT ('') FOR [oab__weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___grdb_weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___grdb_weg]  DEFAULT ('') FOR [grdb_weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___stbw_weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___stbw_weg]  DEFAULT ('') FOR [stbw_weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pntn_weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pntn_weg]  DEFAULT ('') FOR [pntn_weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___pdkn_weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___pdkn_weg]  DEFAULT ('') FOR [pdkn_weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___plan_weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___plan_weg]  DEFAULT ('') FOR [plan_weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___matb_weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___matb_weg]  DEFAULT ('') FOR [matb_weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___levb_weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___levb_weg]  DEFAULT ('') FOR [levb_weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___ofk__weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___ofk__weg]  DEFAULT ('') FOR [ofk__weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___res__weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___res__weg]  DEFAULT ('') FOR [res__weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___hfl__weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___hfl__weg]  DEFAULT ('') FOR [hfl__weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___wkb__weg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___wkb__weg]  DEFAULT ('') FOR [wkb__weg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___groepeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___groepeer]  DEFAULT ('') FOR [groepeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___oplag_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___oplag_vm]  DEFAULT ((0)) FOR [oplag_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___oplag_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___oplag_bm]  DEFAULT ((0)) FOR [oplag_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___oplag_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___oplag_om]  DEFAULT ((0)) FOR [oplag_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___extra_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___extra_vm]  DEFAULT ((0)) FOR [extra_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___extra_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___extra_bm]  DEFAULT ((0)) FOR [extra_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___extra_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___extra_om]  DEFAULT ((0)) FOR [extra_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___omsaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___omsaant_]  DEFAULT ('') FOR [omsaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___oplagtxt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___oplagtxt]  DEFAULT ('') FOR [oplagtxt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___extratxt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___extratxt]  DEFAULT ('') FOR [extratxt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fknp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fknp_ref]  DEFAULT ('') FOR [fknp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fmd__ref]  DEFAULT ('') FOR [fmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fac__typ]  DEFAULT ('') FOR [fac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fac__wyz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fac__wyz]  DEFAULT ('') FOR [fac__wyz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n1______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n1______]  DEFAULT ((0)) FOR [n1______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n2______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n2______]  DEFAULT ((0)) FOR [n2______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n3______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n3______]  DEFAULT ((0)) FOR [n3______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n4______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n4______]  DEFAULT ((0)) FOR [n4______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n5______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n5______]  DEFAULT ((0)) FOR [n5______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n6______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n6______]  DEFAULT ((0)) FOR [n6______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n7______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n7______]  DEFAULT ((0)) FOR [n7______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n8______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n8______]  DEFAULT ((0)) FOR [n8______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n9______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n9______]  DEFAULT ((0)) FOR [n9______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n10_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n10_____]  DEFAULT ((0)) FOR [n10_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n11_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n11_____]  DEFAULT ((0)) FOR [n11_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n12_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n12_____]  DEFAULT ((0)) FOR [n12_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n13_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n13_____]  DEFAULT ((0)) FOR [n13_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n14_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n14_____]  DEFAULT ((0)) FOR [n14_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n15_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n15_____]  DEFAULT ((0)) FOR [n15_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___n16_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___n16_____]  DEFAULT ((0)) FOR [n16_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dat01___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dat01___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat01___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dat02___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dat02___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat02___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dat03___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dat03___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat03___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dat04___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dat04___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat04___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dat05___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dat05___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat05___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___open____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___open____]  DEFAULT ('') FOR [open____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___dat_open]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___dat_open]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_open]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___annul___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___annul___]  DEFAULT ('') FOR [annul___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___datannul]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___datannul]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datannul]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___jobnrher]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___jobnrher]  DEFAULT ('') FOR [jobnrher]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___jobnrvdl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___jobnrvdl]  DEFAULT ('') FOR [jobnrvdl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fin___ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fin___ok]  DEFAULT ('') FOR [fin___ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fin__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fin__com]  DEFAULT ('') FOR [fin__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fin__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fin__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fin__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___fin__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___fin__usr]  DEFAULT ('') FOR [fin__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___kred_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___kred_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [kred_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___opvolgen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___opvolgen]  DEFAULT ('') FOR [opvolgen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval11]  DEFAULT ('') FOR [tstval11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval12]  DEFAULT ('') FOR [tstval12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval13]  DEFAULT ('') FOR [tstval13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval14]  DEFAULT ('') FOR [tstval14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval15]  DEFAULT ('') FOR [tstval15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval16]  DEFAULT ('') FOR [tstval16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval17]  DEFAULT ('') FOR [tstval17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval18]  DEFAULT ('') FOR [tstval18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval19]  DEFAULT ('') FOR [tstval19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___tstval20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___tstval20]  DEFAULT ('') FOR [tstval20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_01]  DEFAULT ('') FOR [vraag_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_02]  DEFAULT ('') FOR [vraag_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_03]  DEFAULT ('') FOR [vraag_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_04]  DEFAULT ('') FOR [vraag_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_05]  DEFAULT ('') FOR [vraag_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_06]  DEFAULT ('') FOR [vraag_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_07]  DEFAULT ('') FOR [vraag_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_08]  DEFAULT ('') FOR [vraag_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_09]  DEFAULT ('') FOR [vraag_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___vraag_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___vraag_10]  DEFAULT ('') FOR [vraag_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__01]  DEFAULT ('') FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__02]  DEFAULT ('') FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__03]  DEFAULT ('') FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__04]  DEFAULT ('') FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__05]  DEFAULT ('') FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__06]  DEFAULT ('') FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__07]  DEFAULT ('') FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__08]  DEFAULT ('') FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__09]  DEFAULT ('') FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__10]  DEFAULT ('') FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__11]  DEFAULT ('') FOR [antw__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__12]  DEFAULT ('') FOR [antw__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__13]  DEFAULT ('') FOR [antw__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__14]  DEFAULT ('') FOR [antw__14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__15]  DEFAULT ('') FOR [antw__15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__16]  DEFAULT ('') FOR [antw__16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__17]  DEFAULT ('') FOR [antw__17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__18]  DEFAULT ('') FOR [antw__18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__19]  DEFAULT ('') FOR [antw__19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__20]  DEFAULT ('') FOR [antw__20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__21]  DEFAULT ('') FOR [antw__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__22]  DEFAULT ('') FOR [antw__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__23]  DEFAULT ('') FOR [antw__23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__24]  DEFAULT ('') FOR [antw__24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__25]  DEFAULT ('') FOR [antw__25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__26]  DEFAULT ('') FOR [antw__26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__27]  DEFAULT ('') FOR [antw__27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__28]  DEFAULT ('') FOR [antw__28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__29]  DEFAULT ('') FOR [antw__29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___antw__30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___antw__30]  DEFAULT ('') FOR [antw__30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___flok_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___flok_ref]  DEFAULT ('') FOR [flok_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___flknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___flknpref]  DEFAULT ('') FOR [flknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_order___goed_lev_manueel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[order___] ADD  CONSTRAINT [DF_order___goed_lev_manueel]  DEFAULT ((0)) FOR [goed_lev_manueel]
END

