SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4kdia__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4kdia__](
	[dg___ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dga__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[toren_af] [int] NOT NULL,
	[drukunit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw_zyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp__ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_vrb] [float] NOT NULL,
	[afwg_opv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb___m2] [float] NOT NULL,
	[vrb2__m2] [float] NOT NULL,
	[vrb3__m2] [float] NOT NULL,
	[vrb___kg] [float] NOT NULL,
	[vrb2__kg] [float] NOT NULL,
	[vrb3__kg] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v4kdiai1] PRIMARY KEY CLUSTERED 
(
	[dg___ref] ASC,
	[dga__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4kdia__]') AND name = N'v4kdiai2')
CREATE NONCLUSTERED INDEX [v4kdiai2] ON [dbo].[v4kdia__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4kdia__]') AND name = N'v4kdiai3')
CREATE NONCLUSTERED INDEX [v4kdiai3] ON [dbo].[v4kdia__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__dga__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__dga__ref]  DEFAULT ('') FOR [dga__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__toren_af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__toren_af]  DEFAULT ((0)) FOR [toren_af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__drukunit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__drukunit]  DEFAULT ('') FOR [drukunit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afwp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afwp_ref]  DEFAULT ('') FOR [afwp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afw__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afw__oms]  DEFAULT ('') FOR [afw__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afw_zyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afw_zyde]  DEFAULT ('') FOR [afw_zyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afwp__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afwp__ok]  DEFAULT ('') FOR [afwp__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afwg_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afwg_vrb]  DEFAULT ((0)) FOR [afwg_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__afwg_opv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__afwg_opv]  DEFAULT ('') FOR [afwg_opv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__vrb___m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__vrb___m2]  DEFAULT ((0)) FOR [vrb___m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__vrb2__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__vrb2__m2]  DEFAULT ((0)) FOR [vrb2__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__vrb3__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__vrb3__m2]  DEFAULT ((0)) FOR [vrb3__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__vrb___kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__vrb___kg]  DEFAULT ((0)) FOR [vrb___kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__vrb2__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__vrb2__kg]  DEFAULT ((0)) FOR [vrb2__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdia__vrb3__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdia__] ADD  CONSTRAINT [DF_v4kdia__vrb3__kg]  DEFAULT ((0)) FOR [vrb3__kg]
END

