SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_rsb2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_rsb2__](
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_stock] [float] NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_bew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klas_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_rsb2i1] PRIMARY KEY CLUSTERED 
(
	[volgnr__] ASC,
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_rsb2__]') AND name = N'w_rsb2i2')
CREATE UNIQUE NONCLUSTERED INDEX [w_rsb2i2] ON [dbo].[w_rsb2__]
(
	[vaks_ref] ASC,
	[volgnr__] ASC,
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__type_bew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__type_bew]  DEFAULT ('') FOR [type_bew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__klas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__klas_ref]  DEFAULT ('') FOR [klas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_rsb2__vaks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_rsb2__] ADD  CONSTRAINT [DF_w_rsb2__vaks_ref]  DEFAULT ('') FOR [vaks_ref]
END

