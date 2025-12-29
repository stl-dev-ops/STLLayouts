SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[besbon__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[besbon__](
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[compl___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[offerte_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordered_] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bs___dat] [date] NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[bswrkoms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[v4_workstep_id] [int] NULL,
	[v4_production_flow_id] [int] NULL,
	[uw_ref__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[offa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opprdbon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat__ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_dat] [date] NOT NULL,
	[fiat_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_usr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_num] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fromus__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[televdat] [date] NOT NULL,
	[televuur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trspltyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok_srtl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok_refl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levloc1l] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[levloc2l] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[levloc3l] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[landrefl] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[postrefl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[knploc_l] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsplref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsplrpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsplgew] [float] NOT NULL,
	[trsplcom] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[aaant___] [float] NOT NULL,
	[aaant_pk] [float] NOT NULL,
	[aaant_pl] [float] NOT NULL,
	[aanl_dat] [date] NOT NULL,
	[aanl_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fromyou_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[glev_dat] [date] NOT NULL,
	[glev_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[glevodat] [date] NOT NULL,
	[glevouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplocrf] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_gew] [float] NOT NULL,
	[trsp_com] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[ontv_dat] [date] NOT NULL,
	[ontv_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laant_pk] [float] NOT NULL,
	[laant_pl] [float] NOT NULL,
	[gaant___] [float] NOT NULL,
	[faant___] [float] NOT NULL,
	[laant___] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[pr_form_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[forf__vm] [float] NOT NULL,
	[forf__bm] [float] NOT NULL,
	[forf__om] [float] NOT NULL,
	[preen_vm] [float] NOT NULL,
	[preen_bm] [float] NOT NULL,
	[preen_om] [float] NOT NULL,
	[vrz___vm] [float] NOT NULL,
	[vrz___bm] [float] NOT NULL,
	[wd___ptn] [float] NOT NULL,
	[wd___vtn] [float] NOT NULL,
	[prform_m] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[forfvm_m] [float] NOT NULL,
	[forfbm_m] [float] NOT NULL,
	[forfom_m] [float] NOT NULL,
	[preenvmm] [float] NOT NULL,
	[preenbmm] [float] NOT NULL,
	[preenomm] [float] NOT NULL,
	[proc___m] [float] NOT NULL,
	[vastbm_m] [float] NOT NULL,
	[ord__kst] [float] NOT NULL,
	[prof__vm] [float] NOT NULL,
	[prof__bm] [float] NOT NULL,
	[prof__om] [float] NOT NULL,
	[onvto_vm] [float] NOT NULL,
	[onvto_bm] [float] NOT NULL,
	[onvto_om] [float] NOT NULL,
	[onvto2vm] [float] NOT NULL,
	[onvto2bm] [float] NOT NULL,
	[onvto2om] [float] NOT NULL,
	[prof_2vm] [float] NOT NULL,
	[prof_2bm] [float] NOT NULL,
	[prof_2om] [float] NOT NULL,
	[prof_3vm] [float] NOT NULL,
	[prof_3bm] [float] NOT NULL,
	[prof_3om] [float] NOT NULL,
	[prjct_pr] [float] NOT NULL,
	[lev1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev4_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev5_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev4_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev5_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev4_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev5_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1__pr] [float] NOT NULL,
	[lev2__pr] [float] NOT NULL,
	[lev3__pr] [float] NOT NULL,
	[lev4__pr] [float] NOT NULL,
	[lev5__pr] [float] NOT NULL,
	[lev1__pe] [float] NOT NULL,
	[lev2__pe] [float] NOT NULL,
	[lev3__pe] [float] NOT NULL,
	[lev4__pe] [float] NOT NULL,
	[lev5__pe] [float] NOT NULL,
	[lev1__nm] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2__nm] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3__nm] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[verantw1] [nvarchar](70) COLLATE Latin1_General_CI_AS NOT NULL,
	[verantw2] [nvarchar](70) COLLATE Latin1_General_CI_AS NOT NULL,
	[verantw3] [nvarchar](70) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [bsbonidx] PRIMARY KEY CLUSTERED 
(
	[bsbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[besbon__]') AND name = N'besboni5')
CREATE NONCLUSTERED INDEX [besboni5] ON [dbo].[besbon__]
(
	[arth_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[besbon__]') AND name = N'bsbonid2')
CREATE NONCLUSTERED INDEX [bsbonid2] ON [dbo].[besbon__]
(
	[offerte_] ASC,
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[besbon__]') AND name = N'bsbonid3')
CREATE NONCLUSTERED INDEX [bsbonid3] ON [dbo].[besbon__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[besbon__]') AND name = N'bsbonid4')
CREATE NONCLUSTERED INDEX [bsbonid4] ON [dbo].[besbon__]
(
	[bon__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__compl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__compl___]  DEFAULT ('1') FOR [compl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__offerte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__offerte_]  DEFAULT ('1') FOR [offerte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1_tst]  DEFAULT ('1') FOR [lev1_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2_tst]  DEFAULT ('1') FOR [lev2_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__ord__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__ord__tst]  DEFAULT ('1') FOR [ord__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fac__tst]  DEFAULT ('1') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__ordered_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__ordered_]  DEFAULT ('') FOR [ordered_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__bs___dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__bs___dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [bs___dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__bswrkoms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__bswrkoms]  DEFAULT ('') FOR [bswrkoms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__uw_ref__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__uw_ref__]  DEFAULT ('') FOR [uw_ref__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__offa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__offa_ref]  DEFAULT ('') FOR [offa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__produktf]  DEFAULT ('0') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__opprdbon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__opprdbon]  DEFAULT ('Y') FOR [opprdbon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fiat__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fiat__ok]  DEFAULT ('0') FOR [fiat__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fiat_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fiat_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fiat_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fiat_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fiat_uur]  DEFAULT ('  0:00') FOR [fiat_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fiat_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fiat_usr]  DEFAULT ('') FOR [fiat_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fiat_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fiat_com]  DEFAULT ('') FOR [fiat_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fiat_num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fiat_num]  DEFAULT ('') FOR [fiat_num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1_srt]  DEFAULT ('2') FOR [lev1_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fromus__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fromus__]  DEFAULT ('') FOR [fromus__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__televdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__televdat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [televdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__televuur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__televuur]  DEFAULT ('  0:00') FOR [televuur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trspltyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trspltyp]  DEFAULT ('1') FOR [trspltyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lok_srtl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lok_srtl]  DEFAULT ('3') FOR [lok_srtl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lok_refl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lok_refl]  DEFAULT ('') FOR [lok_refl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__levloc1l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__levloc1l]  DEFAULT ('') FOR [levloc1l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__levloc2l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__levloc2l]  DEFAULT ('') FOR [levloc2l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__levloc3l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__levloc3l]  DEFAULT ('') FOR [levloc3l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__landrefl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__landrefl]  DEFAULT ('') FOR [landrefl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__postrefl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__postrefl]  DEFAULT ('') FOR [postrefl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__knploc_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__knploc_l]  DEFAULT ('') FOR [knploc_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsplref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsplref]  DEFAULT ('') FOR [trsplref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsplrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsplrpn]  DEFAULT ('') FOR [trsplrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsplgew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsplgew]  DEFAULT ((0)) FOR [trsplgew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsplcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsplcom]  DEFAULT ('') FOR [trsplcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aaant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aaant___]  DEFAULT ((0)) FOR [aaant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aaant_pk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aaant_pk]  DEFAULT ((0)) FOR [aaant_pk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aaant_pl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aaant_pl]  DEFAULT ((0)) FOR [aaant_pl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aanl_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aanl_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [aanl_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aanl_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aanl_uur]  DEFAULT ('  0:00') FOR [aanl_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2_srt]  DEFAULT ('2') FOR [lev2_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__fromyou_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__fromyou_]  DEFAULT ('') FOR [fromyou_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__glev_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__glev_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [glev_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__glev_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__glev_uur]  DEFAULT ('  0:00') FOR [glev_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__glevodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__glevodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glevodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__glevouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__glevouur]  DEFAULT ('  0:00') FOR [glevouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsp_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsp_typ]  DEFAULT ('1') FOR [trsp_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lok__srt]  DEFAULT ('3') FOR [lok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev_loc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev_loc1]  DEFAULT ('') FOR [lev_loc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev_loc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev_loc2]  DEFAULT ('') FOR [lev_loc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev_loc3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev_loc3]  DEFAULT ('') FOR [lev_loc3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__knplocrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__knplocrf]  DEFAULT ('') FOR [knplocrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsp_ref]  DEFAULT ('') FOR [trsp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsp_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsp_rpn]  DEFAULT ('') FOR [trsp_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsp_gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsp_gew]  DEFAULT ((0)) FOR [trsp_gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__trsp_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__trsp_com]  DEFAULT ('') FOR [trsp_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__ontv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__ontv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ontv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__ontv_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__ontv_uur]  DEFAULT ('  0:00') FOR [ontv_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__laant_pk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__laant_pk]  DEFAULT ((0)) FOR [laant_pk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__laant_pl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__laant_pl]  DEFAULT ((0)) FOR [laant_pl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__gaant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__gaant___]  DEFAULT ((0)) FOR [gaant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__laant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__laant___]  DEFAULT ((0)) FOR [laant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__aant_dec]  DEFAULT ((2)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__koers___]  DEFAULT ((1)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__pr_form_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__pr_form_]  DEFAULT ('') FOR [pr_form_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__forf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__forf__vm]  DEFAULT ((0)) FOR [forf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__forf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__forf__bm]  DEFAULT ((0)) FOR [forf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__forf__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__forf__om]  DEFAULT ((0)) FOR [forf__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__preen_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__preen_vm]  DEFAULT ((0)) FOR [preen_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__preen_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__preen_bm]  DEFAULT ((0)) FOR [preen_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__preen_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__preen_om]  DEFAULT ((0)) FOR [preen_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__vrz___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__vrz___vm]  DEFAULT ((0)) FOR [vrz___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__vrz___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__vrz___bm]  DEFAULT ((0)) FOR [vrz___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__wd___ptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__wd___ptn]  DEFAULT ((0)) FOR [wd___ptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__wd___vtn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__wd___vtn]  DEFAULT ((0)) FOR [wd___vtn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prform_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prform_m]  DEFAULT ('0') FOR [prform_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__forfvm_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__forfvm_m]  DEFAULT ((0)) FOR [forfvm_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__forfbm_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__forfbm_m]  DEFAULT ((0)) FOR [forfbm_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__forfom_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__forfom_m]  DEFAULT ((0)) FOR [forfom_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__preenvmm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__preenvmm]  DEFAULT ((0)) FOR [preenvmm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__preenbmm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__preenbmm]  DEFAULT ((0)) FOR [preenbmm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__preenomm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__preenomm]  DEFAULT ((0)) FOR [preenomm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__proc___m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__proc___m]  DEFAULT ((0)) FOR [proc___m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__vastbm_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__vastbm_m]  DEFAULT ((0)) FOR [vastbm_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__ord__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__ord__kst]  DEFAULT ((0)) FOR [ord__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof__vm]  DEFAULT ((0)) FOR [prof__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof__bm]  DEFAULT ((0)) FOR [prof__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof__om]  DEFAULT ((0)) FOR [prof__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__onvto_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__onvto_vm]  DEFAULT ((0)) FOR [onvto_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__onvto_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__onvto_bm]  DEFAULT ((0)) FOR [onvto_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__onvto_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__onvto_om]  DEFAULT ((0)) FOR [onvto_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__onvto2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__onvto2vm]  DEFAULT ((0)) FOR [onvto2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__onvto2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__onvto2bm]  DEFAULT ((0)) FOR [onvto2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__onvto2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__onvto2om]  DEFAULT ((0)) FOR [onvto2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof_2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof_2vm]  DEFAULT ((0)) FOR [prof_2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof_2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof_2bm]  DEFAULT ((0)) FOR [prof_2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof_2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof_2om]  DEFAULT ((0)) FOR [prof_2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof_3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof_3vm]  DEFAULT ((0)) FOR [prof_3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof_3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof_3bm]  DEFAULT ((0)) FOR [prof_3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prof_3om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prof_3om]  DEFAULT ((0)) FOR [prof_3om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__prjct_pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__prjct_pr]  DEFAULT ((0)) FOR [prjct_pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1_ref]  DEFAULT ('') FOR [lev1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2_ref]  DEFAULT ('') FOR [lev2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev3_ref]  DEFAULT ('') FOR [lev3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev4_ref]  DEFAULT ('') FOR [lev4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev5_ref]  DEFAULT ('') FOR [lev5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1_knp]  DEFAULT ('') FOR [lev1_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2_knp]  DEFAULT ('') FOR [lev2_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev3_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev3_knp]  DEFAULT ('') FOR [lev3_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev4_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev4_knp]  DEFAULT ('') FOR [lev4_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev5_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev5_knp]  DEFAULT ('') FOR [lev5_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1_kom]  DEFAULT ('') FOR [lev1_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2_kom]  DEFAULT ('') FOR [lev2_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev3_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev3_kom]  DEFAULT ('') FOR [lev3_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev4_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev4_kom]  DEFAULT ('') FOR [lev4_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev5_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev5_kom]  DEFAULT ('') FOR [lev5_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1__pr]  DEFAULT ((0)) FOR [lev1__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2__pr]  DEFAULT ((0)) FOR [lev2__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev3__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev3__pr]  DEFAULT ((0)) FOR [lev3__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev4__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev4__pr]  DEFAULT ((0)) FOR [lev4__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev5__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev5__pr]  DEFAULT ((0)) FOR [lev5__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1__pe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1__pe]  DEFAULT ((0)) FOR [lev1__pe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2__pe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2__pe]  DEFAULT ((0)) FOR [lev2__pe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev3__pe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev3__pe]  DEFAULT ((0)) FOR [lev3__pe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev4__pe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev4__pe]  DEFAULT ((0)) FOR [lev4__pe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev5__pe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev5__pe]  DEFAULT ((0)) FOR [lev5__pe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev1__nm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev1__nm]  DEFAULT ('') FOR [lev1__nm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev2__nm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev2__nm]  DEFAULT ('') FOR [lev2__nm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__lev3__nm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__lev3__nm]  DEFAULT ('') FOR [lev3__nm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__verantw1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__verantw1]  DEFAULT ('') FOR [verantw1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__verantw2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__verantw2]  DEFAULT ('') FOR [verantw2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__verantw3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__verantw3]  DEFAULT ('') FOR [verantw3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__edi__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__edi__tst]  DEFAULT ('0') FOR [edi__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval11]  DEFAULT ('') FOR [tstval11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval12]  DEFAULT ('') FOR [tstval12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval13]  DEFAULT ('') FOR [tstval13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval14]  DEFAULT ('') FOR [tstval14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval15]  DEFAULT ('') FOR [tstval15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval16]  DEFAULT ('') FOR [tstval16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval17]  DEFAULT ('') FOR [tstval17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval18]  DEFAULT ('') FOR [tstval18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval19]  DEFAULT ('') FOR [tstval19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_besbon__tstval20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[besbon__] ADD  CONSTRAINT [DF_besbon__tstval20]  DEFAULT ('') FOR [tstval20]
END

