SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[papfmt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[papfmt__](
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [float] NOT NULL,
	[breedte_] [float] NOT NULL,
	[lengte__] [float] NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [papfmti1] PRIMARY KEY CLUSTERED 
(
	[pap__srt] ASC,
	[pap__ref] ASC,
	[fmt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[papfmt__]') AND name = N'papfmti2')
CREATE NONCLUSTERED INDEX [papfmti2] ON [dbo].[papfmt__]
(
	[pap__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papfmt__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papfmt__] ADD  CONSTRAINT [DF_papfmt__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papfmt__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papfmt__] ADD  CONSTRAINT [DF_papfmt__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papfmt__fmt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papfmt__] ADD  CONSTRAINT [DF_papfmt__fmt__ref]  DEFAULT ('') FOR [fmt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papfmt__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papfmt__] ADD  CONSTRAINT [DF_papfmt__grammage]  DEFAULT ((0)) FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papfmt__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papfmt__] ADD  CONSTRAINT [DF_papfmt__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papfmt__lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papfmt__] ADD  CONSTRAINT [DF_papfmt__lengte__]  DEFAULT ((0)) FOR [lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papfmt__looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papfmt__] ADD  CONSTRAINT [DF_papfmt__looprich]  DEFAULT ('') FOR [looprich]
END

