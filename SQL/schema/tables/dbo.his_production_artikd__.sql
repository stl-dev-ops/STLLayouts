SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[his_production_artikd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[his_production_artikd__](
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_stock] [float] NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[validdat] [date] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[plc__beg] [float] NOT NULL,
	[plc__end] [float] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [his_production_artikdi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[his_production_artikd__]') AND name = N'his_production_artikdi1')
CREATE NONCLUSTERED INDEX [his_production_artikdi1] ON [dbo].[his_production_artikd__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[his_production_artikd__]') AND name = N'his_production_artikdi2')
CREATE NONCLUSTERED INDEX [his_production_artikdi2] ON [dbo].[his_production_artikd__]
(
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[his_production_artikd__]') AND name = N'his_production_artikdi3')
CREATE NONCLUSTERED INDEX [his_production_artikdi3] ON [dbo].[his_production_artikd__]
(
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[his_production_artikd__]') AND name = N'his_production_artikdi4')
CREATE NONCLUSTERED INDEX [his_production_artikdi4] ON [dbo].[his_production_artikd__]
(
	[zyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__validdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__validdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [validdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__plc__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__plc__beg]  DEFAULT ((0)) FOR [plc__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__plc__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__plc__end]  DEFAULT ((0)) FOR [plc__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_his_production_artikd__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[his_production_artikd__] ADD  CONSTRAINT [DF_his_production_artikd__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

