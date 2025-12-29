SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prdlyn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prdlyn__](
	[prdlnref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[pldv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs_refs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__beg] [date] NOT NULL,
	[uur__beg] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__end] [date] NOT NULL,
	[uur__end] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_plc] [float] NOT NULL,
	[rol__plc] [float] NOT NULL,
	[beg_telr] [int] NOT NULL,
	[end_telr] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prdlyni1] PRIMARY KEY CLUSTERED 
(
	[prdlnref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[prdlyn__]') AND name = N'prdlyni2')
CREATE NONCLUSTERED INDEX [prdlyni2] ON [dbo].[prdlyn__]
(
	[wp___ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[prdlyn__]') AND name = N'prdlyni3')
CREATE NONCLUSTERED INDEX [prdlyni3] ON [dbo].[prdlyn__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__prdlnref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__prdlnref]  DEFAULT ('') FOR [prdlnref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__pldv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__pldv_ref]  DEFAULT ('') FOR [pldv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__dat__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__dat__beg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__uur__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__uur__beg]  DEFAULT ('') FOR [uur__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__dat__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__dat__end]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__uur__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__uur__end]  DEFAULT ('') FOR [uur__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__duur____]  DEFAULT ('') FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__aant_plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__aant_plc]  DEFAULT ((0)) FOR [aant_plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__rol__plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__rol__plc]  DEFAULT ((0)) FOR [rol__plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__beg_telr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__beg_telr]  DEFAULT ((0)) FOR [beg_telr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdlyn__end_telr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdlyn__] ADD  CONSTRAINT [DF_prdlyn__end_telr]  DEFAULT ((0)) FOR [end_telr]
END

