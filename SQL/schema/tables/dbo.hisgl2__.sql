SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisgl2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisgl2__](
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__sku] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[besteld_] [float] NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[pallevid] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_trg] [float] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[validdat] [date] NOT NULL,
	[vls_fact] [float] NOT NULL,
	[joins___] [int] NOT NULL,
	[core____] [float] NOT NULL,
	[face____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hgl2_id0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisgl2__]') AND name = N'hgl2_id1')
CREATE NONCLUSTERED INDEX [hgl2_id1] ON [dbo].[hisgl2__]
(
	[levr_vnr] ASC,
	[art__ref] ASC,
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisgl2__]') AND name = N'hgl2_id2')
CREATE NONCLUSTERED INDEX [hgl2_id2] ON [dbo].[hisgl2__]
(
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisgl2__]') AND name = N'hgl2_id3')
CREATE NONCLUSTERED INDEX [hgl2_id3] ON [dbo].[hisgl2__]
(
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisgl2__]') AND name = N'hgl2_id4')
CREATE NONCLUSTERED INDEX [hgl2_id4] ON [dbo].[hisgl2__]
(
	[zyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__lev__sku]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__lev__sku]  DEFAULT ('') FOR [lev__sku]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__besteld_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__besteld_]  DEFAULT ((0)) FOR [besteld_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__pallevid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__pallevid]  DEFAULT ('') FOR [pallevid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__aant_trg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__aant_trg]  DEFAULT ((0)) FOR [aant_trg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__validdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__validdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [validdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__vls_fact]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__vls_fact]  DEFAULT ((0)) FOR [vls_fact]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__joins___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__joins___]  DEFAULT ((0)) FOR [joins___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__core____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__core____]  DEFAULT ((0)) FOR [core____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgl2__face____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgl2__] ADD  CONSTRAINT [DF_hisgl2__face____]  DEFAULT ('') FOR [face____]
END

