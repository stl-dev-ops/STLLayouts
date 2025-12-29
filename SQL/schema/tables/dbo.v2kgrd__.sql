SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kgrd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kgrd__](
	[grd__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[line____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](13) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg___b] [float] NOT NULL,
	[afwg___l] [float] NOT NULL,
	[afwg_ins] [float] NOT NULL,
	[vrb___m2] [float] NOT NULL,
	[vrb2__m2] [float] NOT NULL,
	[vrb3__m2] [float] NOT NULL,
	[vrb___kg] [float] NOT NULL,
	[vrb2__kg] [float] NOT NULL,
	[vrb3__kg] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2kgrdi1] PRIMARY KEY CLUSTERED 
(
	[det__ref] ASC,
	[grd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kgrd__]') AND name = N'v2kgrdi2')
CREATE NONCLUSTERED INDEX [v2kgrdi2] ON [dbo].[v2kgrd__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kgrd__]') AND name = N'v2kgrdi3')
CREATE NONCLUSTERED INDEX [v2kgrdi3] ON [dbo].[v2kgrd__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__grd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__grd__ref]  DEFAULT ('') FOR [grd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__line____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__line____]  DEFAULT ('') FOR [line____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__afwg___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__afwg___b]  DEFAULT ((0)) FOR [afwg___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__afwg___l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__afwg___l]  DEFAULT ((0)) FOR [afwg___l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__afwg_ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__afwg_ins]  DEFAULT ((0)) FOR [afwg_ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__vrb___m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__vrb___m2]  DEFAULT ((0)) FOR [vrb___m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__vrb2__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__vrb2__m2]  DEFAULT ((0)) FOR [vrb2__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__vrb3__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__vrb3__m2]  DEFAULT ((0)) FOR [vrb3__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__vrb___kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__vrb___kg]  DEFAULT ((0)) FOR [vrb___kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__vrb2__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__vrb2__kg]  DEFAULT ((0)) FOR [vrb2__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kgrd__vrb3__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kgrd__] ADD  CONSTRAINT [DF_v2kgrd__vrb3__kg]  DEFAULT ((0)) FOR [vrb3__kg]
END

