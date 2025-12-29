SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3tar___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3tar___](
	[tar__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [float] NOT NULL,
	[vast__pr] [float] NOT NULL,
	[var___pr] [float] NOT NULL,
	[afgw__pr] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[tar_def_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast__pr_vm] [float] NOT NULL,
	[var___pr_vm] [float] NOT NULL,
	[afgw__pr_vm] [float] NOT NULL,
 CONSTRAINT [v3tar_i0] PRIMARY KEY CLUSTERED 
(
	[bon__ref] ASC,
	[tar_def_ref] ASC,
	[tar__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3tar___]') AND name = N'v3tar_i1')
CREATE UNIQUE NONCLUSTERED INDEX [v3tar_i1] ON [dbo].[v3tar___]
(
	[bon__ref] ASC,
	[tar_def_ref] ASC,
	[oplage__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___tar__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___tar__ref]  DEFAULT ('') FOR [tar__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___vast__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___vast__pr]  DEFAULT ((0)) FOR [vast__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___var___pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___var___pr]  DEFAULT ((0)) FOR [var___pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___afgw__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___afgw__pr]  DEFAULT ((0)) FOR [afgw__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___tar_def_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___tar_def_ref]  DEFAULT ('') FOR [tar_def_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___vast__pr_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___vast__pr_vm]  DEFAULT ((0)) FOR [vast__pr_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___var___pr_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___var___pr_vm]  DEFAULT ((0)) FOR [var___pr_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3tar___afgw__pr_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3tar___] ADD  CONSTRAINT [DF_v3tar___afgw__pr_vm]  DEFAULT ((0)) FOR [afgw__pr_vm]
END

