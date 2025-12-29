SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pertof__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pertof__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__typ] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrag__] [float] NOT NULL,
	[bedrag_t] [float] NOT NULL,
	[bedragh_] [float] NOT NULL,
	[bedraght] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pertofi1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__fac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__fac__typ]  DEFAULT ('') FOR [fac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__fac__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__fac__srt]  DEFAULT ('') FOR [fac__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__artc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__artc_ref]  DEFAULT ('') FOR [artc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__bedrag__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__bedrag__]  DEFAULT ((0)) FOR [bedrag__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__bedrag_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__bedrag_t]  DEFAULT ((0)) FOR [bedrag_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__bedragh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__bedragh_]  DEFAULT ((0)) FOR [bedragh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pertof__bedraght]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pertof__] ADD  CONSTRAINT [DF_pertof__bedraght]  DEFAULT ((0)) FOR [bedraght]
END

