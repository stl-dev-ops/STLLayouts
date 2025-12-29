SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[perafg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[perafg__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[bedrag__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [perafgi1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perafg__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perafg__] ADD  CONSTRAINT [DF_perafg__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

