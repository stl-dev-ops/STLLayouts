SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inkoms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[inkoms__](
	[ink__ref] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__oms] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__vrb] [int] NOT NULL,
	[taal___1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_6] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_7] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_8] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_m_9] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [inkomsi0] PRIMARY KEY CLUSTERED 
(
	[ink__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__ink__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__ink__srt]  DEFAULT ('') FOR [ink__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__ink__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__ink__oms]  DEFAULT ('') FOR [ink__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__ink__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__ink__vrb]  DEFAULT ((0)) FOR [ink__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_1]  DEFAULT ('') FOR [taal_m_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_2]  DEFAULT ('') FOR [taal_m_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_3]  DEFAULT ('') FOR [taal_m_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_4]  DEFAULT ('') FOR [taal_m_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_5]  DEFAULT ('') FOR [taal_m_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_6]  DEFAULT ('') FOR [taal_m_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_7]  DEFAULT ('') FOR [taal_m_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_8]  DEFAULT ('') FOR [taal_m_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkoms__taal_m_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkoms__] ADD  CONSTRAINT [DF_inkoms__taal_m_9]  DEFAULT ('') FOR [taal_m_9]
END

