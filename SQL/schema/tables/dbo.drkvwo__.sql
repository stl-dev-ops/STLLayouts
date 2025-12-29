SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkvwo__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkvwo__](
	[vwo__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rotated_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[keervorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[imp__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[poses__x] [int] NOT NULL,
	[poses__y] [int] NOT NULL,
	[orient__] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkvwoi0] PRIMARY KEY CLUSTERED 
(
	[vwo__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__vwo__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__vwo__ref]  DEFAULT ('') FOR [vwo__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__rotated_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__rotated_]  DEFAULT ('') FOR [rotated_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__keervorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__keervorm]  DEFAULT ('') FOR [keervorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__imp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__imp__ref]  DEFAULT ('') FOR [imp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__poses__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__poses__x]  DEFAULT ((0)) FOR [poses__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__poses__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__poses__y]  DEFAULT ((0)) FOR [poses__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__orient__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__orient__]  DEFAULT ('') FOR [orient__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwo__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwo__] ADD  CONSTRAINT [DF_drkvwo__default_]  DEFAULT ('') FOR [default_]
END

