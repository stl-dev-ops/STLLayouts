SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3epos__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3epos__](
	[pos__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[coord__x] [int] NOT NULL,
	[coord__y] [int] NOT NULL,
	[lane____] [int] NOT NULL,
	[pose_opl] [int] NOT NULL,
	[vrs__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bld__rot] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v3eposi0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[pos__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__pos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__pos__ref]  DEFAULT ('') FOR [pos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__coord__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__coord__x]  DEFAULT ((0)) FOR [coord__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__coord__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__coord__y]  DEFAULT ((0)) FOR [coord__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__lane____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__lane____]  DEFAULT ((0)) FOR [lane____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__pose_opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__pose_opl]  DEFAULT ((0)) FOR [pose_opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3epos__bld__rot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3epos__] ADD  CONSTRAINT [DF_v3epos__bld__rot]  DEFAULT ('') FOR [bld__rot]
END

