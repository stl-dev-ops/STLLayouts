SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_bgl2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_bgl2__](
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[besteld_] [float] NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_bew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klas_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pallevid] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[validdat] [date] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_bgl2i0] PRIMARY KEY CLUSTERED 
(
	[levr_vnr] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_bgl2__]') AND name = N'w_bgl2i1')
CREATE NONCLUSTERED INDEX [w_bgl2i1] ON [dbo].[w_bgl2__]
(
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__artd_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__artd_vnr]  DEFAULT ('') FOR [artd_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__besteld_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__besteld_]  DEFAULT ((0)) FOR [besteld_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__type_bew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__type_bew]  DEFAULT ('') FOR [type_bew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__klas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__klas_ref]  DEFAULT ('') FOR [klas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__vaks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__vaks_ref]  DEFAULT ('') FOR [vaks_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__pallevid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__pallevid]  DEFAULT ('') FOR [pallevid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bgl2__validdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bgl2__] ADD  CONSTRAINT [DF_w_bgl2__validdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [validdat]
END

