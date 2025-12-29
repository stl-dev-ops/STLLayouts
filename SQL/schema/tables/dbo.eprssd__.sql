SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprssd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[eprssd__](
	[prssdref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typfrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[spdinv__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [eprssdi0] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[prssdref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[eprssd__]') AND name = N'eprssdi1')
CREATE NONCLUSTERED INDEX [eprssdi1] ON [dbo].[eprssd__]
(
	[prs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprssd__prssdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprssd__] ADD  CONSTRAINT [DF_eprssd__prssdref]  DEFAULT ('') FOR [prssdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprssd__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprssd__] ADD  CONSTRAINT [DF_eprssd__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprssd__eti_vorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprssd__] ADD  CONSTRAINT [DF_eprssd__eti_vorm]  DEFAULT ('') FOR [eti_vorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprssd__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprssd__] ADD  CONSTRAINT [DF_eprssd__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprssd__typfrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprssd__] ADD  CONSTRAINT [DF_eprssd__typfrref]  DEFAULT ('') FOR [typfrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_eprssd__spdinv__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[eprssd__] ADD  CONSTRAINT [DF_eprssd__spdinv__]  DEFAULT ((0)) FOR [spdinv__]
END

