SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkpsd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkpsd__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prsdgref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gram_van] [float] NOT NULL,
	[gram_tot] [float] NOT NULL,
	[diktevan] [float] NOT NULL,
	[diktetot] [float] NOT NULL,
	[opl__van] [int] NOT NULL,
	[opl__tot] [int] NOT NULL,
	[st___ext] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in___ext] [int] NOT NULL,
	[inpctext] [float] NOT NULL,
	[speedmax] [float] NOT NULL,
	[stg__ext] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__ext] [int] NOT NULL,
	[ingpcext] [float] NOT NULL,
	[spg__max] [float] NOT NULL,
	[stm__ext] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inm__ext] [int] NOT NULL,
	[inmpcext] [float] NOT NULL,
	[spm__max] [float] NOT NULL,
	[mxfmt__x] [float] NOT NULL,
	[mxfmt__y] [float] NOT NULL,
	[mnfmt__x] [float] NOT NULL,
	[mnfmt__y] [float] NOT NULL,
	[drkzijde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkkleur] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[antklr__] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkpsdi1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[prsdgref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__prsdgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__prsdgref]  DEFAULT ('') FOR [prsdgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__gram_van]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__gram_van]  DEFAULT ((0)) FOR [gram_van]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__gram_tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__gram_tot]  DEFAULT ((0)) FOR [gram_tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__diktevan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__diktevan]  DEFAULT ((0)) FOR [diktevan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__diktetot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__diktetot]  DEFAULT ((0)) FOR [diktetot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__opl__van]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__opl__van]  DEFAULT ((0)) FOR [opl__van]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__opl__tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__opl__tot]  DEFAULT ((0)) FOR [opl__tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__st___ext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__st___ext]  DEFAULT ('') FOR [st___ext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__in___ext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__in___ext]  DEFAULT ((0)) FOR [in___ext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__inpctext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__inpctext]  DEFAULT ((0)) FOR [inpctext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__speedmax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__speedmax]  DEFAULT ((0)) FOR [speedmax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__stg__ext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__stg__ext]  DEFAULT ('') FOR [stg__ext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__ing__ext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__ing__ext]  DEFAULT ((0)) FOR [ing__ext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__ingpcext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__ingpcext]  DEFAULT ((0)) FOR [ingpcext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__spg__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__spg__max]  DEFAULT ((0)) FOR [spg__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__stm__ext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__stm__ext]  DEFAULT ('') FOR [stm__ext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__inm__ext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__inm__ext]  DEFAULT ((0)) FOR [inm__ext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__inmpcext]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__inmpcext]  DEFAULT ((0)) FOR [inmpcext]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__spm__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__spm__max]  DEFAULT ((0)) FOR [spm__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__mxfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__mxfmt__x]  DEFAULT ((0)) FOR [mxfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__mxfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__mxfmt__y]  DEFAULT ((0)) FOR [mxfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__mnfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__mnfmt__x]  DEFAULT ((0)) FOR [mnfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__mnfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__mnfmt__y]  DEFAULT ((0)) FOR [mnfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__drkzijde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__drkzijde]  DEFAULT ('') FOR [drkzijde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__drkkleur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__drkkleur]  DEFAULT ('') FOR [drkkleur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpsd__antklr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpsd__] ADD  CONSTRAINT [DF_drkpsd__antklr__]  DEFAULT ((0)) FOR [antklr__]
END

