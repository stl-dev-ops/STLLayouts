SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkasd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkasd__](
	[afwp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afsdgref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[mxfmt__x] [float] NOT NULL,
	[mxfmt__y] [float] NOT NULL,
	[mnfmt__x] [float] NOT NULL,
	[mnfmt__y] [float] NOT NULL,
	[mxpag__x] [float] NOT NULL,
	[mxpag__y] [float] NOT NULL,
	[mnpag__x] [float] NOT NULL,
	[mnpag__y] [float] NOT NULL,
	[mxopp___] [float] NOT NULL,
	[mnopp___] [float] NOT NULL,
	[mxopptot] [float] NOT NULL,
	[mnopptot] [float] NOT NULL,
	[grm__min] [float] NOT NULL,
	[grm__max] [float] NOT NULL,
	[diktevan] [float] NOT NULL,
	[diktetot] [float] NOT NULL,
	[opl__min] [int] NOT NULL,
	[opl__max] [int] NOT NULL,
	[pos__min] [int] NOT NULL,
	[pos__max] [int] NOT NULL,
	[tyd1__vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins1mach] [float] NOT NULL,
	[ins_mach] [float] NOT NULL,
	[ins__pct] [float] NOT NULL,
	[sp_basis] [float] NOT NULL,
	[tyd1g_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_g_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing1mach] [float] NOT NULL,
	[ing_mach] [float] NOT NULL,
	[ing__pct] [float] NOT NULL,
	[spgbasis] [float] NOT NULL,
	[tyd1m_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_m_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inm1mach] [float] NOT NULL,
	[inm_mach] [float] NOT NULL,
	[inm__pct] [float] NOT NULL,
	[spmbasis] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkasdi1] PRIMARY KEY CLUSTERED 
(
	[afwp_ref] ASC,
	[afsdgref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__afwp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__afwp_ref]  DEFAULT ('') FOR [afwp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__afsdgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__afsdgref]  DEFAULT ('') FOR [afsdgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mxfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mxfmt__x]  DEFAULT ((0)) FOR [mxfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mxfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mxfmt__y]  DEFAULT ((0)) FOR [mxfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mnfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mnfmt__x]  DEFAULT ((0)) FOR [mnfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mnfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mnfmt__y]  DEFAULT ((0)) FOR [mnfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mxpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mxpag__x]  DEFAULT ((0)) FOR [mxpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mxpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mxpag__y]  DEFAULT ((0)) FOR [mxpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mnpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mnpag__x]  DEFAULT ((0)) FOR [mnpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mnpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mnpag__y]  DEFAULT ((0)) FOR [mnpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mxopp___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mxopp___]  DEFAULT ((0)) FOR [mxopp___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mnopp___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mnopp___]  DEFAULT ((0)) FOR [mnopp___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mxopptot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mxopptot]  DEFAULT ((0)) FOR [mxopptot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__mnopptot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__mnopptot]  DEFAULT ((0)) FOR [mnopptot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__grm__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__grm__min]  DEFAULT ((0)) FOR [grm__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__grm__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__grm__max]  DEFAULT ((0)) FOR [grm__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__diktevan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__diktevan]  DEFAULT ((0)) FOR [diktevan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__diktetot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__diktetot]  DEFAULT ((0)) FOR [diktetot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__opl__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__opl__min]  DEFAULT ((0)) FOR [opl__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__opl__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__opl__max]  DEFAULT ((0)) FOR [opl__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__pos__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__pos__min]  DEFAULT ((0)) FOR [pos__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__pos__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__pos__max]  DEFAULT ((0)) FOR [pos__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__tyd1__vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__tyd1__vb]  DEFAULT ('  0:00') FOR [tyd1__vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__tyd___vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__tyd___vb]  DEFAULT ('  0:00') FOR [tyd___vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__ins1mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__ins1mach]  DEFAULT ((0)) FOR [ins1mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__ins_mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__ins_mach]  DEFAULT ((0)) FOR [ins_mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__ins__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__ins__pct]  DEFAULT ((0)) FOR [ins__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__sp_basis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__sp_basis]  DEFAULT ((0)) FOR [sp_basis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__tyd1g_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__tyd1g_vb]  DEFAULT ('  0:00') FOR [tyd1g_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__tyd_g_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__tyd_g_vb]  DEFAULT ('  0:00') FOR [tyd_g_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__ing1mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__ing1mach]  DEFAULT ((0)) FOR [ing1mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__ing_mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__ing_mach]  DEFAULT ((0)) FOR [ing_mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__ing__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__ing__pct]  DEFAULT ((0)) FOR [ing__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__spgbasis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__spgbasis]  DEFAULT ((0)) FOR [spgbasis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__tyd1m_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__tyd1m_vb]  DEFAULT ('  0:00') FOR [tyd1m_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__tyd_m_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__tyd_m_vb]  DEFAULT ('  0:00') FOR [tyd_m_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__inm1mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__inm1mach]  DEFAULT ((0)) FOR [inm1mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__inm_mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__inm_mach]  DEFAULT ((0)) FOR [inm_mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__inm__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__inm__pct]  DEFAULT ((0)) FOR [inm__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkasd__spmbasis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkasd__] ADD  CONSTRAINT [DF_drkasd__spmbasis]  DEFAULT ((0)) FOR [spmbasis]
END

