SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plcrol__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plcrol__](
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__beg] [date] NOT NULL,
	[uur__beg] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dt___beg] [datetime2](3) NOT NULL,
	[dat__end] [date] NOT NULL,
	[uur__end] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dt___end] [datetime2](3) NOT NULL,
	[aantal__] [float] NOT NULL,
	[aantlmok] [float] NOT NULL,
	[aantexok] [float] NOT NULL,
	[plc__beg] [float] NOT NULL,
	[plc__end] [float] NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[vrs_refs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plcroli0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcrol__]') AND name = N'plcroli1')
CREATE NONCLUSTERED INDEX [plcroli1] ON [dbo].[plcrol__]
(
	[wp___ref] ASC,
	[toestand] ASC,
	[artd_ref] ASC,
	[hlf__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcrol__]') AND name = N'plcroli2')
CREATE NONCLUSTERED INDEX [plcroli2] ON [dbo].[plcrol__]
(
	[kpn__ref] ASC,
	[wp___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcrol__]') AND name = N'plcroli3')
CREATE NONCLUSTERED INDEX [plcroli3] ON [dbo].[plcrol__]
(
	[ord__ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcrol__]') AND name = N'plcroli4')
CREATE NONCLUSTERED INDEX [plcroli4] ON [dbo].[plcrol__]
(
	[wp___ref] ASC,
	[dat__beg] ASC,
	[dat__end] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcrol__]') AND name = N'plcroli5')
CREATE NONCLUSTERED INDEX [plcroli5] ON [dbo].[plcrol__]
(
	[wp___ref] ASC,
	[ord__ref] ASC,
	[kpn__ref] ASC,
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__dat__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__dat__beg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__uur__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__uur__beg]  DEFAULT ('') FOR [uur__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__dt___beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__dt___beg]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [dt___beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__dat__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__dat__end]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__uur__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__uur__end]  DEFAULT ('') FOR [uur__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__dt___end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__dt___end]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [dt___end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__aantlmok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__aantlmok]  DEFAULT ((0)) FOR [aantlmok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__aantexok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__aantexok]  DEFAULT ((0)) FOR [aantexok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__plc__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__plc__beg]  DEFAULT ((0)) FOR [plc__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__plc__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__plc__end]  DEFAULT ((0)) FOR [plc__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcrol__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcrol__] ADD  CONSTRAINT [DF_plcrol__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

