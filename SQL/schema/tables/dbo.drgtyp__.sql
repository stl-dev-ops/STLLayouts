SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drgtyp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drgtyp__](
	[typ__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__cod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drgtypi1] PRIMARY KEY CLUSTERED 
(
	[typ__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__typ__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__typ__ref]  DEFAULT ('') FOR [typ__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__typ__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__typ__rpn]  DEFAULT ('') FOR [typ__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__typ__cod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__typ__cod]  DEFAULT ('1') FOR [typ__cod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__typ__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__typ__oms]  DEFAULT ('') FOR [typ__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgtyp__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgtyp__] ADD  CONSTRAINT [DF_drgtyp__taal___9]  DEFAULT ('') FOR [taal___9]
END

