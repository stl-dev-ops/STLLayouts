SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[britag__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[britag__](
	[btg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[progtag_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv___by] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ondtel__] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvolger] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [britagi0] PRIMARY KEY CLUSTERED 
(
	[btg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britag__btg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britag__] ADD  CONSTRAINT [DF_britag__btg__ref]  DEFAULT ('') FOR [btg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britag__progtag_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britag__] ADD  CONSTRAINT [DF_britag__progtag_]  DEFAULT ('') FOR [progtag_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britag__opv___by]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britag__] ADD  CONSTRAINT [DF_britag__opv___by]  DEFAULT ('0') FOR [opv___by]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britag__ondtel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britag__] ADD  CONSTRAINT [DF_britag__ondtel__]  DEFAULT ('') FOR [ondtel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_britag__opvolger]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[britag__] ADD  CONSTRAINT [DF_britag__opvolger]  DEFAULT ('') FOR [opvolger]
END

