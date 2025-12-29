SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plncat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plncat__](
	[cat__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___6] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___7] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___8] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl___9] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__10] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__11] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__12] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__13] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__14] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__15] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__16] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__17] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__18] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__19] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__20] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__21] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__22] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__23] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__24] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__25] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__26] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__27] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__28] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__29] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl__30] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[toonlijn] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_pcat] PRIMARY KEY CLUSTERED 
(
	[cat__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__cat__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__cat__ref]  DEFAULT ('') FOR [cat__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___1]  DEFAULT ('') FOR [plpl___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___2]  DEFAULT ('') FOR [plpl___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___3]  DEFAULT ('') FOR [plpl___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___4]  DEFAULT ('') FOR [plpl___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___5]  DEFAULT ('') FOR [plpl___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___6]  DEFAULT ('') FOR [plpl___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___7]  DEFAULT ('') FOR [plpl___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___8]  DEFAULT ('') FOR [plpl___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl___9]  DEFAULT ('') FOR [plpl___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__10]  DEFAULT ('') FOR [plpl__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__11]  DEFAULT ('') FOR [plpl__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__12]  DEFAULT ('') FOR [plpl__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__13]  DEFAULT ('') FOR [plpl__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__14]  DEFAULT ('') FOR [plpl__14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__15]  DEFAULT ('') FOR [plpl__15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__16]  DEFAULT ('') FOR [plpl__16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__17]  DEFAULT ('') FOR [plpl__17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__18]  DEFAULT ('') FOR [plpl__18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__19]  DEFAULT ('') FOR [plpl__19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__20]  DEFAULT ('') FOR [plpl__20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__21]  DEFAULT ('') FOR [plpl__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__22]  DEFAULT ('') FOR [plpl__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__23]  DEFAULT ('') FOR [plpl__23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__24]  DEFAULT ('') FOR [plpl__24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__25]  DEFAULT ('') FOR [plpl__25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__26]  DEFAULT ('') FOR [plpl__26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__27]  DEFAULT ('') FOR [plpl__27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__28]  DEFAULT ('') FOR [plpl__28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__29]  DEFAULT ('') FOR [plpl__29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__plpl__30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__plpl__30]  DEFAULT ('') FOR [plpl__30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plncat__toonlijn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plncat__] ADD  CONSTRAINT [DF_plncat__toonlijn]  DEFAULT ((0)) FOR [toonlijn]
END

