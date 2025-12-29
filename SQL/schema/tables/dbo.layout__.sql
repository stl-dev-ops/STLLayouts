SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[layout__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[layout__](
	[layoutsp] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[multitab] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschrij] [nvarchar](45) COLLATE Latin1_General_CI_AS NOT NULL,
	[ref_prn_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedte_] [int] NOT NULL,
	[diskfext] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[eff__vrg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eff__ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ilayout2] PRIMARY KEY CLUSTERED 
(
	[layoutsp] ASC,
	[layoutnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__layoutsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__layoutsp]  DEFAULT ('') FOR [layoutsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__layoutnr]  DEFAULT ('') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__taal____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__taal____]  DEFAULT ('') FOR [taal____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__multitab]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__multitab]  DEFAULT ('') FOR [multitab]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__omschrij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__omschrij]  DEFAULT ('') FOR [omschrij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__ref_prn_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__ref_prn_]  DEFAULT ('') FOR [ref_prn_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__diskfext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__diskfext]  DEFAULT ('') FOR [diskfext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__eff__vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__eff__vrg]  DEFAULT ('') FOR [eff__vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_layout__eff__ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[layout__] ADD  CONSTRAINT [DF_layout__eff__ant]  DEFAULT ('') FOR [eff__ant]
END

