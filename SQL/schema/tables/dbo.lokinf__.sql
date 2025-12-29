SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lokinf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lokinf__](
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[letop___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exclude_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___01] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___02] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___03] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___04] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___05] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___06] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___07] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___08] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___09] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___10] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___11] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[inf___12] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [lokinfi1] PRIMARY KEY CLUSTERED 
(
	[lok__ref] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__rcl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__rcl__ref]  DEFAULT ('') FOR [rcl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__letop___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__letop___]  DEFAULT ('') FOR [letop___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__exclude_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__exclude_]  DEFAULT ('') FOR [exclude_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___01]  DEFAULT ('') FOR [inf___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___02]  DEFAULT ('') FOR [inf___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___03]  DEFAULT ('') FOR [inf___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___04]  DEFAULT ('') FOR [inf___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___05]  DEFAULT ('') FOR [inf___05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___06]  DEFAULT ('') FOR [inf___06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___07]  DEFAULT ('') FOR [inf___07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___08]  DEFAULT ('') FOR [inf___08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___09]  DEFAULT ('') FOR [inf___09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___10]  DEFAULT ('') FOR [inf___10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___11]  DEFAULT ('') FOR [inf___11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_lokinf__inf___12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lokinf__] ADD  CONSTRAINT [DF_lokinf__inf___12]  DEFAULT ('') FOR [inf___12]
END

