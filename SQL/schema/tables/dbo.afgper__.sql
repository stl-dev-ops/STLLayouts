SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgper__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgper__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_bm] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afpr_id1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__afg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__afg__rpn]  DEFAULT ('') FOR [afg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__versiref]  DEFAULT ('001') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgper__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgper__] ADD  CONSTRAINT [DF_afgper__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

