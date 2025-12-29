SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budbjr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budbjr__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_bm] [float] NOT NULL,
	[perio_01] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_02] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_03] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_04] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_05] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_06] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_07] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_08] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_09] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_10] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_11] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_12] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[perio_13] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[omz01_bm] [float] NOT NULL,
	[omz02_bm] [float] NOT NULL,
	[omz03_bm] [float] NOT NULL,
	[omz04_bm] [float] NOT NULL,
	[omz05_bm] [float] NOT NULL,
	[omz06_bm] [float] NOT NULL,
	[omz07_bm] [float] NOT NULL,
	[omz08_bm] [float] NOT NULL,
	[omz09_bm] [float] NOT NULL,
	[omz10_bm] [float] NOT NULL,
	[omz11_bm] [float] NOT NULL,
	[omz12_bm] [float] NOT NULL,
	[omz13_bm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [budbjidx] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC,
	[bkj__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_01]  DEFAULT ('01') FOR [perio_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_02]  DEFAULT ('02') FOR [perio_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_03]  DEFAULT ('03') FOR [perio_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_04]  DEFAULT ('04') FOR [perio_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_05]  DEFAULT ('05') FOR [perio_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_06]  DEFAULT ('06') FOR [perio_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_07]  DEFAULT ('07') FOR [perio_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_08]  DEFAULT ('08') FOR [perio_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_09]  DEFAULT ('09') FOR [perio_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_10]  DEFAULT ('10') FOR [perio_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_11]  DEFAULT ('11') FOR [perio_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_12]  DEFAULT ('12') FOR [perio_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__perio_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__perio_13]  DEFAULT ('13') FOR [perio_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz01_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz01_bm]  DEFAULT ((0)) FOR [omz01_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz02_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz02_bm]  DEFAULT ((0)) FOR [omz02_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz03_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz03_bm]  DEFAULT ((0)) FOR [omz03_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz04_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz04_bm]  DEFAULT ((0)) FOR [omz04_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz05_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz05_bm]  DEFAULT ((0)) FOR [omz05_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz06_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz06_bm]  DEFAULT ((0)) FOR [omz06_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz07_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz07_bm]  DEFAULT ((0)) FOR [omz07_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz08_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz08_bm]  DEFAULT ((0)) FOR [omz08_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz09_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz09_bm]  DEFAULT ((0)) FOR [omz09_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz10_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz10_bm]  DEFAULT ((0)) FOR [omz10_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz11_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz11_bm]  DEFAULT ((0)) FOR [omz11_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz12_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz12_bm]  DEFAULT ((0)) FOR [omz12_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budbjr__omz13_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budbjr__] ADD  CONSTRAINT [DF_budbjr__omz13_bm]  DEFAULT ((0)) FOR [omz13_bm]
END

