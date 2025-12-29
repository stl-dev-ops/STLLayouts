SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4kmat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4kmat__](
	[mat__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwm_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr__vast] [float] NOT NULL,
	[mat__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[arth_tmp] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [v4kmati4] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4kmat__]') AND name = N'v4kmati1')
CREATE NONCLUSTERED INDEX [v4kmati1] ON [dbo].[v4kmat__]
(
	[mat__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4kmat__]') AND name = N'v4kmati2')
CREATE NONCLUSTERED INDEX [v4kmati2] ON [dbo].[v4kmat__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4kmat__]') AND name = N'v4kmati3')
CREATE NONCLUSTERED INDEX [v4kmati3] ON [dbo].[v4kmat__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__mat__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__mat__ref]  DEFAULT ('') FOR [mat__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__afwm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__afwm_ref]  DEFAULT ('') FOR [afwm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__pr__vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__pr__vast]  DEFAULT ((0)) FOR [pr__vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__mat__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__mat__tst]  DEFAULT ('') FOR [mat__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kmat__arth_tmp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kmat__] ADD  CONSTRAINT [DF_v4kmat__arth_tmp]  DEFAULT ('') FOR [arth_tmp]
END

