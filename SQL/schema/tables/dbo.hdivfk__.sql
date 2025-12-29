SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hdivfk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hdivfk__](
	[doc__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[div__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[status__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval06] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval07] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval08] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval09] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hdivfki1] PRIMARY KEY CLUSTERED 
(
	[doc__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hdivfk__]') AND name = N'hdivfki2')
CREATE NONCLUSTERED INDEX [hdivfki2] ON [dbo].[hdivfk__]
(
	[div__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__doc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__doc__ref]  DEFAULT ('') FOR [doc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__div__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__div__ref]  DEFAULT ('') FOR [div__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__status__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__status__]  DEFAULT ('') FOR [status__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hdivfk__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hdivfk__] ADD  CONSTRAINT [DF_hdivfk__tstval10]  DEFAULT ('') FOR [tstval10]
END

