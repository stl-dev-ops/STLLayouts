SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vb_std__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vb_std__](
	[vbst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[brf__oms] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[oms_aant] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms1aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms2aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms3aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms4aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms5aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms6aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms7aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms8aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms9aant] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[rek_aant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[t_n_norm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_norm] [float] NOT NULL,
	[tyd_norm] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_norm] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_loo] [float] NOT NULL,
	[vast_mac] [float] NOT NULL,
	[vast_ovh] [float] NOT NULL,
	[prod_loo] [float] NOT NULL,
	[prod_mac] [float] NOT NULL,
	[prod_ovh] [float] NOT NULL,
	[grdvb__t] [float] NOT NULL,
	[grdprd_t] [float] NOT NULL,
	[vast___t] [float] NOT NULL,
	[waarde_t] [float] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[krd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mintar_i] [float] NOT NULL,
	[minaanti] [float] NOT NULL,
	[mintar_g] [float] NOT NULL,
	[pryaantg] [float] NOT NULL,
	[in_vkppr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_meth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast__1t] [float] NOT NULL,
	[vast__2t] [float] NOT NULL,
	[vast__3t] [float] NOT NULL,
	[vast__4t] [float] NOT NULL,
	[waarde1t] [float] NOT NULL,
	[waarde2t] [float] NOT NULL,
	[waarde3t] [float] NOT NULL,
	[waarde4t] [float] NOT NULL,
	[vkp1vast] [float] NOT NULL,
	[vkp2vast] [float] NOT NULL,
	[vkp3vast] [float] NOT NULL,
	[vkp4vast] [float] NOT NULL,
	[vkp1prpa] [float] NOT NULL,
	[vkp2prpa] [float] NOT NULL,
	[vkp3prpa] [float] NOT NULL,
	[vkp4prpa] [float] NOT NULL,
	[minprys1] [float] NOT NULL,
	[minprys2] [float] NOT NULL,
	[minprys3] [float] NOT NULL,
	[minprys4] [float] NOT NULL,
	[minaant1] [float] NOT NULL,
	[minaant2] [float] NOT NULL,
	[minaant3] [float] NOT NULL,
	[minaant4] [float] NOT NULL,
	[vkp1prgr] [float] NOT NULL,
	[vkp2prgr] [float] NOT NULL,
	[vkp3prgr] [float] NOT NULL,
	[vkp4prgr] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vb_stdi1] PRIMARY KEY CLUSTERED 
(
	[vbst_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vbst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vbst_ref]  DEFAULT ('') FOR [vbst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vbst_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vbst_rpn]  DEFAULT ('') FOR [vbst_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vbst_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vbst_oms]  DEFAULT ('') FOR [vbst_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vbst_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vbst_srt]  DEFAULT ('') FOR [vbst_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_prys1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_prys1]  DEFAULT ('') FOR [in_prys1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_tyd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_tyd__]  DEFAULT ('') FOR [in_tyd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_verb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_verb1]  DEFAULT ('') FOR [in_verb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_aant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_aant_]  DEFAULT ('') FOR [in_aant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_verb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_verb2]  DEFAULT ('') FOR [in_verb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_norm_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_norm_]  DEFAULT ('') FOR [in_norm_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_prys2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_prys2]  DEFAULT ('') FOR [in_prys2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast_pry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast_pry]  DEFAULT ((0)) FOR [vast_pry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast_tyd]  DEFAULT ('') FOR [vast_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms_grd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms_grd1]  DEFAULT ('') FOR [oms_grd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__art_pry1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__art_pry1]  DEFAULT ((0)) FOR [art_pry1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__ant_grd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__ant_grd1]  DEFAULT ((0)) FOR [ant_grd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__art_ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__art_ref1]  DEFAULT ('') FOR [art_ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms_aant]  DEFAULT ('') FOR [oms_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms1aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms1aant]  DEFAULT ('') FOR [oms1aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms2aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms2aant]  DEFAULT ('') FOR [oms2aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms3aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms3aant]  DEFAULT ('') FOR [oms3aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms4aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms4aant]  DEFAULT ('') FOR [oms4aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms5aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms5aant]  DEFAULT ('') FOR [oms5aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms6aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms6aant]  DEFAULT ('') FOR [oms6aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms7aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms7aant]  DEFAULT ('') FOR [oms7aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms8aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms8aant]  DEFAULT ('') FOR [oms8aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms9aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms9aant]  DEFAULT ('') FOR [oms9aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__pry__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__pry__srt]  DEFAULT ('') FOR [pry__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__pry_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__pry_aant]  DEFAULT ((0)) FOR [pry_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vst_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vst_aant]  DEFAULT ('') FOR [vst_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vry_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vry_aant]  DEFAULT ((0)) FOR [vry_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms_grd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms_grd2]  DEFAULT ('') FOR [oms_grd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__art_pry2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__art_pry2]  DEFAULT ((0)) FOR [art_pry2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__t_n_grd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__t_n_grd_]  DEFAULT ('') FOR [t_n_grd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms_ant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms_ant_]  DEFAULT ('') FOR [oms_ant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms_vrbt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms_vrbt]  DEFAULT ('') FOR [oms_vrbt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms_vrbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms_vrbn]  DEFAULT ('') FOR [oms_vrbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__ant_grd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__ant_grd2]  DEFAULT ((0)) FOR [ant_grd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__art_ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__art_ref2]  DEFAULT ('') FOR [art_ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__rek_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__rek_aant]  DEFAULT ('') FOR [rek_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__t_n_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__t_n_norm]  DEFAULT ('') FOR [t_n_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__ant_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__ant_norm]  DEFAULT ((0)) FOR [ant_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__tyd_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__tyd_norm]  DEFAULT ('') FOR [tyd_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__oms_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__oms_norm]  DEFAULT ('') FOR [oms_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__rbkvrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__rbkvrref]  DEFAULT ('') FOR [rbkvrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast_loo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast_loo]  DEFAULT ((0)) FOR [vast_loo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast_mac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast_mac]  DEFAULT ((0)) FOR [vast_mac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast_ovh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast_ovh]  DEFAULT ((0)) FOR [vast_ovh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__prod_loo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__prod_loo]  DEFAULT ((0)) FOR [prod_loo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__prod_mac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__prod_mac]  DEFAULT ((0)) FOR [prod_mac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__prod_ovh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__prod_ovh]  DEFAULT ((0)) FOR [prod_ovh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__grdvb__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__grdvb__t]  DEFAULT ((0)) FOR [grdvb__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__grdprd_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__grdprd_t]  DEFAULT ((0)) FOR [grdprd_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast___t]  DEFAULT ((0)) FOR [vast___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__waarde_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__waarde_t]  DEFAULT ((0)) FOR [waarde_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__krd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__krd__ref]  DEFAULT ('') FOR [krd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__mintar_i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__mintar_i]  DEFAULT ((0)) FOR [mintar_i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minaanti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minaanti]  DEFAULT ((0)) FOR [minaanti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__mintar_g]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__mintar_g]  DEFAULT ((0)) FOR [mintar_g]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__pryaantg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__pryaantg]  DEFAULT ((0)) FOR [pryaantg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__in_vkppr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__in_vkppr]  DEFAULT ('') FOR [in_vkppr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__rek_meth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__rek_meth]  DEFAULT ('') FOR [rek_meth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast__1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast__1t]  DEFAULT ((0)) FOR [vast__1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast__2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast__2t]  DEFAULT ((0)) FOR [vast__2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast__3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast__3t]  DEFAULT ((0)) FOR [vast__3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vast__4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vast__4t]  DEFAULT ((0)) FOR [vast__4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__waarde1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__waarde1t]  DEFAULT ((0)) FOR [waarde1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__waarde2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__waarde2t]  DEFAULT ((0)) FOR [waarde2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__waarde3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__waarde3t]  DEFAULT ((0)) FOR [waarde3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__waarde4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__waarde4t]  DEFAULT ((0)) FOR [waarde4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp1vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp1vast]  DEFAULT ((0)) FOR [vkp1vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp2vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp2vast]  DEFAULT ((0)) FOR [vkp2vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp3vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp3vast]  DEFAULT ((0)) FOR [vkp3vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp4vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp4vast]  DEFAULT ((0)) FOR [vkp4vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp1prpa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp1prpa]  DEFAULT ((0)) FOR [vkp1prpa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp2prpa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp2prpa]  DEFAULT ((0)) FOR [vkp2prpa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp3prpa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp3prpa]  DEFAULT ((0)) FOR [vkp3prpa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp4prpa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp4prpa]  DEFAULT ((0)) FOR [vkp4prpa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minprys1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minprys1]  DEFAULT ((0)) FOR [minprys1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minprys2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minprys2]  DEFAULT ((0)) FOR [minprys2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minprys3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minprys3]  DEFAULT ((0)) FOR [minprys3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minprys4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minprys4]  DEFAULT ((0)) FOR [minprys4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minaant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minaant1]  DEFAULT ((0)) FOR [minaant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minaant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minaant2]  DEFAULT ((0)) FOR [minaant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minaant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minaant3]  DEFAULT ((0)) FOR [minaant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__minaant4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__minaant4]  DEFAULT ((0)) FOR [minaant4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp1prgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp1prgr]  DEFAULT ((0)) FOR [vkp1prgr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp2prgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp2prgr]  DEFAULT ((0)) FOR [vkp2prgr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp3prgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp3prgr]  DEFAULT ((0)) FOR [vkp3prgr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_std__vkp4prgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_std__] ADD  CONSTRAINT [DF_vb_std__vkp4prgr]  DEFAULT ((0)) FOR [vkp4prgr]
END

