SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tstval__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tstval__](
	[tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstd_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[fldname_] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ico__idx] [int] NOT NULL,
	[progtag1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ctrltag1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [tstvali1] PRIMARY KEY CLUSTERED 
(
	[tst__ref] ASC,
	[tstd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tstval__]') AND name = N'tstvali2')
CREATE UNIQUE NONCLUSTERED INDEX [tstvali2] ON [dbo].[tstval__]
(
	[tabname_] ASC,
	[fldname_] ASC,
	[tstd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__tst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__tst__ref]  DEFAULT ('') FOR [tst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__tstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__tstd_ref]  DEFAULT ('') FOR [tstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__fldname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__fldname_]  DEFAULT ('') FOR [fldname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__default_]  DEFAULT ('N') FOR [default_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__ico__idx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__ico__idx]  DEFAULT ((0)) FOR [ico__idx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__progtag1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__progtag1]  DEFAULT ('') FOR [progtag1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstval__ctrltag1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstval__] ADD  CONSTRAINT [DF_tstval__ctrltag1]  DEFAULT ('') FOR [ctrltag1]
END

