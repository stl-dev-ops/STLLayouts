SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[matbpb__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[matbpb__](
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mat__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [matbpbi0] PRIMARY KEY CLUSTERED 
(
	[res__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[matbpb__]') AND name = N'matbpbi1')
CREATE NONCLUSTERED INDEX [matbpbi1] ON [dbo].[matbpb__]
(
	[artd_ref] ASC,
	[res__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__mat__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__mat__ref]  DEFAULT ('') FOR [mat__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__res__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__res__ref]  DEFAULT ('') FOR [res__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__vaks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__vaks_ref]  DEFAULT ('') FOR [vaks_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_matbpb__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[matbpb__] ADD  CONSTRAINT [DF_matbpb__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

