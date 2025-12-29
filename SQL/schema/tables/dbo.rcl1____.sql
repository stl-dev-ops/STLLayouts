SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rcl1____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rcl1____](
	[rcl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl__rpn] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl__prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___01] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___02] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___03] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___04] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___05] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___06] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___07] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___08] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___09] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___10] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___11] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rcl___12] [nvarchar](75) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [rcl1__i1] PRIMARY KEY CLUSTERED 
(
	[rcl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl__ref]  DEFAULT ('') FOR [rcl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl__srt]  DEFAULT ('') FOR [rcl__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl__rpn]  DEFAULT ('') FOR [rcl__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl__prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl__prd]  DEFAULT ('') FOR [rcl__prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___01]  DEFAULT ('') FOR [rcl___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___02]  DEFAULT ('') FOR [rcl___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___03]  DEFAULT ('') FOR [rcl___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___04]  DEFAULT ('') FOR [rcl___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___05]  DEFAULT ('') FOR [rcl___05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___06]  DEFAULT ('') FOR [rcl___06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___07]  DEFAULT ('') FOR [rcl___07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___08]  DEFAULT ('') FOR [rcl___08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___09]  DEFAULT ('') FOR [rcl___09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___10]  DEFAULT ('') FOR [rcl___10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___11]  DEFAULT ('') FOR [rcl___11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rcl1____rcl___12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rcl1____] ADD  CONSTRAINT [DF_rcl1____rcl___12]  DEFAULT ('') FOR [rcl___12]
END

