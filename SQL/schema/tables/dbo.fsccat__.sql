SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fsccat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[fsccat__](
	[fsc__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [fsccat_1] PRIMARY KEY CLUSTERED 
(
	[fsc__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__fsc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__fsc__ref]  DEFAULT ('') FOR [fsc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_fsccat__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[fsccat__] ADD  CONSTRAINT [DF_fsccat__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

