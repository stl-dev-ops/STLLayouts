SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stad____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stad____](
	[stad_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokalite] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[county__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vryezone] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_pct] [float] NOT NULL,
	[stat_rpt] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[cnty_pct] [float] NOT NULL,
	[cnty_rpt] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[city_pct] [float] NOT NULL,
	[city_rpt] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[spld_pct] [float] NOT NULL,
	[spld_rpt] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[ship_tax] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cnty_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[city_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[spld_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stad__i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stad____]') AND name = N'stad__i1')
CREATE NONCLUSTERED INDEX [stad__i1] ON [dbo].[stad____]
(
	[land_ref] ASC,
	[post_ref] ASC,
	[lokalite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stad____]') AND name = N'stad__i2')
CREATE NONCLUSTERED INDEX [stad__i2] ON [dbo].[stad____]
(
	[post_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____stad_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____stad_ref]  DEFAULT ('') FOR [stad_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____lokalite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____lokalite]  DEFAULT ('') FOR [lokalite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____vryezone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____vryezone]  DEFAULT ('') FOR [vryezone]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____stat_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____stat_pct]  DEFAULT ((0)) FOR [stat_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____stat_rpt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____stat_rpt]  DEFAULT ('') FOR [stat_rpt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____cnty_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____cnty_pct]  DEFAULT ((0)) FOR [cnty_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____cnty_rpt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____cnty_rpt]  DEFAULT ('') FOR [cnty_rpt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____city_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____city_pct]  DEFAULT ((0)) FOR [city_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____city_rpt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____city_rpt]  DEFAULT ('') FOR [city_rpt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____spld_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____spld_pct]  DEFAULT ((0)) FOR [spld_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____spld_rpt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____spld_rpt]  DEFAULT ('') FOR [spld_rpt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____ship_tax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____ship_tax]  DEFAULT ('') FOR [ship_tax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____stat_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____stat_rek]  DEFAULT ('') FOR [stat_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____cnty_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____cnty_rek]  DEFAULT ('') FOR [cnty_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____city_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____city_rek]  DEFAULT ('') FOR [city_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____spld_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____spld_rek]  DEFAULT ('') FOR [spld_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stad____cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stad____] ADD  CONSTRAINT [DF_stad____cde___ap]  DEFAULT ('') FOR [cde___ap]
END

