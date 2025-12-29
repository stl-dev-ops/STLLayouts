SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprsst__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprsst__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[spdinv__] [float] NOT NULL,
	[volgnr__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[stap____] [float] NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprssti2] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[eprsst__]') AND name = N'eprssti5')
CREATE NONCLUSTERED INDEX [eprssti5] ON [dbo].[eprsst__]
(
	[prs__ref] ASC,
	[soort___] ASC,
	[stap____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsst__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsst__] ADD  CONSTRAINT [DF_eprsst__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsst__spdinv__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsst__] ADD  CONSTRAINT [DF_eprsst__spdinv__]  DEFAULT ((0)) FOR [spdinv__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsst__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsst__] ADD  CONSTRAINT [DF_eprsst__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsst__stap____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsst__] ADD  CONSTRAINT [DF_eprsst__stap____]  DEFAULT ((0)) FOR [stap____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsst__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsst__] ADD  CONSTRAINT [DF_eprsst__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprsst__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprsst__] ADD  CONSTRAINT [DF_eprsst__komment_]  DEFAULT ('') FOR [komment_]
END

