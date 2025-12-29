SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artcat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artcat__](
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[detailyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lgr__det] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[chzynref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__det] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kontrole] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vgr_vrrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordergeb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb__det] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nulverbr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpninres] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln__res] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nkp__det] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nkp__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpr_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[eigenaar] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrd_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrd_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw_rek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw_rek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cor_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cor_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[toeslag_pct] [float] NOT NULL,
 CONSTRAINT [artcati1] PRIMARY KEY CLUSTERED 
(
	[artc_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__artc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__artc_ref]  DEFAULT ('') FOR [artc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__art__srt]  DEFAULT ('0') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__detailyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__detailyn]  DEFAULT ('3') FOR [detailyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__lgr__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__lgr__det]  DEFAULT ('1') FOR [lgr__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__chzynref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__chzynref]  DEFAULT ('1') FOR [chzynref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__pal__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__pal__det]  DEFAULT ('1') FOR [pal__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__kontrole]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__kontrole]  DEFAULT ('Y') FOR [kontrole]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__vgr_vrrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__vgr_vrrd]  DEFAULT ('1') FOR [vgr_vrrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__ordergeb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__ordergeb]  DEFAULT ('1') FOR [ordergeb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__vrb__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__vrb__det]  DEFAULT ('2') FOR [vrb__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__nulverbr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__nulverbr]  DEFAULT ('1') FOR [nulverbr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__kpninres]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__kpninres]  DEFAULT ('Y') FOR [kpninres]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__pln__res]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__pln__res]  DEFAULT ('1') FOR [pln__res]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__nkp__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__nkp__det]  DEFAULT ('2') FOR [nkp__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__nkp__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__nkp__srt]  DEFAULT ('2') FOR [nkp__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__akpr_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__akpr_srt]  DEFAULT ('5') FOR [akpr_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__akpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__akpr_ref]  DEFAULT ('') FOR [akpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__eigenaar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__eigenaar]  DEFAULT ('1') FOR [eigenaar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__vrd_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__vrd_rek1]  DEFAULT ('') FOR [vrd_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__vrd_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__vrd_rek2]  DEFAULT ('') FOR [vrd_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__ohw_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__ohw_rek1]  DEFAULT ('') FOR [ohw_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__ohw_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__ohw_rek2]  DEFAULT ('') FOR [ohw_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__ohw_rek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__ohw_rek3]  DEFAULT ('') FOR [ohw_rek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__ohw_rek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__ohw_rek4]  DEFAULT ('') FOR [ohw_rek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__kst_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__kst_rek1]  DEFAULT ('') FOR [kst_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__kst_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__kst_rek2]  DEFAULT ('') FOR [kst_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__kst_rek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__kst_rek3]  DEFAULT ('') FOR [kst_rek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__kst_rek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__kst_rek4]  DEFAULT ('') FOR [kst_rek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__cor_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__cor_rek1]  DEFAULT ('') FOR [cor_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__cor_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__cor_rek2]  DEFAULT ('') FOR [cor_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artcat__toeslag_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artcat__] ADD  CONSTRAINT [DF_artcat__toeslag_pct]  DEFAULT ((0)) FOR [toeslag_pct]
END

