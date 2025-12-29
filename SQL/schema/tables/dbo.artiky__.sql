SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artiky__](
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_vrrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__pry] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gramm___] [float] NOT NULL,
	[lengte__] [float] NOT NULL,
	[breedte_] [float] NOT NULL,
	[hoogte__] [float] NOT NULL,
	[lengte__out] [float] NOT NULL,
	[breedte_out] [float] NOT NULL,
	[hoogte__out] [float] NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fsc__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[diktemic] [float] NOT NULL,
	[dikte___] [float] NOT NULL,
	[diameter] [float] NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitg_dat] [date] NOT NULL,
	[detailyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stklyst_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inventyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kontrole] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bom__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokatie_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__pl] [int] NOT NULL,
	[klas_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stoc_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[min_stoc] [float] NOT NULL,
	[max_stoc] [float] NOT NULL,
	[pak__oms] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__inh] [float] NOT NULL,
	[as___gew] [int] NOT NULL,
	[vast_gew] [float] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__bst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nkp__det] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nkp__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prc__akp] [float] NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[markt___] [float] NOT NULL,
	[katalo_1] [float] NOT NULL,
	[katalo_2] [float] NOT NULL,
	[katalo_3] [float] NOT NULL,
	[katalo_4] [float] NOT NULL,
	[katalo_5] [float] NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_up] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kat__srt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[titel___] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[kominfmx] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[zoekkrit] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[afroep__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__trm] [int] NOT NULL,
	[best_trm] [int] NOT NULL,
	[bcrerek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcrerek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek7] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek8] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[reslaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ficlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[etilaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[grm__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_code] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[markt_vs] [float] NOT NULL,
	[std__bre] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrm_d] [int] NOT NULL,
	[levtrm_u] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[digmedrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[basisbre] [float] NOT NULL,
	[basislen] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[kolom_6a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_productie] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [artiky_x] PRIMARY KEY CLUSTERED 
(
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_c')
CREATE NONCLUSTERED INDEX [artiky_c] ON [dbo].[artiky__]
(
	[artc_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_d')
CREATE NONCLUSTERED INDEX [artiky_d] ON [dbo].[artiky__]
(
	[drg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_g')
CREATE NONCLUSTERED INDEX [artiky_g] ON [dbo].[artiky__]
(
	[pap__ref] ASC,
	[grammage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_o')
CREATE NONCLUSTERED INDEX [artiky_o] ON [dbo].[artiky__]
(
	[art__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_p')
CREATE NONCLUSTERED INDEX [artiky_p] ON [dbo].[artiky__]
(
	[lev__ref] ASC,
	[zyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_q')
CREATE NONCLUSTERED INDEX [artiky_q] ON [dbo].[artiky__]
(
	[art__pry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_s')
CREATE NONCLUSTERED INDEX [artiky_s] ON [dbo].[artiky__]
(
	[stklyst_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_u')
CREATE NONCLUSTERED INDEX [artiky_u] ON [dbo].[artiky__]
(
	[uitgeput] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_v')
CREATE NONCLUSTERED INDEX [artiky_v] ON [dbo].[artiky__]
(
	[art_vrrd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_y')
CREATE UNIQUE NONCLUSTERED INDEX [artiky_y] ON [dbo].[artiky__]
(
	[art__rpn] ASC,
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artiky__]') AND name = N'artiky_z')
CREATE NONCLUSTERED INDEX [artiky_z] ON [dbo].[artiky__]
(
	[rbk__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art_vrrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art_vrrd]  DEFAULT ('Y') FOR [art_vrrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art__pry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art__pry]  DEFAULT ('N') FOR [art__pry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__artc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__artc_ref]  DEFAULT ('') FOR [artc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art_oms2]  DEFAULT ('') FOR [art_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__grammage]  DEFAULT ('') FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__gramm___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__gramm___]  DEFAULT ((0)) FOR [gramm___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__lengte__]  DEFAULT ((0)) FOR [lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__hoogte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__hoogte__]  DEFAULT ((0)) FOR [hoogte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__lengte__out]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__lengte__out]  DEFAULT ((0)) FOR [lengte__out]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__breedte_out]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__breedte_out]  DEFAULT ((0)) FOR [breedte_out]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__hoogte__out]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__hoogte__out]  DEFAULT ((0)) FOR [hoogte__out]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__looprich]  DEFAULT ('1') FOR [looprich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__fsc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__fsc__ref]  DEFAULT ('') FOR [fsc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__diktemic]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__diktemic]  DEFAULT ((0)) FOR [diktemic]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__dikte___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__dikte___]  DEFAULT ((0)) FOR [dikte___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__diameter]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__diameter]  DEFAULT ((0)) FOR [diameter]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__uitgeput]  DEFAULT ('N') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__uitg_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__uitg_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [uitg_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__detailyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__detailyn]  DEFAULT ('Y') FOR [detailyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__stklyst_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__stklyst_]  DEFAULT ('Y') FOR [stklyst_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__inventyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__inventyn]  DEFAULT ('Y') FOR [inventyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kontrole]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kontrole]  DEFAULT ('Y') FOR [kontrole]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__bom__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__bom__srt]  DEFAULT ('') FOR [bom__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__lokatie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__lokatie_]  DEFAULT ('') FOR [lokatie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__aant__pl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__aant__pl]  DEFAULT ((1)) FOR [aant__pl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__klas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__klas_ref]  DEFAULT ('') FOR [klas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__stoc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__stoc_ref]  DEFAULT ('') FOR [stoc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__min_stoc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__min_stoc]  DEFAULT ((0)) FOR [min_stoc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__max_stoc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__max_stoc]  DEFAULT ((0)) FOR [max_stoc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__pak__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__pak__oms]  DEFAULT ('') FOR [pak__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__pak__inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__pak__inh]  DEFAULT ((1)) FOR [pak__inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__as___gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__as___gew]  DEFAULT ((0)) FOR [as___gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__vast_gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__vast_gew]  DEFAULT ((0)) FOR [vast_gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__art__bst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__art__bst]  DEFAULT ('Y') FOR [art__bst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__nkp__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__nkp__det]  DEFAULT ('1') FOR [nkp__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__nkp__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__nkp__srt]  DEFAULT ('1') FOR [nkp__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__prc__akp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__prc__akp]  DEFAULT ((0)) FOR [prc__akp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__akpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__akpr_ref]  DEFAULT ('') FOR [akpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__markt___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__markt___]  DEFAULT ((0)) FOR [markt___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__katalo_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__katalo_1]  DEFAULT ((0)) FOR [katalo_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__katalo_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__katalo_2]  DEFAULT ((0)) FOR [katalo_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__katalo_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__katalo_3]  DEFAULT ((0)) FOR [katalo_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__katalo_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__katalo_4]  DEFAULT ((0)) FOR [katalo_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__katalo_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__katalo_5]  DEFAULT ((0)) FOR [katalo_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__jobnr_up]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__jobnr_up]  DEFAULT ('') FOR [jobnr_up]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kat__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kat__srt]  DEFAULT ('') FOR [kat__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__titel___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__titel___]  DEFAULT ('') FOR [titel___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kominfmx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kominfmx]  DEFAULT ('') FOR [kominfmx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__zoekkrit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__zoekkrit]  DEFAULT ('') FOR [zoekkrit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__afroep__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__afroep__]  DEFAULT ('N') FOR [afroep__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__lev__trm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__lev__trm]  DEFAULT ((0)) FOR [lev__trm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__best_trm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__best_trm]  DEFAULT ((0)) FOR [best_trm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__bcrerek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__bcrerek1]  DEFAULT ('') FOR [bcrerek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__bcrerek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__bcrerek2]  DEFAULT ('') FOR [bcrerek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__bdebrek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__bdebrek1]  DEFAULT ('') FOR [bdebrek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__bdebrek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__bdebrek2]  DEFAULT ('') FOR [bdebrek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__bdebrek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__bdebrek3]  DEFAULT ('') FOR [bdebrek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__bdebrek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__bdebrek4]  DEFAULT ('') FOR [bdebrek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek1]  DEFAULT ('') FOR [kst_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek2]  DEFAULT ('') FOR [kst_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek3]  DEFAULT ('') FOR [kst_rek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek4]  DEFAULT ('') FOR [kst_rek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek5]  DEFAULT ('') FOR [kst_rek5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek6]  DEFAULT ('') FOR [kst_rek6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek7]  DEFAULT ('') FOR [kst_rek7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kst_rek8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kst_rek8]  DEFAULT ('') FOR [kst_rek8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__reslaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__reslaynr]  DEFAULT ('11') FOR [reslaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__ficlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__ficlaynr]  DEFAULT ('11') FOR [ficlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__etilaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__etilaynr]  DEFAULT ('01') FOR [etilaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__grm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__grm__ref]  DEFAULT ('') FOR [grm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__btw_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__btw_code]  DEFAULT ('') FOR [btw_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__markt_vs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__markt_vs]  DEFAULT ((0)) FOR [markt_vs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__std__bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__std__bre]  DEFAULT ('N') FOR [std__bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__levtrm_d]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__levtrm_d]  DEFAULT ((0)) FOR [levtrm_d]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__levtrm_u]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__levtrm_u]  DEFAULT ('  0:00') FOR [levtrm_u]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__digmedrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__digmedrf]  DEFAULT ('') FOR [digmedrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__basisbre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__basisbre]  DEFAULT ((0)) FOR [basisbre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__basislen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__basislen]  DEFAULT ((0)) FOR [basislen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kolom_6a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kolom_6a]  DEFAULT ('') FOR [kolom_6a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artiky__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artiky__] ADD  CONSTRAINT [DF_artiky__land_productie]  DEFAULT ('') FOR [land_productie]
END

