SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aw_std__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aw_std__](
	[awst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_prys1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_tyd__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_verb1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_aant_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_verb2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_norm_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_prys2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_pry] [float] NOT NULL,
	[vast_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_grd1] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_pry1] [float] NOT NULL,
	[ant_grd1] [float] NOT NULL,
	[art_ref1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_hlp1] [int] NOT NULL,
	[oms_aant] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_aant] [float] NOT NULL,
	[vst_aant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vry_aant] [float] NOT NULL,
	[oms_grd2] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_pry2] [float] NOT NULL,
	[t_n_grd_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_ant_] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_vrbt] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_vrbn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_grd2] [float] NOT NULL,
	[art_ref2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_aant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_n_norm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_norm] [float] NOT NULL,
	[tyd_norm] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_norm] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_hlp2] [int] NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins__vst] [int] NOT NULL,
	[ins__pct] [float] NOT NULL,
	[vast_loo] [float] NOT NULL,
	[vast_mac] [float] NOT NULL,
	[vast_ovh] [float] NOT NULL,
	[prod_loo] [float] NOT NULL,
	[prod_mac] [float] NOT NULL,
	[prod_ovh] [float] NOT NULL,
	[grdvb__t] [float] NOT NULL,
	[vasthloo] [float] NOT NULL,
	[vasthmac] [float] NOT NULL,
	[vasthovh] [float] NOT NULL,
	[prodhloo] [float] NOT NULL,
	[prodhmac] [float] NOT NULL,
	[prodhovh] [float] NOT NULL,
	[grdprd_t] [float] NOT NULL,
	[vast___t] [float] NOT NULL,
	[waarde_t] [float] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[krd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[alledruk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ext__ins] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vls__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[van_torn] [int] NOT NULL,
	[tot_torn] [int] NOT NULL,
	[kaft_tor] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_type] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[groep__1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[groep__2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[groep__3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[groep__4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub_proc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst1pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst1vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst2pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst2vref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[diktevan] [float] NOT NULL,
	[diktetot] [float] NOT NULL,
	[mxextsht] [int] NOT NULL,
	[mnsrtpag] [int] NOT NULL,
	[mxsrtpag] [int] NOT NULL,
	[mnpag__x] [float] NOT NULL,
	[mnpag__y] [float] NOT NULL,
	[mxpag__x] [float] NOT NULL,
	[mxpag__y] [float] NOT NULL,
	[opl__min] [int] NOT NULL,
	[opl__max] [int] NOT NULL,
	[ins_1vst] [int] NOT NULL,
	[vast1tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sp___typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__gap] [float] NOT NULL,
	[grijpers] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[awtypref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg1ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg3ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg4ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg5ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv4_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv5_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grv1ant1] [float] NOT NULL,
	[grv2ant1] [float] NOT NULL,
	[grv3ant1] [float] NOT NULL,
	[grv4ant1] [float] NOT NULL,
	[grv5ant1] [float] NOT NULL,
	[grv1ant2] [float] NOT NULL,
	[grv2ant2] [float] NOT NULL,
	[grv3ant2] [float] NOT NULL,
	[grv4ant2] [float] NOT NULL,
	[grv5ant2] [float] NOT NULL,
	[grv1ant3] [float] NOT NULL,
	[grv2ant3] [float] NOT NULL,
	[grv3ant3] [float] NOT NULL,
	[grv4ant3] [float] NOT NULL,
	[grv5ant3] [float] NOT NULL,
	[res__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [aw_stdi1] PRIMARY KEY CLUSTERED 
(
	[awst_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aw_std__]') AND name = N'aw_stdi2')
CREATE NONCLUSTERED INDEX [aw_stdi2] ON [dbo].[aw_std__]
(
	[vls__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__awst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__awst_ref]  DEFAULT ('') FOR [awst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__awst_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__awst_rpn]  DEFAULT ('') FOR [awst_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__awst_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__awst_oms]  DEFAULT ('') FOR [awst_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__awst_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__awst_srt]  DEFAULT ('1') FOR [awst_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__in_prys1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__in_prys1]  DEFAULT ('N') FOR [in_prys1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__in_tyd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__in_tyd__]  DEFAULT ('N') FOR [in_tyd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__in_verb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__in_verb1]  DEFAULT ('N') FOR [in_verb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__in_aant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__in_aant_]  DEFAULT ('N') FOR [in_aant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__in_verb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__in_verb2]  DEFAULT ('N') FOR [in_verb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__in_norm_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__in_norm_]  DEFAULT ('N') FOR [in_norm_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__in_prys2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__in_prys2]  DEFAULT ('N') FOR [in_prys2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vast_pry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vast_pry]  DEFAULT ((0)) FOR [vast_pry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vast_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vast_tyd]  DEFAULT ('  0:00') FOR [vast_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__oms_grd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__oms_grd1]  DEFAULT ('') FOR [oms_grd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__art_pry1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__art_pry1]  DEFAULT ((0)) FOR [art_pry1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ant_grd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ant_grd1]  DEFAULT ((0)) FOR [ant_grd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__art_ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__art_ref1]  DEFAULT ('') FOR [art_ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ant_hlp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ant_hlp1]  DEFAULT ((0)) FOR [ant_hlp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__oms_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__oms_aant]  DEFAULT ('') FOR [oms_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__pry__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__pry__srt]  DEFAULT ('1') FOR [pry__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__pry_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__pry_aant]  DEFAULT ((0)) FOR [pry_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vst_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vst_aant]  DEFAULT ('1') FOR [vst_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vry_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vry_aant]  DEFAULT ((0)) FOR [vry_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__oms_grd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__oms_grd2]  DEFAULT ('') FOR [oms_grd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__art_pry2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__art_pry2]  DEFAULT ((0)) FOR [art_pry2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__t_n_grd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__t_n_grd_]  DEFAULT ('1') FOR [t_n_grd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__oms_ant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__oms_ant_]  DEFAULT ('') FOR [oms_ant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__oms_vrbt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__oms_vrbt]  DEFAULT ('') FOR [oms_vrbt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__oms_vrbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__oms_vrbn]  DEFAULT ('') FOR [oms_vrbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ant_grd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ant_grd2]  DEFAULT ((0)) FOR [ant_grd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__art_ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__art_ref2]  DEFAULT ('') FOR [art_ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__rek_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__rek_aant]  DEFAULT ('1') FOR [rek_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__t_n_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__t_n_norm]  DEFAULT ('') FOR [t_n_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ant_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ant_norm]  DEFAULT ((0)) FOR [ant_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__tyd_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__tyd_norm]  DEFAULT ('  0:00') FOR [tyd_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__oms_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__oms_norm]  DEFAULT ('') FOR [oms_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ant_hlp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ant_hlp2]  DEFAULT ((0)) FOR [ant_hlp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__rbkvrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__rbkvrref]  DEFAULT ('') FOR [rbkvrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ins__vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ins__vst]  DEFAULT ((0)) FOR [ins__vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ins__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ins__pct]  DEFAULT ((0)) FOR [ins__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vast_loo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vast_loo]  DEFAULT ((0)) FOR [vast_loo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vast_mac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vast_mac]  DEFAULT ((0)) FOR [vast_mac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vast_ovh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vast_ovh]  DEFAULT ((0)) FOR [vast_ovh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__prod_loo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__prod_loo]  DEFAULT ((0)) FOR [prod_loo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__prod_mac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__prod_mac]  DEFAULT ((0)) FOR [prod_mac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__prod_ovh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__prod_ovh]  DEFAULT ((0)) FOR [prod_ovh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grdvb__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grdvb__t]  DEFAULT ((0)) FOR [grdvb__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vasthloo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vasthloo]  DEFAULT ((0)) FOR [vasthloo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vasthmac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vasthmac]  DEFAULT ((0)) FOR [vasthmac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vasthovh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vasthovh]  DEFAULT ((0)) FOR [vasthovh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__prodhloo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__prodhloo]  DEFAULT ((0)) FOR [prodhloo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__prodhmac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__prodhmac]  DEFAULT ((0)) FOR [prodhmac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__prodhovh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__prodhovh]  DEFAULT ((0)) FOR [prodhovh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grdprd_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grdprd_t]  DEFAULT ((0)) FOR [grdprd_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vast___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vast___t]  DEFAULT ((0)) FOR [vast___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__waarde_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__waarde_t]  DEFAULT ((0)) FOR [waarde_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__krd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__krd__ref]  DEFAULT ('') FOR [krd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__alledruk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__alledruk]  DEFAULT ('Y') FOR [alledruk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ext__ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ext__ins]  DEFAULT ('Y') FOR [ext__ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vls__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vls__ref]  DEFAULT ('') FOR [vls__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__van_torn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__van_torn]  DEFAULT ((0)) FOR [van_torn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__tot_torn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__tot_torn]  DEFAULT ((0)) FOR [tot_torn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__kaft_tor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__kaft_tor]  DEFAULT ('N') FOR [kaft_tor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__jdf_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__jdf_type]  DEFAULT ('') FOR [jdf_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__groep__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__groep__1]  DEFAULT ('') FOR [groep__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__groep__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__groep__2]  DEFAULT ('') FOR [groep__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__groep__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__groep__3]  DEFAULT ('') FOR [groep__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__groep__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__groep__4]  DEFAULT ('') FOR [groep__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__sub_proc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__sub_proc]  DEFAULT ('N') FOR [sub_proc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__kst1pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__kst1pref]  DEFAULT ('') FOR [kst1pref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__kst1vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__kst1vref]  DEFAULT ('') FOR [kst1vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__kst2pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__kst2pref]  DEFAULT ('') FOR [kst2pref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__kst2vref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__kst2vref]  DEFAULT ('') FOR [kst2vref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__diktevan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__diktevan]  DEFAULT ((0)) FOR [diktevan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__diktetot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__diktetot]  DEFAULT ((0)) FOR [diktetot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__mxextsht]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__mxextsht]  DEFAULT ((0)) FOR [mxextsht]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__mnsrtpag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__mnsrtpag]  DEFAULT ((0)) FOR [mnsrtpag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__mxsrtpag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__mxsrtpag]  DEFAULT ((0)) FOR [mxsrtpag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__mnpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__mnpag__x]  DEFAULT ((0)) FOR [mnpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__mnpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__mnpag__y]  DEFAULT ((0)) FOR [mnpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__mxpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__mxpag__x]  DEFAULT ((0)) FOR [mxpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__mxpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__mxpag__y]  DEFAULT ((0)) FOR [mxpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__opl__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__opl__min]  DEFAULT ((0)) FOR [opl__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__opl__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__opl__max]  DEFAULT ((0)) FOR [opl__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__ins_1vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__ins_1vst]  DEFAULT ((0)) FOR [ins_1vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__vast1tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__vast1tyd]  DEFAULT ('  0:00') FOR [vast1tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__sp___typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__sp___typ]  DEFAULT ('1') FOR [sp___typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__afw__gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__afw__gap]  DEFAULT ((0)) FOR [afw__gap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grijpers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grijpers]  DEFAULT ('0') FOR [grijpers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__awtypref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__awtypref]  DEFAULT ('') FOR [awtypref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__afwg1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__afwg1ref]  DEFAULT ('') FOR [afwg1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__afwg2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__afwg2ref]  DEFAULT ('') FOR [afwg2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__afwg3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__afwg3ref]  DEFAULT ('') FOR [afwg3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__afwg4ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__afwg4ref]  DEFAULT ('') FOR [afwg4ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__afwg5ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__afwg5ref]  DEFAULT ('') FOR [afwg5ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv1_ref]  DEFAULT ('') FOR [grv1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv2_ref]  DEFAULT ('') FOR [grv2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv3_ref]  DEFAULT ('') FOR [grv3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv4_ref]  DEFAULT ('') FOR [grv4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv5_ref]  DEFAULT ('') FOR [grv5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv1ant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv1ant1]  DEFAULT ((0)) FOR [grv1ant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv2ant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv2ant1]  DEFAULT ((0)) FOR [grv2ant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv3ant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv3ant1]  DEFAULT ((0)) FOR [grv3ant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv4ant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv4ant1]  DEFAULT ((0)) FOR [grv4ant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv5ant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv5ant1]  DEFAULT ((0)) FOR [grv5ant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv1ant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv1ant2]  DEFAULT ((0)) FOR [grv1ant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv2ant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv2ant2]  DEFAULT ((0)) FOR [grv2ant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv3ant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv3ant2]  DEFAULT ((0)) FOR [grv3ant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv4ant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv4ant2]  DEFAULT ((0)) FOR [grv4ant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv5ant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv5ant2]  DEFAULT ((0)) FOR [grv5ant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv1ant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv1ant3]  DEFAULT ((0)) FOR [grv1ant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv2ant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv2ant3]  DEFAULT ((0)) FOR [grv2ant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv3ant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv3ant3]  DEFAULT ((0)) FOR [grv3ant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv4ant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv4ant3]  DEFAULT ((0)) FOR [grv4ant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__grv5ant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__grv5ant3]  DEFAULT ((0)) FOR [grv5ant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_std__res__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_std__] ADD  CONSTRAINT [DF_aw_std__res__oms]  DEFAULT ('') FOR [res__oms]
END

