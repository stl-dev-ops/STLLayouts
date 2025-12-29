SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arhbew__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arhbew__](
	[identify] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arthdref] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_old] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_new] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktief__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__old] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__new] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [arhbewi0] PRIMARY KEY CLUSTERED 
(
	[identify] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arhbew__]') AND name = N'arth_id1')
CREATE NONCLUSTERED INDEX [arth_id1] ON [dbo].[arhbew__]
(
	[arth_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arhbew__]') AND name = N'arth_id2')
CREATE NONCLUSTERED INDEX [arth_id2] ON [dbo].[arhbew__]
(
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__identify]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__identify]  DEFAULT ('') FOR [identify]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__arth_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__arth_srt]  DEFAULT ('') FOR [arth_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__arthdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__arthdref]  DEFAULT ('') FOR [arthdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__stat_old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__stat_old]  DEFAULT ('') FOR [stat_old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__stat_new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__stat_new]  DEFAULT ('') FOR [stat_new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__aktief__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__aktief__]  DEFAULT ('') FOR [aktief__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__vak__old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__vak__old]  DEFAULT ('') FOR [vak__old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__vak__new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__vak__new]  DEFAULT ('') FOR [vak__new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arhbew__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arhbew__] ADD  CONSTRAINT [DF_arhbew__komment_]  DEFAULT ('') FOR [komment_]
END

