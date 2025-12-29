SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pergrd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pergrd__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[bedrag__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pergrdi1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__artc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__artc_ref]  DEFAULT ('') FOR [artc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pergrd__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pergrd__] ADD  CONSTRAINT [DF_pergrd__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

