SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgsku__](
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[printed_lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [int] NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[crea_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku_source] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku_target] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_repack] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__ex] [float] NOT NULL,
	[vpk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpksrt__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[box__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd_dat] [date] NOT NULL,
	[vrrd_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__pos] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd__wn] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit__dat] [date] NOT NULL,
	[uit__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit__usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_uit] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__dat] [date] NOT NULL,
	[lev__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__qrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komm_qrt] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud01] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud02] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud03] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud04] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[inhoud_flt01] [float] NOT NULL,
	[inhoud_flt02] [float] NOT NULL,
	[inhoud_flt03] [float] NOT NULL,
	[inhoud_flt04] [float] NOT NULL,
	[weight] [float] NOT NULL,
	[smpl__ex] [int] NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen__] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[crea_ori] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_defect] [float] NOT NULL,
	[vrrd_dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd_lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [afgskui0] PRIMARY KEY CLUSTERED 
(
	[sku__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui1')
CREATE NONCLUSTERED INDEX [afgskui1] ON [dbo].[afgsku__]
(
	[afg__ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui2')
CREATE NONCLUSTERED INDEX [afgskui2] ON [dbo].[afgsku__]
(
	[afg__ref] ASC,
	[ord__ref] ASC,
	[vrs__ref] ASC,
	[levr_vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui3')
CREATE NONCLUSTERED INDEX [afgskui3] ON [dbo].[afgsku__]
(
	[box__ref] ASC,
	[toestand] ASC,
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui4')
CREATE NONCLUSTERED INDEX [afgskui4] ON [dbo].[afgsku__]
(
	[lyn__ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui5')
CREATE NONCLUSTERED INDEX [afgskui5] ON [dbo].[afgsku__]
(
	[pal__ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui6')
CREATE NONCLUSTERED INDEX [afgskui6] ON [dbo].[afgsku__]
(
	[ord__ref] ASC,
	[toestand] ASC,
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui7')
CREATE NONCLUSTERED INDEX [afgskui7] ON [dbo].[afgsku__]
(
	[vak__ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsku__]') AND name = N'afgskui8')
CREATE NONCLUSTERED INDEX [afgskui8] ON [dbo].[afgsku__]
(
	[toestand] ASC,
	[ord2_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__printed_lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__printed_lyn__ref]  DEFAULT ('') FOR [printed_lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__ord2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__ord2_ref]  DEFAULT ('') FOR [ord2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__volgnr__]  DEFAULT ((0)) FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__toestand]  DEFAULT ('0') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__crea_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__crea_uur]  DEFAULT ('  0:00') FOR [crea_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__sku_source]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__sku_source]  DEFAULT ('') FOR [sku_source]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__sku_target]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__sku_target]  DEFAULT ('') FOR [sku_target]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__jobnr_repack]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__jobnr_repack]  DEFAULT ('') FOR [jobnr_repack]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__aant__ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__aant__ex]  DEFAULT ((0)) FOR [aant__ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vpk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vpk__ref]  DEFAULT ('') FOR [vpk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vpksrt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vpksrt__]  DEFAULT ('1') FOR [vpksrt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__box__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__box__ref]  DEFAULT ('') FOR [box__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrrd_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrrd_dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [vrrd_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrrd_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrrd_uur]  DEFAULT ('  0:00') FOR [vrrd_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__hlf__pos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__hlf__pos]  DEFAULT ('') FOR [hlf__pos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrrd_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrrd_usr]  DEFAULT ('') FOR [vrrd_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrrd__wn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrrd__wn]  DEFAULT ('') FOR [vrrd__wn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__uit__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__uit__dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [uit__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__uit__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__uit__uur]  DEFAULT ('  0:00') FOR [uit__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__uit__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__uit__usr]  DEFAULT ('') FOR [uit__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__jobnr_uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__jobnr_uit]  DEFAULT ('') FOR [jobnr_uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__lev__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__lev__dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [lev__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__lev__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__lev__uur]  DEFAULT ('  0:00') FOR [lev__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tst__qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tst__qrt]  DEFAULT ('1') FOR [tst__qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__komm_qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__komm_qrt]  DEFAULT ('') FOR [komm_qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud01]  DEFAULT ('') FOR [inhoud01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud02]  DEFAULT ('') FOR [inhoud02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud03]  DEFAULT ('') FOR [inhoud03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud04]  DEFAULT ('') FOR [inhoud04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud_flt01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud_flt01]  DEFAULT ((0)) FOR [inhoud_flt01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud_flt02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud_flt02]  DEFAULT ((0)) FOR [inhoud_flt02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud_flt03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud_flt03]  DEFAULT ((0)) FOR [inhoud_flt03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__inhoud_flt04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__inhoud_flt04]  DEFAULT ((0)) FOR [inhoud_flt04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__weight]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__weight]  DEFAULT ((0)) FOR [weight]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__smpl__ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__smpl__ex]  DEFAULT ((0)) FOR [smpl__ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__kommen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__kommen__]  DEFAULT ('') FOR [kommen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__crea_ori]  DEFAULT ('') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__aant_defect]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__aant_defect]  DEFAULT ((0)) FOR [aant_defect]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrrd_dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrrd_dos__ref]  DEFAULT ('') FOR [vrrd_dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsku__vrrd_lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsku__] ADD  CONSTRAINT [DF_afgsku__vrrd_lyn__ref]  DEFAULT ('') FOR [vrrd_lyn__ref]
END

