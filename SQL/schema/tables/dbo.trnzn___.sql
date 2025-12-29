SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trnzn___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trnzn___](
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__oms] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[levertyd] [int] NOT NULL,
	[leveruur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jit__tyd] [int] NOT NULL,
	[jit__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lever_km] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ref__trn] PRIMARY KEY CLUSTERED 
(
	[trn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___trn__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___trn__oms]  DEFAULT ('') FOR [trn__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___levertyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___levertyd]  DEFAULT ((0)) FOR [levertyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___leveruur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___leveruur]  DEFAULT ('') FOR [leveruur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___jit__tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___jit__tyd]  DEFAULT ((0)) FOR [jit__tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___jit__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___jit__uur]  DEFAULT ('') FOR [jit__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnzn___lever_km]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnzn___] ADD  CONSTRAINT [DF_trnzn___lever_km]  DEFAULT ((0)) FOR [lever_km]
END

