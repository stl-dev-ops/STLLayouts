SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arthld__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arthld__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arthdref] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[teller__] [int] NOT NULL,
	[tellermx] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[zynreflv] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [arthldi0] PRIMARY KEY CLUSTERED 
(
	[arthdref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arthld__]') AND name = N'arthldi1')
CREATE NONCLUSTERED INDEX [arthldi1] ON [dbo].[arthld__]
(
	[arth_ref] ASC,
	[uitgeput] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arthld__]') AND name = N'arthldi2')
CREATE NONCLUSTERED INDEX [arthldi2] ON [dbo].[arthld__]
(
	[uitgeput] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__arth_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__arth_srt]  DEFAULT ('') FOR [arth_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__arthdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__arthdref]  DEFAULT ('') FOR [arthdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__uitgeput]  DEFAULT ('N') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__teller__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__teller__]  DEFAULT ((0)) FOR [teller__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__tellermx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__tellermx]  DEFAULT ((0)) FOR [tellermx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__zynreflv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__zynreflv]  DEFAULT ('') FOR [zynreflv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__comment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__comment1]  DEFAULT ('') FOR [comment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__comment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__comment2]  DEFAULT ('') FOR [comment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__comment3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__comment3]  DEFAULT ('') FOR [comment3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthld__comment4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthld__] ADD  CONSTRAINT [DF_arthld__comment4]  DEFAULT ('') FOR [comment4]
END

