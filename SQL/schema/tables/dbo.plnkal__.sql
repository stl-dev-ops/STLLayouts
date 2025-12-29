SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plnkal__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plnkal__](
	[kal__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jaar_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnd__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___01] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___02] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___03] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___04] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___05] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___06] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___07] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___08] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___09] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___10] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___13] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___14] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___15] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___16] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___17] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___18] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___19] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___20] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___21] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___22] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___23] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___24] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___25] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___26] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___27] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___28] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___29] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___30] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dag___31] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plnkali0] PRIMARY KEY CLUSTERED 
(
	[kal__ref] ASC,
	[jaar_ref] ASC,
	[mnd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plnkal__]') AND name = N'id1_plkl')
CREATE NONCLUSTERED INDEX [id1_plkl] ON [dbo].[plnkal__]
(
	[jaar_ref] ASC,
	[mnd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__kal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__kal__ref]  DEFAULT ('') FOR [kal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__jaar_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__jaar_ref]  DEFAULT ('') FOR [jaar_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__mnd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__mnd__ref]  DEFAULT ('') FOR [mnd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___01]  DEFAULT ('') FOR [dag___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___02]  DEFAULT ('') FOR [dag___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___03]  DEFAULT ('') FOR [dag___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___04]  DEFAULT ('') FOR [dag___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___05]  DEFAULT ('') FOR [dag___05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___06]  DEFAULT ('') FOR [dag___06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___07]  DEFAULT ('') FOR [dag___07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___08]  DEFAULT ('') FOR [dag___08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___09]  DEFAULT ('') FOR [dag___09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___10]  DEFAULT ('') FOR [dag___10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___11]  DEFAULT ('') FOR [dag___11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___12]  DEFAULT ('') FOR [dag___12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___13]  DEFAULT ('') FOR [dag___13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___14]  DEFAULT ('') FOR [dag___14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___15]  DEFAULT ('') FOR [dag___15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___16]  DEFAULT ('') FOR [dag___16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___17]  DEFAULT ('') FOR [dag___17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___18]  DEFAULT ('') FOR [dag___18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___19]  DEFAULT ('') FOR [dag___19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___20]  DEFAULT ('') FOR [dag___20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___21]  DEFAULT ('') FOR [dag___21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___22]  DEFAULT ('') FOR [dag___22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___23]  DEFAULT ('') FOR [dag___23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___24]  DEFAULT ('') FOR [dag___24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___25]  DEFAULT ('') FOR [dag___25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___26]  DEFAULT ('') FOR [dag___26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___27]  DEFAULT ('') FOR [dag___27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___28]  DEFAULT ('') FOR [dag___28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___29]  DEFAULT ('') FOR [dag___29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___30]  DEFAULT ('') FOR [dag___30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plnkal__dag___31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plnkal__] ADD  CONSTRAINT [DF_plnkal__dag___31]  DEFAULT ('') FOR [dag___31]
END

