SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgpry__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgpry__](
	[soort___] [int] NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs2_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[f_aantal] [float] NOT NULL,
	[vrrkprys] [float] NOT NULL,
	[bedrag__] [float] NOT NULL,
	[aant_tof] [float] NOT NULL,
	[bedr_tof] [float] NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgpryi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgpry__]') AND name = N'afgpryi1')
CREATE NONCLUSTERED INDEX [afgpryi1] ON [dbo].[afgpry__]
(
	[afg__ref] ASC,
	[ord__ref] ASC,
	[vrs__ref] ASC,
	[levr_vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgpry__]') AND name = N'afgpryi2')
CREATE NONCLUSTERED INDEX [afgpryi2] ON [dbo].[afgpry__]
(
	[lyn__ref] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgpry__]') AND name = N'afgpryi3')
CREATE NONCLUSTERED INDEX [afgpryi3] ON [dbo].[afgpry__]
(
	[ord__ref] ASC,
	[soort___] ASC,
	[vrs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__soort___]  DEFAULT ((0)) FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__ord2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__ord2_ref]  DEFAULT ('') FOR [ord2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__vrs2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__vrs2_ref]  DEFAULT ('') FOR [vrs2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__uur_____]  DEFAULT (' 0:00') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__f_aantal]  DEFAULT ((0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__vrrkprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__vrrkprys]  DEFAULT ((0)) FOR [vrrkprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__aant_tof]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__aant_tof]  DEFAULT ((0)) FOR [aant_tof]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__bedr_tof]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__bedr_tof]  DEFAULT ((0)) FOR [bedr_tof]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgpry__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgpry__] ADD  CONSTRAINT [DF_afgpry__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

