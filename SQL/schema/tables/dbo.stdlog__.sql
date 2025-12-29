SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stdlog__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stdlog__](
	[vkp_rubr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd_afg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrdarth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[adm_rubr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oww_rubr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn_rubr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[matbn_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwplg_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bstbn_ex] [int] NOT NULL,
	[matbn_ex] [int] NOT NULL,
	[kpnpap__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[best_grd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_grd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_afg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpninres] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bgr__dag] [int] NOT NULL,
	[bgr__ber] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bgr__tek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[agr__lev] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[agr__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vgr__prc] [float] NOT NULL,
	[rsb__grp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rsb__ref] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rsbapers] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[respadvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__vrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb__rol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[deprant1] [int] NOT NULL,
	[deprant2] [int] NOT NULL,
	[deprprc1] [float] NOT NULL,
	[deprprc2] [float] NOT NULL,
	[unit_pkg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tagdroms] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artoms_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artoms_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artoms_3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artoms_4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artrpn_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artrpn_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artrpn_3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[artrpn_4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[exinfres] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exinfagr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exinfklz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzinord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzwaard] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__vst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstwddon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksttrnon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrbr2lev] [int] NOT NULL,
	[matdv_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtfrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtlmref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtrgref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[papr_kgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[paprvkgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[paprtkgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papr_rol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[verb_rol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tell_rol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mbltelvr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[andro_kg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[androvkg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[androtkg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mat__vol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__vol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kerndiam] [float] NOT NULL,
	[rbkhlfui] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ond__wdd] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ofbstwdd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv__wdd] [int] NOT NULL,
	[fiat_wdd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat1hlp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat2hlp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_hvdt] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms__vdt] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_vdt3] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_vdt4] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[verdicht] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsvrij1] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsvrij2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsvdat1] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[ctrlafsl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_produ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrgrafsl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrgr_res] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__trn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgprinv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgprvrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mvel_ptn] [float] NOT NULL,
	[film_ptn] [float] NOT NULL,
	[plaatptn] [float] NOT NULL,
	[inkt_ptn] [float] NOT NULL,
	[agrd_ptn] [float] NOT NULL,
	[trn__ptn] [float] NOT NULL,
	[tofk_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofo_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[toft_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofp_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tfko_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tfbstrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dekvkrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwvkrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstvkrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwv_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwvfrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dek__rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw__rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwo_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksto_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw__trp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwo_trp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__trp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksto_trp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__trp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dekt_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwt_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwotrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstt_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstotrek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofw_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohwa_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksta_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[deka_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tof3_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jrn__tyd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jrn__grs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jrn__wr3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jrn__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jrn__mlt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossoms1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkakp1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkwdn1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkvrb1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkprs1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkakp1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkwdn1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkvrb1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkprs1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossoms2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkakp2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkwdn2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkvrb2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkprs2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkakp2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkwdn2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkvrb2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkprs2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossoms3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkakp3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkwdn3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkvrb3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkprs3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkakp3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkwdn3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkvrb3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkprs3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier4] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossoms4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkakp4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkwdn4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkvrb4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tofkprs4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkakp4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkwdn4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkvrb4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tefkprs4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kost_reg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vgl_tot1] [int] NOT NULL,
	[vgl_tot2] [int] NOT NULL,
	[vgl_tot3] [int] NOT NULL,
	[vgl_tot4] [int] NOT NULL,
	[eerstvrb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak_ctrl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__pln] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__rot] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__bst] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[detailyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[chzynref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nac__ukp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[autovcnc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nac__lst] [int] NOT NULL,
	[ups__dir] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ups_code] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[ups_ref1] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ups_ref2] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf_kom1] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf_kom2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf_kom3] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf_kom4] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf_kom5] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsp1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsp2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsp3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsp4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsp5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsr1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsr2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsr3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsr4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewomsr5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[postrubr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vok_rubr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mail_trn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[imp__klr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkref_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkref_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkref_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkref_4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ctrl_pln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rma__qrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[substrates_material_filter] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stdlogi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vkp_rubr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vkp_rubr]  DEFAULT ('') FOR [vkp_rubr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vrrd_afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vrrd_afg]  DEFAULT ('') FOR [vrrd_afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vrrdarth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vrrdarth]  DEFAULT ('') FOR [vrrdarth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__adm_rubr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__adm_rubr]  DEFAULT ('') FOR [adm_rubr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__oww_rubr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__oww_rubr]  DEFAULT ('') FOR [oww_rubr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__trn_rubr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__trn_rubr]  DEFAULT ('') FOR [trn_rubr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__matbn_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__matbn_yn]  DEFAULT ('') FOR [matbn_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vwplg_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vwplg_yn]  DEFAULT ('') FOR [vwplg_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__bstbn_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__bstbn_ex]  DEFAULT ((0)) FOR [bstbn_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__matbn_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__matbn_ex]  DEFAULT ((0)) FOR [matbn_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kpnpap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kpnpap__]  DEFAULT ('') FOR [kpnpap__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__best_grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__best_grd]  DEFAULT ('') FOR [best_grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fiat_grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fiat_grd]  DEFAULT ('') FOR [fiat_grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fiat_afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fiat_afg]  DEFAULT ('') FOR [fiat_afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kpninres]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kpninres]  DEFAULT ('') FOR [kpninres]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__bgr__dag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__bgr__dag]  DEFAULT ((0)) FOR [bgr__dag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__bgr__ber]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__bgr__ber]  DEFAULT ('') FOR [bgr__ber]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__bgr__tek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__bgr__tek]  DEFAULT ('') FOR [bgr__tek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__agr__lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__agr__lev]  DEFAULT ('') FOR [agr__lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__agr__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__agr__uur]  DEFAULT ('') FOR [agr__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vgr__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vgr__prc]  DEFAULT ((0)) FOR [vgr__prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rsb__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rsb__grp]  DEFAULT ('') FOR [rsb__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rsb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rsb__ref]  DEFAULT ('') FOR [rsb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rsbapers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rsbapers]  DEFAULT ('') FOR [rsbapers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__respadvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__respadvl]  DEFAULT ('') FOR [respadvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__art__vrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__art__vrd]  DEFAULT ('') FOR [art__vrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vrb__rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vrb__rol]  DEFAULT ('') FOR [vrb__rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__deprant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__deprant1]  DEFAULT ((0)) FOR [deprant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__deprant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__deprant2]  DEFAULT ((0)) FOR [deprant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__deprprc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__deprprc1]  DEFAULT ((0)) FOR [deprprc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__deprprc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__deprprc2]  DEFAULT ((0)) FOR [deprprc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__unit_pkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__unit_pkg]  DEFAULT ('') FOR [unit_pkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tagdroms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tagdroms]  DEFAULT ('') FOR [tagdroms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artoms_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artoms_1]  DEFAULT ('') FOR [artoms_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artoms_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artoms_2]  DEFAULT ('') FOR [artoms_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artoms_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artoms_3]  DEFAULT ('') FOR [artoms_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artoms_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artoms_4]  DEFAULT ('') FOR [artoms_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artrpn_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artrpn_1]  DEFAULT ('') FOR [artrpn_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artrpn_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artrpn_2]  DEFAULT ('') FOR [artrpn_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artrpn_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artrpn_3]  DEFAULT ('') FOR [artrpn_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__artrpn_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__artrpn_4]  DEFAULT ('') FOR [artrpn_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__exinfres]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__exinfres]  DEFAULT ('') FOR [exinfres]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__exinfagr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__exinfagr]  DEFAULT ('') FOR [exinfagr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__exinfklz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__exinfklz]  DEFAULT ('') FOR [exinfklz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__omzinord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__omzinord]  DEFAULT ('') FOR [omzinord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__omzwaard]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__omzwaard]  DEFAULT ('') FOR [omzwaard]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kst__vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kst__vst]  DEFAULT ('') FOR [kst__vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kstwddon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kstwddon]  DEFAULT ('') FOR [kstwddon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ksttrnon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ksttrnon]  DEFAULT ('') FOR [ksttrnon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vrbr2lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vrbr2lev]  DEFAULT ((0)) FOR [vrbr2lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__matdv_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__matdv_yn]  DEFAULT ('') FOR [matdv_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__srtfrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__srtfrref]  DEFAULT ('') FOR [srtfrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__srtlmref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__srtlmref]  DEFAULT ('') FOR [srtlmref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__srtrgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__srtrgref]  DEFAULT ('') FOR [srtrgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__papr_kgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__papr_kgm]  DEFAULT ('') FOR [papr_kgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__paprvkgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__paprvkgm]  DEFAULT ('') FOR [paprvkgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__paprtkgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__paprtkgm]  DEFAULT ('') FOR [paprtkgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__papr_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__papr_rol]  DEFAULT ('') FOR [papr_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__verb_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__verb_rol]  DEFAULT ('') FOR [verb_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tell_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tell_rol]  DEFAULT ('') FOR [tell_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__mbltelvr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__mbltelvr]  DEFAULT ('') FOR [mbltelvr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__andro_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__andro_kg]  DEFAULT ('') FOR [andro_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__androvkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__androvkg]  DEFAULT ('') FOR [androvkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__androtkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__androtkg]  DEFAULT ('') FOR [androtkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__mat__vol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__mat__vol]  DEFAULT ('') FOR [mat__vol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__lev__vol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__lev__vol]  DEFAULT ('') FOR [lev__vol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kerndiam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kerndiam]  DEFAULT ((0)) FOR [kerndiam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rbkhlfui]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rbkhlfui]  DEFAULT ('') FOR [rbkhlfui]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ond__wdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ond__wdd]  DEFAULT ('') FOR [ond__wdd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ofbstwdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ofbstwdd]  DEFAULT ('') FOR [ofbstwdd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__opv__wdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__opv__wdd]  DEFAULT ((0)) FOR [opv__wdd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fiat_wdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fiat_wdd]  DEFAULT ('') FOR [fiat_wdd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__stat1hlp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__stat1hlp]  DEFAULT ('') FOR [stat1hlp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__stat2hlp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__stat2hlp]  DEFAULT ('') FOR [stat2hlp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__oms_hvdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__oms_hvdt]  DEFAULT ('') FOR [oms_hvdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__oms__vdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__oms__vdt]  DEFAULT ('') FOR [oms__vdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__oms_vdt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__oms_vdt3]  DEFAULT ('') FOR [oms_vdt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__oms_vdt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__oms_vdt4]  DEFAULT ('') FOR [oms_vdt4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__verdicht]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__verdicht]  DEFAULT ('') FOR [verdicht]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__omsvrij1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__omsvrij1]  DEFAULT ('') FOR [omsvrij1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__omsvrij2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__omsvrij2]  DEFAULT ('') FOR [omsvrij2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__omsvdat1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__omsvdat1]  DEFAULT ('') FOR [omsvdat1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ctrlafsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ctrlafsl]  DEFAULT ('') FOR [ctrlafsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__in_produ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__in_produ]  DEFAULT ('') FOR [in_produ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vrgrafsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vrgrafsl]  DEFAULT ('') FOR [vrgrafsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vrgr_res]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vrgr_res]  DEFAULT ('') FOR [vrgr_res]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fac__trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fac__trn]  DEFAULT ('') FOR [fac__trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__afgprinv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__afgprinv]  DEFAULT ('') FOR [afgprinv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__afgprvrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__afgprvrd]  DEFAULT ('') FOR [afgprvrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__mvel_ptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__mvel_ptn]  DEFAULT ((0)) FOR [mvel_ptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__film_ptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__film_ptn]  DEFAULT ((0)) FOR [film_ptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__plaatptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__plaatptn]  DEFAULT ((0)) FOR [plaatptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__inkt_ptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__inkt_ptn]  DEFAULT ((0)) FOR [inkt_ptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__agrd_ptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__agrd_ptn]  DEFAULT ((0)) FOR [agrd_ptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__trn__ptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__trn__ptn]  DEFAULT ((0)) FOR [trn__ptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofk_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofk_rek]  DEFAULT ('') FOR [tofk_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofo_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofo_rek]  DEFAULT ('') FOR [tofo_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__toft_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__toft_rek]  DEFAULT ('') FOR [toft_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofp_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofp_rek]  DEFAULT ('') FOR [tofp_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tfko_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tfko_rek]  DEFAULT ('') FOR [tfko_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tfbstrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tfbstrek]  DEFAULT ('') FOR [tfbstrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dekvkrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dekvkrek]  DEFAULT ('') FOR [dekvkrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwvkrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwvkrek]  DEFAULT ('') FOR [ohwvkrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kstvkrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kstvkrek]  DEFAULT ('') FOR [kstvkrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwv_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwv_rek]  DEFAULT ('') FOR [ohwv_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwvfrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwvfrek]  DEFAULT ('') FOR [ohwvfrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dek__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dek__rek]  DEFAULT ('') FOR [dek__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohw__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohw__rek]  DEFAULT ('') FOR [ohw__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwo_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwo_rek]  DEFAULT ('') FOR [ohwo_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kst__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kst__rek]  DEFAULT ('') FOR [kst__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ksto_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ksto_rek]  DEFAULT ('') FOR [ksto_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohw__trp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohw__trp]  DEFAULT ('') FOR [ohw__trp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwo_trp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwo_trp]  DEFAULT ('') FOR [ohwo_trp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kst__trp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kst__trp]  DEFAULT ('') FOR [kst__trp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ksto_trp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ksto_trp]  DEFAULT ('') FOR [ksto_trp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__prs__trp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__prs__trp]  DEFAULT ('') FOR [prs__trp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dekt_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dekt_rek]  DEFAULT ('') FOR [dekt_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwt_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwt_rek]  DEFAULT ('') FOR [ohwt_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwotrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwotrek]  DEFAULT ('') FOR [ohwotrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kstt_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kstt_rek]  DEFAULT ('') FOR [kstt_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kstotrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kstotrek]  DEFAULT ('') FOR [kstotrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofw_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofw_rek]  DEFAULT ('') FOR [tofw_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ohwa_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ohwa_rek]  DEFAULT ('') FOR [ohwa_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ksta_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ksta_rek]  DEFAULT ('') FOR [ksta_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__deka_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__deka_rek]  DEFAULT ('') FOR [deka_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tof3_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tof3_rek]  DEFAULT ('') FOR [tof3_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__jrn__tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__jrn__tyd]  DEFAULT ('') FOR [jrn__tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__jrn__grs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__jrn__grs]  DEFAULT ('') FOR [jrn__grs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__jrn__wr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__jrn__wr3]  DEFAULT ('') FOR [jrn__wr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__jrn__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__jrn__vkp]  DEFAULT ('') FOR [jrn__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__jrn__mlt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__jrn__mlt]  DEFAULT ('') FOR [jrn__mlt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossier1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossier1]  DEFAULT ('') FOR [dossier1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossoms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossoms1]  DEFAULT ('') FOR [dossoms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkakp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkakp1]  DEFAULT ('') FOR [tofkakp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkwdn1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkwdn1]  DEFAULT ('') FOR [tofkwdn1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkvrb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkvrb1]  DEFAULT ('') FOR [tofkvrb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkprs1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkprs1]  DEFAULT ('') FOR [tofkprs1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkakp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkakp1]  DEFAULT ('') FOR [tefkakp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkwdn1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkwdn1]  DEFAULT ('') FOR [tefkwdn1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkvrb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkvrb1]  DEFAULT ('') FOR [tefkvrb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkprs1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkprs1]  DEFAULT ('') FOR [tefkprs1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossier2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossier2]  DEFAULT ('') FOR [dossier2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossoms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossoms2]  DEFAULT ('') FOR [dossoms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkakp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkakp2]  DEFAULT ('') FOR [tofkakp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkwdn2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkwdn2]  DEFAULT ('') FOR [tofkwdn2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkvrb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkvrb2]  DEFAULT ('') FOR [tofkvrb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkprs2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkprs2]  DEFAULT ('') FOR [tofkprs2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkakp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkakp2]  DEFAULT ('') FOR [tefkakp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkwdn2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkwdn2]  DEFAULT ('') FOR [tefkwdn2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkvrb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkvrb2]  DEFAULT ('') FOR [tefkvrb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkprs2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkprs2]  DEFAULT ('') FOR [tefkprs2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossier3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossier3]  DEFAULT ('') FOR [dossier3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossoms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossoms3]  DEFAULT ('') FOR [dossoms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkakp3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkakp3]  DEFAULT ('') FOR [tofkakp3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkwdn3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkwdn3]  DEFAULT ('') FOR [tofkwdn3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkvrb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkvrb3]  DEFAULT ('') FOR [tofkvrb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkprs3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkprs3]  DEFAULT ('') FOR [tofkprs3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkakp3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkakp3]  DEFAULT ('') FOR [tefkakp3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkwdn3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkwdn3]  DEFAULT ('') FOR [tefkwdn3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkvrb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkvrb3]  DEFAULT ('') FOR [tefkvrb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkprs3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkprs3]  DEFAULT ('') FOR [tefkprs3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossier4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossier4]  DEFAULT ('') FOR [dossier4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__dossoms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__dossoms4]  DEFAULT ('') FOR [dossoms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkakp4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkakp4]  DEFAULT ('') FOR [tofkakp4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkwdn4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkwdn4]  DEFAULT ('') FOR [tofkwdn4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkvrb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkvrb4]  DEFAULT ('') FOR [tofkvrb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tofkprs4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tofkprs4]  DEFAULT ('') FOR [tofkprs4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkakp4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkakp4]  DEFAULT ('') FOR [tefkakp4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkwdn4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkwdn4]  DEFAULT ('') FOR [tefkwdn4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkvrb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkvrb4]  DEFAULT ('') FOR [tefkvrb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__tefkprs4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__tefkprs4]  DEFAULT ('') FOR [tefkprs4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__kost_reg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__kost_reg]  DEFAULT ('') FOR [kost_reg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vgl_tot1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vgl_tot1]  DEFAULT ((0)) FOR [vgl_tot1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vgl_tot2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vgl_tot2]  DEFAULT ((0)) FOR [vgl_tot2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vgl_tot3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vgl_tot3]  DEFAULT ((0)) FOR [vgl_tot3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vgl_tot4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vgl_tot4]  DEFAULT ((0)) FOR [vgl_tot4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__eerstvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__eerstvrb]  DEFAULT ('') FOR [eerstvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vak_ctrl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vak_ctrl]  DEFAULT ('') FOR [vak_ctrl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fpl__pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fpl__pln]  DEFAULT ('') FOR [fpl__pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fpl__rot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fpl__rot]  DEFAULT ('') FOR [fpl__rot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fpl__bst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fpl__bst]  DEFAULT ('') FOR [fpl__bst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__fpl__trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__fpl__trn]  DEFAULT ('') FOR [fpl__trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__detailyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__detailyn]  DEFAULT ('') FOR [detailyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__chzynref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__chzynref]  DEFAULT ('') FOR [chzynref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__nac__ukp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__nac__ukp]  DEFAULT ('') FOR [nac__ukp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__autovcnc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__autovcnc]  DEFAULT ('') FOR [autovcnc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__nac__lst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__nac__lst]  DEFAULT ((0)) FOR [nac__lst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ups__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ups__dir]  DEFAULT ('') FOR [ups__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ups_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ups_code]  DEFAULT ('') FOR [ups_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ups_ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ups_ref1]  DEFAULT ('') FOR [ups_ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ups_ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ups_ref2]  DEFAULT ('') FOR [ups_ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__hlf_kom1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__hlf_kom1]  DEFAULT ('') FOR [hlf_kom1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__hlf_kom2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__hlf_kom2]  DEFAULT ('') FOR [hlf_kom2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__hlf_kom3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__hlf_kom3]  DEFAULT ('') FOR [hlf_kom3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__hlf_kom4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__hlf_kom4]  DEFAULT ('') FOR [hlf_kom4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__hlf_kom5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__hlf_kom5]  DEFAULT ('') FOR [hlf_kom5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsp1]  DEFAULT ('') FOR [gewomsp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsp2]  DEFAULT ('') FOR [gewomsp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsp3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsp3]  DEFAULT ('') FOR [gewomsp3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsp4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsp4]  DEFAULT ('') FOR [gewomsp4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsp5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsp5]  DEFAULT ('') FOR [gewomsp5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsr1]  DEFAULT ('') FOR [gewomsr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsr2]  DEFAULT ('') FOR [gewomsr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsr3]  DEFAULT ('') FOR [gewomsr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsr4]  DEFAULT ('') FOR [gewomsr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__gewomsr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__gewomsr5]  DEFAULT ('') FOR [gewomsr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__postrubr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__postrubr]  DEFAULT ('') FOR [postrubr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__vok_rubr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__vok_rubr]  DEFAULT ('') FOR [vok_rubr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__mail_trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__mail_trn]  DEFAULT ('') FOR [mail_trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__imp__klr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__imp__klr]  DEFAULT ('') FOR [imp__klr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rbkref_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rbkref_1]  DEFAULT ('') FOR [rbkref_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rbkref_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rbkref_2]  DEFAULT ('') FOR [rbkref_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rbkref_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rbkref_3]  DEFAULT ('') FOR [rbkref_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rbkref_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rbkref_4]  DEFAULT ('') FOR [rbkref_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__ctrl_pln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__ctrl_pln]  DEFAULT ('') FOR [ctrl_pln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__rma__qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__rma__qrt]  DEFAULT ('') FOR [rma__qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdlog__substrates_material_filter]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdlog__] ADD  CONSTRAINT [DF_stdlog__substrates_material_filter]  DEFAULT ((0)) FOR [substrates_material_filter]
END

