SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[planpl_efficiency_gain__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[planpl_efficiency_gain__](
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[efficiency_gain_id] [int] NOT NULL,
	[type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[keyname] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[comparison_operator] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[efficiency_gain] [bigint] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [planpl_efficiency_gaini1] PRIMARY KEY CLUSTERED 
(
	[efficiency_gain_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[planpl_efficiency_gain__]') AND name = N'planpl_efficiency_gaini0')
CREATE UNIQUE NONCLUSTERED INDEX [planpl_efficiency_gaini0] ON [dbo].[planpl_efficiency_gain__]
(
	[plpl_ref] ASC,
	[keyname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__efficiency_gain_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__efficiency_gain_id]  DEFAULT ((0)) FOR [efficiency_gain_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__type]  DEFAULT ('') FOR [type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__keyname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__keyname]  DEFAULT ('') FOR [keyname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__comparison_operator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__comparison_operator]  DEFAULT ('') FOR [comparison_operator]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__efficiency_gain]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__efficiency_gain]  DEFAULT ((0)) FOR [efficiency_gain]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_efficiency_gain__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_efficiency_gain__] ADD  CONSTRAINT [DF_planpl_efficiency_gain__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

