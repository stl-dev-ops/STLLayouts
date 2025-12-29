SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kpos__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kpos__](
	[pos__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[coord__x] [int] NOT NULL,
	[coord__y] [int] NOT NULL,
	[pose____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pose_opl] [int] NOT NULL,
	[poseaant] [int] NOT NULL,
	[pag_aant] [int] NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sec__vnr] [int] NOT NULL,
	[index_up] [int] NOT NULL,
	[indexdam] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[vrs__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [v2kposi1] PRIMARY KEY CLUSTERED 
(
	[pos__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kpos__]') AND name = N'v2kposi2')
CREATE NONCLUSTERED INDEX [v2kposi2] ON [dbo].[v2kpos__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kpos__]') AND name = N'v2kposi3')
CREATE NONCLUSTERED INDEX [v2kposi3] ON [dbo].[v2kpos__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__pos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__pos__ref]  DEFAULT ('') FOR [pos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__coord__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__coord__x]  DEFAULT ((0)) FOR [coord__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__coord__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__coord__y]  DEFAULT ((0)) FOR [coord__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__pose____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__pose____]  DEFAULT ('') FOR [pose____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__dam__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__dam__ref]  DEFAULT ('') FOR [dam__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__pose_opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__pose_opl]  DEFAULT ((0)) FOR [pose_opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__poseaant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__poseaant]  DEFAULT ((0)) FOR [poseaant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__pag_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__pag_aant]  DEFAULT ((0)) FOR [pag_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__sec__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__sec__vnr]  DEFAULT ((0)) FOR [sec__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__index_up]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__index_up]  DEFAULT ((0)) FOR [index_up]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__indexdam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__indexdam]  DEFAULT ((0)) FOR [indexdam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kpos__vrs__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kpos__] ADD  CONSTRAINT [DF_v2kpos__vrs__typ]  DEFAULT ('') FOR [vrs__typ]
END

