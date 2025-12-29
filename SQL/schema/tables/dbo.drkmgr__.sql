SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkmgr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkmgr__](
	[mgr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs0_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs1_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs2_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs3_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs4_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs5_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs6_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs7_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs8_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs9_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs10ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs11ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs12ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs13ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs14ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs15ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs16ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs17ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs18ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs19ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkmgri1] PRIMARY KEY CLUSTERED 
(
	[mgr__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__mgr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__mgr__ref]  DEFAULT ('') FOR [mgr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs0_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs0_ref]  DEFAULT ('') FOR [prs0_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs1_ref]  DEFAULT ('') FOR [prs1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs2_ref]  DEFAULT ('') FOR [prs2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs3_ref]  DEFAULT ('') FOR [prs3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs4_ref]  DEFAULT ('') FOR [prs4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs5_ref]  DEFAULT ('') FOR [prs5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs6_ref]  DEFAULT ('') FOR [prs6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs7_ref]  DEFAULT ('') FOR [prs7_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs8_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs8_ref]  DEFAULT ('') FOR [prs8_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs9_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs9_ref]  DEFAULT ('') FOR [prs9_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs10ref]  DEFAULT ('') FOR [prs10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs11ref]  DEFAULT ('') FOR [prs11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs12ref]  DEFAULT ('') FOR [prs12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs13ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs13ref]  DEFAULT ('') FOR [prs13ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs14ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs14ref]  DEFAULT ('') FOR [prs14ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs15ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs15ref]  DEFAULT ('') FOR [prs15ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs16ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs16ref]  DEFAULT ('') FOR [prs16ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs17ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs17ref]  DEFAULT ('') FOR [prs17ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs18ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs18ref]  DEFAULT ('') FOR [prs18ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkmgr__prs19ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkmgr__] ADD  CONSTRAINT [DF_drkmgr__prs19ref]  DEFAULT ('') FOR [prs19ref]
END

