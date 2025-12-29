SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pertfk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pertfk__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__typ] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrag__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pertfki0] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pertfk__]') AND name = N'pertfki1')
CREATE NONCLUSTERED INDEX [pertfki1] ON [dbo].[pertfk__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__fac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__fac__typ]  DEFAULT ('') FOR [fac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__fac__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__fac__srt]  DEFAULT ('') FOR [fac__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertfk__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertfk__] ADD  CONSTRAINT [DF_pertfk__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

