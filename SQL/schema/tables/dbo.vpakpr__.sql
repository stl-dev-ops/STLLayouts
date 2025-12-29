SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vpakpr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vpakpr__](
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rol__oms] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__oms] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd_prys] [float] NOT NULL,
	[brdt_krn] [float] NOT NULL,
	[diktekrn] [float] NOT NULL,
	[kern____] [float] NOT NULL,
	[insprkrn] [float] NOT NULL,
	[diamt_mx] [float] NOT NULL,
	[diktefct] [float] NOT NULL,
	[inh_aant] [float] NOT NULL,
	[inh__grd] [float] NOT NULL,
	[inh__plt] [float] NOT NULL,
	[gew_aant] [float] NOT NULL,
	[gew__plt] [float] NOT NULL,
	[pall_gew] [float] NOT NULL,
	[vast_inh] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[max_e1e2] [float] NOT NULL,
	[max_kge2] [float] NOT NULL,
	[max_e2e3] [float] NOT NULL,
	[max_kge3] [float] NOT NULL,
	[max_e3e4] [float] NOT NULL,
	[max_kge4] [float] NOT NULL,
	[max_e4e5] [float] NOT NULL,
	[max_kge5] [float] NOT NULL,
	[gew___e1] [float] NOT NULL,
	[gew___e2] [float] NOT NULL,
	[gew___e3] [float] NOT NULL,
	[gew___e4] [float] NOT NULL,
	[gew___e5] [float] NOT NULL,
	[layvpk_1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_4] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpk_5] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanteti1] [int] NOT NULL,
	[aanteti2] [int] NOT NULL,
	[aanteti3] [int] NOT NULL,
	[aanteti4] [int] NOT NULL,
	[aanteti5] [int] NOT NULL,
	[laypalet] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac___e2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac___e3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac___e4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac___e5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_vls] [float] NOT NULL,
	[norm_ant] [float] NOT NULL,
	[norm_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[normant1] [float] NOT NULL,
	[normtyd1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[normant2] [float] NOT NULL,
	[normtyd2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[normant3] [float] NOT NULL,
	[normtyd3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[normant4] [float] NOT NULL,
	[normtyd4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[normant5] [float] NOT NULL,
	[normtyd5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[normantm] [float] NOT NULL,
	[normtydm] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_hlp_] [int] NOT NULL,
	[wiss_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_kern] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_stop] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf___ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdsplit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_lok] [float] NOT NULL,
	[vpak_mak] [float] NOT NULL,
	[vpak_ovk] [float] NOT NULL,
	[grdpak_t] [float] NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_type] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[krd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[label_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakwyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_meth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd_prm2] [float] NOT NULL,
	[grd_prkg] [float] NOT NULL,
	[grdvst_t] [float] NOT NULL,
	[art_ref1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys__e1] [float] NOT NULL,
	[kernprys] [float] NOT NULL,
	[pak_prys] [float] NOT NULL,
	[ompkprys] [float] NOT NULL,
	[plt_prys] [float] NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[weblabel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rfqonw4l] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpkrkref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vpakpri1] PRIMARY KEY CLUSTERED 
(
	[vpak_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpak_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpak_rpn]  DEFAULT ('') FOR [vpak_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpak_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpak_oms]  DEFAULT ('') FOR [vpak_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__grd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__grd__oms]  DEFAULT ('') FOR [grd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__rol__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__rol__oms]  DEFAULT ('') FOR [rol__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__pak__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__pak__oms]  DEFAULT ('') FOR [pak__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__plt__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__plt__oms]  DEFAULT ('') FOR [plt__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__grd_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__grd_prys]  DEFAULT ((0)) FOR [grd_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__brdt_krn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__brdt_krn]  DEFAULT ((0)) FOR [brdt_krn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__diktekrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__diktekrn]  DEFAULT ((0)) FOR [diktekrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__kern____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__kern____]  DEFAULT ((0)) FOR [kern____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__insprkrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__insprkrn]  DEFAULT ((0)) FOR [insprkrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__diamt_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__diamt_mx]  DEFAULT ((0)) FOR [diamt_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__diktefct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__diktefct]  DEFAULT ((0)) FOR [diktefct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__inh_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__inh_aant]  DEFAULT ((0)) FOR [inh_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__inh__grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__inh__grd]  DEFAULT ((0)) FOR [inh__grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__inh__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__inh__plt]  DEFAULT ((0)) FOR [inh__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__gew_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__gew_aant]  DEFAULT ((0)) FOR [gew_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__gew__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__gew__plt]  DEFAULT ((0)) FOR [gew__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__pall_gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__pall_gew]  DEFAULT ((0)) FOR [pall_gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vast_inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vast_inh]  DEFAULT ('') FOR [vast_inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_e1e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_e1e2]  DEFAULT ((0)) FOR [max_e1e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_kge2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_kge2]  DEFAULT ((0)) FOR [max_kge2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_e2e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_e2e3]  DEFAULT ((0)) FOR [max_e2e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_kge3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_kge3]  DEFAULT ((0)) FOR [max_kge3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_e3e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_e3e4]  DEFAULT ((0)) FOR [max_e3e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_kge4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_kge4]  DEFAULT ((0)) FOR [max_kge4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_e4e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_e4e5]  DEFAULT ((0)) FOR [max_e4e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__max_kge5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__max_kge5]  DEFAULT ((0)) FOR [max_kge5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__gew___e1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__gew___e1]  DEFAULT ((0)) FOR [gew___e1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__gew___e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__gew___e2]  DEFAULT ((0)) FOR [gew___e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__gew___e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__gew___e3]  DEFAULT ((0)) FOR [gew___e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__gew___e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__gew___e4]  DEFAULT ((0)) FOR [gew___e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__gew___e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__gew___e5]  DEFAULT ((0)) FOR [gew___e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__layvpk_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__layvpk_1]  DEFAULT ('') FOR [layvpk_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__layvpk_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__layvpk_2]  DEFAULT ('') FOR [layvpk_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__layvpk_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__layvpk_3]  DEFAULT ('') FOR [layvpk_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__layvpk_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__layvpk_4]  DEFAULT ('') FOR [layvpk_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__layvpk_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__layvpk_5]  DEFAULT ('') FOR [layvpk_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__etiket_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__etiket_1]  DEFAULT ('') FOR [etiket_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__etiket_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__etiket_2]  DEFAULT ('') FOR [etiket_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__etiket_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__etiket_3]  DEFAULT ('') FOR [etiket_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__etiket_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__etiket_4]  DEFAULT ('') FOR [etiket_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__etiket_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__etiket_5]  DEFAULT ('') FOR [etiket_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__aanteti1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__aanteti1]  DEFAULT ((0)) FOR [aanteti1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__aanteti2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__aanteti2]  DEFAULT ((0)) FOR [aanteti2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__aanteti3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__aanteti3]  DEFAULT ((0)) FOR [aanteti3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__aanteti4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__aanteti4]  DEFAULT ((0)) FOR [aanteti4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__aanteti5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__aanteti5]  DEFAULT ((0)) FOR [aanteti5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__laypalet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__laypalet]  DEFAULT ('') FOR [laypalet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__fac___e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__fac___e2]  DEFAULT ('') FOR [fac___e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__fac___e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__fac___e3]  DEFAULT ('') FOR [fac___e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__fac___e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__fac___e4]  DEFAULT ('') FOR [fac___e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__fac___e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__fac___e5]  DEFAULT ('') FOR [fac___e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vast_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vast_tyd]  DEFAULT ('') FOR [vast_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vast_vls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vast_vls]  DEFAULT ((0)) FOR [vast_vls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__norm_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__norm_ant]  DEFAULT ((0)) FOR [norm_ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__norm_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__norm_tyd]  DEFAULT ('') FOR [norm_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normant1]  DEFAULT ((0)) FOR [normant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normtyd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normtyd1]  DEFAULT ('') FOR [normtyd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normant2]  DEFAULT ((0)) FOR [normant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normtyd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normtyd2]  DEFAULT ('') FOR [normtyd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normant3]  DEFAULT ((0)) FOR [normant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normtyd3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normtyd3]  DEFAULT ('') FOR [normtyd3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normant4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normant4]  DEFAULT ((0)) FOR [normant4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normtyd4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normtyd4]  DEFAULT ('') FOR [normtyd4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normant5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normant5]  DEFAULT ((0)) FOR [normant5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normtyd5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normtyd5]  DEFAULT ('') FOR [normtyd5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normantm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normantm]  DEFAULT ((0)) FOR [normantm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__normtydm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__normtydm]  DEFAULT ('') FOR [normtydm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__ant_hlp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__ant_hlp_]  DEFAULT ((0)) FOR [ant_hlp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__wiss_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__wiss_tyd]  DEFAULT ('') FOR [wiss_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__tyd_kern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__tyd_kern]  DEFAULT ('') FOR [tyd_kern]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__tyd_stop]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__tyd_stop]  DEFAULT ('') FOR [tyd_stop]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__hlf___ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__hlf___ok]  DEFAULT ('') FOR [hlf___ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__prdsplit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__prdsplit]  DEFAULT ('') FOR [prdsplit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpak_lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpak_lok]  DEFAULT ((0)) FOR [vpak_lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpak_mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpak_mak]  DEFAULT ((0)) FOR [vpak_mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpak_ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpak_ovk]  DEFAULT ((0)) FOR [vpak_ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__grdpak_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__grdpak_t]  DEFAULT ((0)) FOR [grdpak_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__jdf_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__jdf_type]  DEFAULT ('') FOR [jdf_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__krd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__krd__ref]  DEFAULT ('') FOR [krd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__label_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__label_yn]  DEFAULT ('') FOR [label_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpakwyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpakwyze]  DEFAULT ('') FOR [vpakwyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpk__ref]  DEFAULT ('') FOR [vpk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__rek_meth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__rek_meth]  DEFAULT ('') FOR [rek_meth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__grd_prm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__grd_prm2]  DEFAULT ((0)) FOR [grd_prm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__grd_prkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__grd_prkg]  DEFAULT ((0)) FOR [grd_prkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__grdvst_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__grdvst_t]  DEFAULT ((0)) FOR [grdvst_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__art_ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__art_ref1]  DEFAULT ('') FOR [art_ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__art_ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__art_ref2]  DEFAULT ('') FOR [art_ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__art_ref3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__art_ref3]  DEFAULT ('') FOR [art_ref3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__art_ref4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__art_ref4]  DEFAULT ('') FOR [art_ref4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__art_ref5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__art_ref5]  DEFAULT ('') FOR [art_ref5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__prys__e1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__prys__e1]  DEFAULT ((0)) FOR [prys__e1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__kernprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__kernprys]  DEFAULT ((0)) FOR [kernprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__pak_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__pak_prys]  DEFAULT ((0)) FOR [pak_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__ompkprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__ompkprys]  DEFAULT ((0)) FOR [ompkprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__plt_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__plt_prys]  DEFAULT ((0)) FOR [plt_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__rbkvrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__rbkvrref]  DEFAULT ('') FOR [rbkvrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__weblabel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__weblabel]  DEFAULT ('') FOR [weblabel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__rfqonw4l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__rfqonw4l]  DEFAULT ('') FOR [rfqonw4l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vpakpr__vpkrkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vpakpr__] ADD  CONSTRAINT [DF_vpakpr__vpkrkref]  DEFAULT ('') FOR [vpkrkref]
END

