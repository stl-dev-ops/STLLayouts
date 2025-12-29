SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[brftxt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[brftxt__](
	[txt__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[offset__] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [brftxti1] PRIMARY KEY CLUSTERED 
(
	[txt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brftxt__offset__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brftxt__] ADD  CONSTRAINT [DF_brftxt__offset__]  DEFAULT ((0)) FOR [offset__]
END

