SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_MiniCohesioCard]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_MiniCohesioCard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Date] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinishedMatNo] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[PressSpeed] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_MiniCohesioCard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_MiniCohesioCard]') AND name = N'IX_stlCC_MiniCohesioCard_ord__ref')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlCC_MiniCohesioCard_ord__ref] ON [dbo].[stlCC_MiniCohesioCard]
(
	[ord__ref] ASC
)
INCLUDE([Date],[FinishedMatNo],[PressSpeed],[Notes],[Deleted],[Created],[CreatedBy],[Updated],[UpdatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_MiniCohesioCard_FinishedMatNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_MiniCohesioCard] ADD  CONSTRAINT [DF_stlCC_MiniCohesioCard_FinishedMatNo]  DEFAULT ('') FOR [FinishedMatNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_MiniCohesioCard_PressSpeed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_MiniCohesioCard] ADD  CONSTRAINT [DF_stlCC_MiniCohesioCard_PressSpeed]  DEFAULT ('') FOR [PressSpeed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_MiniCohesioCard_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_MiniCohesioCard] ADD  CONSTRAINT [DF_stlCC_MiniCohesioCard_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_MiniCohesioCard_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_MiniCohesioCard] ADD  CONSTRAINT [DF_stlCC_MiniCohesioCard_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_MiniCohesioCard_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_MiniCohesioCard] ADD  CONSTRAINT [DF_stlCC_MiniCohesioCard_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_MiniCohesioCard_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_MiniCohesioCard] ADD  CONSTRAINT [DF_stlCC_MiniCohesioCard_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_MiniCohesioCard_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_MiniCohesioCard] ADD  CONSTRAINT [DF_stlCC_MiniCohesioCard_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

