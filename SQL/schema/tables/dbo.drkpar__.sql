SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkpar__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkpar__](
	[vls__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afloop__] [float] NOT NULL,
	[plano___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rotatie_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inscumul] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[insblanc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pctincum] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prf__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[smw__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut__sny] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mgr1_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[mgr2_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[imppose1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[imppose2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[calc_imp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkt_tyd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltrenum] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papprty0] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papprty1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papprty2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papprty5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pappr__0] [float] NOT NULL,
	[pappr__1] [float] NOT NULL,
	[pappr__2] [float] NOT NULL,
	[pappr__5] [float] NOT NULL,
	[papprmx0] [float] NOT NULL,
	[papprmx1] [float] NOT NULL,
	[papprmx2] [float] NOT NULL,
	[papprmx5] [float] NOT NULL,
	[papprmn0] [float] NOT NULL,
	[papprmn1] [float] NOT NULL,
	[papprmn2] [float] NOT NULL,
	[papprmn5] [float] NOT NULL,
	[vls__vsn] [float] NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplbg1] [int] NOT NULL,
	[uitplbg2] [int] NOT NULL,
	[uitplbg3] [int] NOT NULL,
	[uitplbg4] [int] NOT NULL,
	[uitplty1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplty2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplty3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplty4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitplhkg] [int] NOT NULL,
	[uitplhtd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitrotps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitrogws] [int] NOT NULL,
	[kstduref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_uref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uithalen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[droogtyd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__inh] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prst____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sort__dg] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__oms] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__oms] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[dvl__oms] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__oms] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam__oms] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt11] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt12] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt13] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt14] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt15] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt16] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt17] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt18] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt19] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt21] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt22] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt23] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt24] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt25] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt26] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt27] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt28] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brffmt29] [nvarchar](2048) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_6] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_7] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_8] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl_9] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl21] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl22] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl23] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl24] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl25] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl26] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl27] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl28] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brfwsl29] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsl__mnt] [float] NOT NULL,
	[tsl__prf] [float] NOT NULL,
	[tsl__plt] [float] NOT NULL,
	[tsl__ink] [float] NOT NULL,
	[exafwtsl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsvwmx1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsvwmx2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsvwmx3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsvwmy1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsvwmy2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsvwmy3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpx0] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlsimpy0] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[wt__perf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_1] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_2] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_3] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_4] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_5] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_6] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_7] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_8] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtzyd_9] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_1] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_2] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_3] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_4] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_5] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_6] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_7] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_8] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt2zy_9] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_1] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_2] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_3] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_4] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_5] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_6] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_7] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_8] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtklr_9] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_1] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_2] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_3] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_4] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_5] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_6] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_7] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_8] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtpms_9] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__pap] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanleg__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rekorjdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gang_pos] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[conf_pag] [int] NOT NULL,
	[virt_vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[afws2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [drkpari0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vls__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vls__ref]  DEFAULT ('') FOR [vls__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__afloop__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__afloop__]  DEFAULT ((0)) FOR [afloop__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__plano___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__plano___]  DEFAULT ('') FOR [plano___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__rotatie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__rotatie_]  DEFAULT ('') FOR [rotatie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__inscumul]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__inscumul]  DEFAULT ('') FOR [inscumul]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__insblanc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__insblanc]  DEFAULT ('') FOR [insblanc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__pctincum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__pctincum]  DEFAULT ('') FOR [pctincum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__prf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__prf__ref]  DEFAULT ('') FOR [prf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__plt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__plt__ref]  DEFAULT ('') FOR [plt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__smw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__smw__ref]  DEFAULT ('') FOR [smw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__aut__sny]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__aut__sny]  DEFAULT ('') FOR [aut__sny]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__mgr1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__mgr1_ref]  DEFAULT ('') FOR [mgr1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__mgr2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__mgr2_ref]  DEFAULT ('') FOR [mgr2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__imppose1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__imppose1]  DEFAULT ('') FOR [imppose1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__imppose2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__imppose2]  DEFAULT ('') FOR [imppose2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__calc_imp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__calc_imp]  DEFAULT ('') FOR [calc_imp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__inkt_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__inkt_tyd]  DEFAULT ('') FOR [inkt_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__pltrenum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__pltrenum]  DEFAULT ('') FOR [pltrenum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprty0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprty0]  DEFAULT ('') FOR [papprty0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprty1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprty1]  DEFAULT ('') FOR [papprty1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprty2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprty2]  DEFAULT ('') FOR [papprty2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprty5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprty5]  DEFAULT ('') FOR [papprty5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__pappr__0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__pappr__0]  DEFAULT ((0)) FOR [pappr__0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__pappr__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__pappr__1]  DEFAULT ((0)) FOR [pappr__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__pappr__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__pappr__2]  DEFAULT ((0)) FOR [pappr__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__pappr__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__pappr__5]  DEFAULT ((0)) FOR [pappr__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmx0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmx0]  DEFAULT ((0)) FOR [papprmx0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmx1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmx1]  DEFAULT ((0)) FOR [papprmx1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmx2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmx2]  DEFAULT ((0)) FOR [papprmx2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmx5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmx5]  DEFAULT ((0)) FOR [papprmx5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmn0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmn0]  DEFAULT ((0)) FOR [papprmn0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmn1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmn1]  DEFAULT ((0)) FOR [papprmn1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmn2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmn2]  DEFAULT ((0)) FOR [papprmn2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__papprmn5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__papprmn5]  DEFAULT ((0)) FOR [papprmn5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vls__vsn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vls__vsn]  DEFAULT ((0)) FOR [vls__vsn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__art__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__art__tst]  DEFAULT ('') FOR [art__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplbg1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplbg1]  DEFAULT ((0)) FOR [uitplbg1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplbg2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplbg2]  DEFAULT ((0)) FOR [uitplbg2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplbg3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplbg3]  DEFAULT ((0)) FOR [uitplbg3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplbg4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplbg4]  DEFAULT ((0)) FOR [uitplbg4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplty1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplty1]  DEFAULT ('') FOR [uitplty1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplty2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplty2]  DEFAULT ('') FOR [uitplty2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplty3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplty3]  DEFAULT ('') FOR [uitplty3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplty4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplty4]  DEFAULT ('') FOR [uitplty4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplhkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplhkg]  DEFAULT ((0)) FOR [uitplhkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitplhtd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitplhtd]  DEFAULT ('') FOR [uitplhtd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitrotps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitrotps]  DEFAULT ('') FOR [uitrotps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uitrogws]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uitrogws]  DEFAULT ((0)) FOR [uitrogws]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__kstduref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__kstduref]  DEFAULT ('') FOR [kstduref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__rbk_uref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__rbk_uref]  DEFAULT ('') FOR [rbk_uref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__uithalen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__uithalen]  DEFAULT ('') FOR [uithalen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__droogtyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__droogtyd]  DEFAULT ('') FOR [droogtyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__pak__inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__pak__inh]  DEFAULT ('') FOR [pak__inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__prst____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__prst____]  DEFAULT ('') FOR [prst____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__sort__dg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__sort__dg]  DEFAULT ('') FOR [sort__dg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__kpn__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__kpn__oms]  DEFAULT ('') FOR [kpn__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vrm__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vrm__oms]  DEFAULT ('') FOR [vrm__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__dvl__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__dvl__oms]  DEFAULT ('') FOR [dvl__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vrs__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vrs__oms]  DEFAULT ('') FOR [vrs__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__dam__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__dam__oms]  DEFAULT ('') FOR [dam__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt11]  DEFAULT ('') FOR [brffmt11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt12]  DEFAULT ('') FOR [brffmt12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt13]  DEFAULT ('') FOR [brffmt13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt14]  DEFAULT ('') FOR [brffmt14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt15]  DEFAULT ('') FOR [brffmt15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt16]  DEFAULT ('') FOR [brffmt16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt17]  DEFAULT ('') FOR [brffmt17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt18]  DEFAULT ('') FOR [brffmt18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt19]  DEFAULT ('') FOR [brffmt19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt21]  DEFAULT ('') FOR [brffmt21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt22]  DEFAULT ('') FOR [brffmt22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt23]  DEFAULT ('') FOR [brffmt23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt24]  DEFAULT ('') FOR [brffmt24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt25]  DEFAULT ('') FOR [brffmt25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt26]  DEFAULT ('') FOR [brffmt26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt27]  DEFAULT ('') FOR [brffmt27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt28]  DEFAULT ('') FOR [brffmt28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brffmt29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brffmt29]  DEFAULT ('') FOR [brffmt29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_1]  DEFAULT ('') FOR [brfwsl_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_2]  DEFAULT ('') FOR [brfwsl_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_3]  DEFAULT ('') FOR [brfwsl_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_4]  DEFAULT ('') FOR [brfwsl_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_5]  DEFAULT ('') FOR [brfwsl_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_6]  DEFAULT ('') FOR [brfwsl_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_7]  DEFAULT ('') FOR [brfwsl_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_8]  DEFAULT ('') FOR [brfwsl_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl_9]  DEFAULT ('') FOR [brfwsl_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl21]  DEFAULT ('') FOR [brfwsl21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl22]  DEFAULT ('') FOR [brfwsl22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl23]  DEFAULT ('') FOR [brfwsl23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl24]  DEFAULT ('') FOR [brfwsl24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl25]  DEFAULT ('') FOR [brfwsl25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl26]  DEFAULT ('') FOR [brfwsl26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl27]  DEFAULT ('') FOR [brfwsl27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl28]  DEFAULT ('') FOR [brfwsl28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__brfwsl29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__brfwsl29]  DEFAULT ('') FOR [brfwsl29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__tsl__mnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__tsl__mnt]  DEFAULT ((0)) FOR [tsl__mnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__tsl__prf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__tsl__prf]  DEFAULT ((0)) FOR [tsl__prf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__tsl__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__tsl__plt]  DEFAULT ((0)) FOR [tsl__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__tsl__ink]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__tsl__ink]  DEFAULT ((0)) FOR [tsl__ink]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__exafwtsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__exafwtsl]  DEFAULT ('') FOR [exafwtsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsvwmx1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsvwmx1]  DEFAULT ('') FOR [vlsvwmx1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsvwmx2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsvwmx2]  DEFAULT ('') FOR [vlsvwmx2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsvwmx3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsvwmx3]  DEFAULT ('') FOR [vlsvwmx3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsvwmy1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsvwmy1]  DEFAULT ('') FOR [vlsvwmy1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsvwmy2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsvwmy2]  DEFAULT ('') FOR [vlsvwmy2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsvwmy3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsvwmy3]  DEFAULT ('') FOR [vlsvwmy3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx1]  DEFAULT ('') FOR [vlsimpx1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx2]  DEFAULT ('') FOR [vlsimpx2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx3]  DEFAULT ('') FOR [vlsimpx3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx4]  DEFAULT ('') FOR [vlsimpx4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx5]  DEFAULT ('') FOR [vlsimpx5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx6]  DEFAULT ('') FOR [vlsimpx6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx7]  DEFAULT ('') FOR [vlsimpx7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx8]  DEFAULT ('') FOR [vlsimpx8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx9]  DEFAULT ('') FOR [vlsimpx9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpx0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpx0]  DEFAULT ('') FOR [vlsimpx0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy1]  DEFAULT ('') FOR [vlsimpy1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy2]  DEFAULT ('') FOR [vlsimpy2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy3]  DEFAULT ('') FOR [vlsimpy3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy4]  DEFAULT ('') FOR [vlsimpy4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy5]  DEFAULT ('') FOR [vlsimpy5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy6]  DEFAULT ('') FOR [vlsimpy6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy7]  DEFAULT ('') FOR [vlsimpy7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy8]  DEFAULT ('') FOR [vlsimpy8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy9]  DEFAULT ('') FOR [vlsimpy9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__vlsimpy0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__vlsimpy0]  DEFAULT ('') FOR [vlsimpy0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__wt__perf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__wt__perf]  DEFAULT ('') FOR [wt__perf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_1]  DEFAULT ('') FOR [txtzyd_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_2]  DEFAULT ('') FOR [txtzyd_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_3]  DEFAULT ('') FOR [txtzyd_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_4]  DEFAULT ('') FOR [txtzyd_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_5]  DEFAULT ('') FOR [txtzyd_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_6]  DEFAULT ('') FOR [txtzyd_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_7]  DEFAULT ('') FOR [txtzyd_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_8]  DEFAULT ('') FOR [txtzyd_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtzyd_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtzyd_9]  DEFAULT ('') FOR [txtzyd_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_1]  DEFAULT ('') FOR [txt2zy_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_2]  DEFAULT ('') FOR [txt2zy_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_3]  DEFAULT ('') FOR [txt2zy_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_4]  DEFAULT ('') FOR [txt2zy_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_5]  DEFAULT ('') FOR [txt2zy_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_6]  DEFAULT ('') FOR [txt2zy_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_7]  DEFAULT ('') FOR [txt2zy_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_8]  DEFAULT ('') FOR [txt2zy_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txt2zy_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txt2zy_9]  DEFAULT ('') FOR [txt2zy_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_1]  DEFAULT ('') FOR [txtklr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_2]  DEFAULT ('') FOR [txtklr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_3]  DEFAULT ('') FOR [txtklr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_4]  DEFAULT ('') FOR [txtklr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_5]  DEFAULT ('') FOR [txtklr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_6]  DEFAULT ('') FOR [txtklr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_7]  DEFAULT ('') FOR [txtklr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_8]  DEFAULT ('') FOR [txtklr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtklr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtklr_9]  DEFAULT ('') FOR [txtklr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_1]  DEFAULT ('') FOR [txtpms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_2]  DEFAULT ('') FOR [txtpms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_3]  DEFAULT ('') FOR [txtpms_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_4]  DEFAULT ('') FOR [txtpms_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_5]  DEFAULT ('') FOR [txtpms_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_6]  DEFAULT ('') FOR [txtpms_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_7]  DEFAULT ('') FOR [txtpms_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_8]  DEFAULT ('') FOR [txtpms_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__txtpms_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__txtpms_9]  DEFAULT ('') FOR [txtpms_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__rbk__pap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__rbk__pap]  DEFAULT ('') FOR [rbk__pap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__aanleg__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__aanleg__]  DEFAULT ('') FOR [aanleg__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__rekorjdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__rekorjdf]  DEFAULT ('') FOR [rekorjdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__gang_pos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__gang_pos]  DEFAULT ('') FOR [gang_pos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__conf_pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__conf_pag]  DEFAULT ((0)) FOR [conf_pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__virt_vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__virt_vrs]  DEFAULT ('') FOR [virt_vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpar__afws2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpar__] ADD  CONSTRAINT [DF_drkpar__afws2ref]  DEFAULT ('') FOR [afws2ref]
END

