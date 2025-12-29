SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dl_prd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dl_prd__](
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dlprdref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[elm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtvar__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[internet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm_excl] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm_incl] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv__pag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mgr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gangpool] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[custsize] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnpag__x] [float] NOT NULL,
	[mnpag__y] [float] NOT NULL,
	[mxpag__x] [float] NOT NULL,
	[mxpag__y] [float] NOT NULL,
	[calc_imp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[keren_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stolp_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[mpafgtyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afloop__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [dl_prdi1] PRIMARY KEY CLUSTERED 
(
	[prd__ref] ASC,
	[dlprdref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__dlprdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__dlprdref]  DEFAULT ('000') FOR [dlprdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__elm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__elm__ref]  DEFAULT ('') FOR [elm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__kpn__srt]  DEFAULT ('1') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__fmtvar__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__fmtvar__]  DEFAULT ('') FOR [fmtvar__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__internet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__internet]  DEFAULT ('N') FOR [internet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__vwm_excl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__vwm_excl]  DEFAULT ('') FOR [vwm_excl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__vwm_incl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__vwm_incl]  DEFAULT ('') FOR [vwm_incl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__opv__pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__opv__pag]  DEFAULT ('N') FOR [opv__pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__mgr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__mgr__ref]  DEFAULT ('') FOR [mgr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__gangpool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__gangpool]  DEFAULT ('0') FOR [gangpool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__grp__prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__grp__prd]  DEFAULT ('N') FOR [grp__prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__custsize]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__custsize]  DEFAULT ('N') FOR [custsize]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__mnpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__mnpag__x]  DEFAULT ((0)) FOR [mnpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__mnpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__mnpag__y]  DEFAULT ((0)) FOR [mnpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__mxpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__mxpag__x]  DEFAULT ((0)) FOR [mxpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__mxpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__mxpag__y]  DEFAULT ((0)) FOR [mxpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__calc_imp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__calc_imp]  DEFAULT ('1') FOR [calc_imp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__keren_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__keren_yn]  DEFAULT ('Y') FOR [keren_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__stolp_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__stolp_yn]  DEFAULT ('Y') FOR [stolp_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__mpafgtyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__mpafgtyp]  DEFAULT ('0') FOR [mpafgtyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_prd__afloop__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_prd__] ADD  CONSTRAINT [DF_dl_prd__afloop__]  DEFAULT ((0)) FOR [afloop__]
END

