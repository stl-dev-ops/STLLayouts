SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[budkjr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[budkjr__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kjaar___] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_bm] [float] NOT NULL,
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
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [budkjidx] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC,
	[kjaar___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__kjaar___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__kjaar___]  DEFAULT ('') FOR [kjaar___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz01_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz01_bm]  DEFAULT ((0)) FOR [omz01_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz02_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz02_bm]  DEFAULT ((0)) FOR [omz02_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz03_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz03_bm]  DEFAULT ((0)) FOR [omz03_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz04_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz04_bm]  DEFAULT ((0)) FOR [omz04_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz05_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz05_bm]  DEFAULT ((0)) FOR [omz05_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz06_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz06_bm]  DEFAULT ((0)) FOR [omz06_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz07_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz07_bm]  DEFAULT ((0)) FOR [omz07_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz08_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz08_bm]  DEFAULT ((0)) FOR [omz08_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz09_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz09_bm]  DEFAULT ((0)) FOR [omz09_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz10_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz10_bm]  DEFAULT ((0)) FOR [omz10_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz11_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz11_bm]  DEFAULT ((0)) FOR [omz11_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_budkjr__omz12_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[budkjr__] ADD  CONSTRAINT [DF_budkjr__omz12_bm]  DEFAULT ((0)) FOR [omz12_bm]
END

