SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[links___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[links___](
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_up] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tab__ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[path____] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[filename] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[params__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pfl__ref] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [links__0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[links___]') AND name = N'links__1')
CREATE NONCLUSTERED INDEX [links__1] ON [dbo].[links___]
(
	[tabname_] ASC,
	[tab__ref] ASC,
	[type____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___start_up]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___start_up]  DEFAULT ('') FOR [start_up]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___tab__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___tab__ref]  DEFAULT ('') FOR [tab__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___path____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___path____]  DEFAULT ('') FOR [path____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___filename]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___filename]  DEFAULT ('') FOR [filename]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___params__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___params__]  DEFAULT ('') FOR [params__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___pfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___pfl__ref]  DEFAULT ('') FOR [pfl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_links___type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[links___] ADD  CONSTRAINT [DF_links___type____]  DEFAULT ('') FOR [type____]
END

