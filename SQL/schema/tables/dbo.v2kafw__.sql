SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kafw__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kafw__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw_line] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw_zyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_vrb] [float] NOT NULL,
	[afwm_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[automat_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2kafwi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kafw__]') AND name = N'v2kafwi2')
CREATE NONCLUSTERED INDEX [v2kafwi2] ON [dbo].[v2kafw__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kafw__]') AND name = N'v2kafwi3')
CREATE NONCLUSTERED INDEX [v2kafwi3] ON [dbo].[v2kafw__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afw__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afw__vnr]  DEFAULT ('') FOR [afw__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afwp_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afwp_srt]  DEFAULT ('') FOR [afwp_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afw_line]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afw_line]  DEFAULT ('') FOR [afw_line]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afw_zyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afw_zyde]  DEFAULT ('') FOR [afw_zyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afwg_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afwg_vrb]  DEFAULT ((0)) FOR [afwg_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__afwm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__afwm_ref]  DEFAULT ('') FOR [afwm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kafw__automat_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kafw__] ADD  CONSTRAINT [DF_v2kafw__automat_]  DEFAULT ('') FOR [automat_]
END

