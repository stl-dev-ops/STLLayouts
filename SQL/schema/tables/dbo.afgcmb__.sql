SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgcmb__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgcmb__](
	[cmb__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[crit__01] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[crit__02] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[crit__03] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_crea] [date] NOT NULL,
	[dat__wij] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[lock_usr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgcmb_1] PRIMARY KEY CLUSTERED 
(
	[cmb__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgcmb__]') AND name = N'afgcmb_2')
CREATE NONCLUSTERED INDEX [afgcmb_2] ON [dbo].[afgcmb__]
(
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgcmb__]') AND name = N'afgcmb_3')
CREATE NONCLUSTERED INDEX [afgcmb_3] ON [dbo].[afgcmb__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgcmb__]') AND name = N'afgcmb_4')
CREATE NONCLUSTERED INDEX [afgcmb_4] ON [dbo].[afgcmb__]
(
	[off1_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__cmb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__cmb__ref]  DEFAULT ('') FOR [cmb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__off1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__off1_ref]  DEFAULT ('') FOR [off1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__crit__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__crit__01]  DEFAULT ('') FOR [crit__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__crit__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__crit__02]  DEFAULT ('') FOR [crit__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__crit__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__crit__03]  DEFAULT ('') FOR [crit__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__dat_crea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__dat_crea]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_crea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__dat__wij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__dat__wij]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__wij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgcmb__lock_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgcmb__] ADD  CONSTRAINT [DF_afgcmb__lock_usr]  DEFAULT ('1') FOR [lock_usr]
END

