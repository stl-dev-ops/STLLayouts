SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budget__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budget__](
	[bdgt_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdgt_oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdgt_jan] [int] NOT NULL,
	[bdgt_feb] [int] NOT NULL,
	[bdgt_maa] [int] NOT NULL,
	[bdgt_apr] [int] NOT NULL,
	[bdgt_mei] [int] NOT NULL,
	[bdgt_jun] [int] NOT NULL,
	[bdgt_jul] [int] NOT NULL,
	[bdgt_aug] [int] NOT NULL,
	[bdgt_sep] [int] NOT NULL,
	[bdgt_okt] [int] NOT NULL,
	[bdgt_nov] [int] NOT NULL,
	[bdgt_dec] [int] NOT NULL,
	[bdgt_tot] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [budgeti0] PRIMARY KEY CLUSTERED 
(
	[bdgt_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_ref]  DEFAULT ('') FOR [bdgt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_oms]  DEFAULT ('') FOR [bdgt_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_jan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_jan]  DEFAULT ((0)) FOR [bdgt_jan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_feb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_feb]  DEFAULT ((0)) FOR [bdgt_feb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_maa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_maa]  DEFAULT ((0)) FOR [bdgt_maa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_apr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_apr]  DEFAULT ((0)) FOR [bdgt_apr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_mei]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_mei]  DEFAULT ((0)) FOR [bdgt_mei]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_jun]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_jun]  DEFAULT ((0)) FOR [bdgt_jun]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_jul]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_jul]  DEFAULT ((0)) FOR [bdgt_jul]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_aug]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_aug]  DEFAULT ((0)) FOR [bdgt_aug]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_sep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_sep]  DEFAULT ((0)) FOR [bdgt_sep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_okt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_okt]  DEFAULT ((0)) FOR [bdgt_okt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_nov]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_nov]  DEFAULT ((0)) FOR [bdgt_nov]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_dec]  DEFAULT ((0)) FOR [bdgt_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budget__bdgt_tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budget__] ADD  CONSTRAINT [DF_budget__bdgt_tot]  DEFAULT ((0)) FOR [bdgt_tot]
END

