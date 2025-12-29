SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hlpreg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hlpreg__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arthdref] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__beg] [date] NOT NULL,
	[uur__beg] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__end] [date] NOT NULL,
	[uur__end] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hlpregi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hlpreg__]') AND name = N'hlpregi1')
CREATE NONCLUSTERED INDEX [hlpregi1] ON [dbo].[hlpreg__]
(
	[arthdref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hlpreg__]') AND name = N'hlpregi2')
CREATE NONCLUSTERED INDEX [hlpregi2] ON [dbo].[hlpreg__]
(
	[arth_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hlpreg__]') AND name = N'hlpregi3')
CREATE NONCLUSTERED INDEX [hlpregi3] ON [dbo].[hlpreg__]
(
	[ord__ref] ASC,
	[wp___ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__arth_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__arth_srt]  DEFAULT ('') FOR [arth_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__arthdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__arthdref]  DEFAULT ('') FOR [arthdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__toestand]  DEFAULT ('1') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__dat__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__dat__beg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__uur__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__uur__beg]  DEFAULT ('') FOR [uur__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__dat__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__dat__end]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__uur__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__uur__end]  DEFAULT ('') FOR [uur__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlpreg__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlpreg__] ADD  CONSTRAINT [DF_hlpreg__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

