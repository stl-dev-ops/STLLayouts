SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prodkl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prodkl__](
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_6] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_7] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_8] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_9] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__vdt] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eigwrkvk] [float] NOT NULL,
	[paper_vk] [float] NOT NULL,
	[grdst_vk] [float] NOT NULL,
	[onda__vk] [float] NOT NULL,
	[eigwrkfc] [float] NOT NULL,
	[paper_fc] [float] NOT NULL,
	[grdst_fc] [float] NOT NULL,
	[onda__fc] [float] NOT NULL,
	[vst___vt] [float] NOT NULL,
	[loo___vt] [float] NOT NULL,
	[mac___vt] [float] NOT NULL,
	[ovh___vt] [float] NOT NULL,
	[vsts__vt] [float] NOT NULL,
	[vst___nt] [float] NOT NULL,
	[loo___nt] [float] NOT NULL,
	[mac___nt] [float] NOT NULL,
	[ovh___nt] [float] NOT NULL,
	[vsts__nt] [float] NOT NULL,
	[pla_rol_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmd_klpr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdporef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdkoref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtdrkvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_perc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[loon__fc] [float] NOT NULL,
	[mach__fc] [float] NOT NULL,
	[akost_fc] [float] NOT NULL,
	[vkost_fc] [float] NOT NULL,
	[ratio_dc] [float] NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrd_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ohw_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omz_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cor_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cor_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_wy] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrd_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_keu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp_drg_vrpl] [bit] NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[send__pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[send_cad] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [prkl_id1] PRIMARY KEY CLUSTERED 
(
	[prkl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_6]  DEFAULT ('') FOR [omschr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_7]  DEFAULT ('') FOR [omschr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_8]  DEFAULT ('') FOR [omschr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omschr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omschr_9]  DEFAULT ('') FOR [omschr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__afg__vdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__afg__vdt]  DEFAULT ('') FOR [afg__vdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__pry__ref]  DEFAULT ('') FOR [pry__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__prys_typ]  DEFAULT ('1') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__prys_srt]  DEFAULT ('7') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__eigwrkvk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__eigwrkvk]  DEFAULT ((0)) FOR [eigwrkvk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__paper_vk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__paper_vk]  DEFAULT ((0)) FOR [paper_vk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__grdst_vk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__grdst_vk]  DEFAULT ((0)) FOR [grdst_vk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__onda__vk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__onda__vk]  DEFAULT ((0)) FOR [onda__vk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__eigwrkfc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__eigwrkfc]  DEFAULT ((0)) FOR [eigwrkfc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__paper_fc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__paper_fc]  DEFAULT ((0)) FOR [paper_fc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__grdst_fc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__grdst_fc]  DEFAULT ((0)) FOR [grdst_fc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__onda__fc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__onda__fc]  DEFAULT ((0)) FOR [onda__fc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vst___vt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vst___vt]  DEFAULT ((0)) FOR [vst___vt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__loo___vt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__loo___vt]  DEFAULT ((0)) FOR [loo___vt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__mac___vt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__mac___vt]  DEFAULT ((0)) FOR [mac___vt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__ovh___vt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__ovh___vt]  DEFAULT ((0)) FOR [ovh___vt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vsts__vt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vsts__vt]  DEFAULT ((0)) FOR [vsts__vt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vst___nt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vst___nt]  DEFAULT ((0)) FOR [vst___nt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__loo___nt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__loo___nt]  DEFAULT ((0)) FOR [loo___nt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__mac___nt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__mac___nt]  DEFAULT ((0)) FOR [mac___nt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__ovh___nt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__ovh___nt]  DEFAULT ((0)) FOR [ovh___nt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vsts__nt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vsts__nt]  DEFAULT ((0)) FOR [vsts__nt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__pla_rol_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__pla_rol_]  DEFAULT ('N') FOR [pla_rol_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__fmd_klpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__fmd_klpr]  DEFAULT ('1') FOR [fmd_klpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__fmdporef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__fmdporef]  DEFAULT ('') FOR [fmdporef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__fmdkoref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__fmdkoref]  DEFAULT ('') FOR [fmdkoref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__arek2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__arek2ref]  DEFAULT ('') FOR [arek2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__srtdrkvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__srtdrkvl]  DEFAULT ('0') FOR [srtdrkvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vkpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vkpr_ref]  DEFAULT ('') FOR [vkpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__btw_perc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__btw_perc]  DEFAULT ('') FOR [btw_perc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__loon__fc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__loon__fc]  DEFAULT ((0)) FOR [loon__fc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__mach__fc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__mach__fc]  DEFAULT ((0)) FOR [mach__fc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__akost_fc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__akost_fc]  DEFAULT ((0)) FOR [akost_fc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vkost_fc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vkost_fc]  DEFAULT ((0)) FOR [vkost_fc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__ratio_dc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__ratio_dc]  DEFAULT ((0)) FOR [ratio_dc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vrd_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vrd_rek1]  DEFAULT ('') FOR [vrd_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__ohw_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__ohw_rek1]  DEFAULT ('') FOR [ohw_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__ohw_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__ohw_rek2]  DEFAULT ('') FOR [ohw_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__kst_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__kst_rek1]  DEFAULT ('') FOR [kst_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omz_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omz_rek1]  DEFAULT ('') FOR [omz_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vkp_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vkp_rek1]  DEFAULT ('') FOR [vkp_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__cor_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__cor_rek1]  DEFAULT ('') FOR [cor_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__cor_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__cor_rek2]  DEFAULT ('') FOR [cor_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__btw__ref]  DEFAULT ('0') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__omzet_wy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__omzet_wy]  DEFAULT ('1') FOR [omzet_wy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__vrrd_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__vrrd_typ]  DEFAULT ('1') FOR [vrrd_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__dgbk_keu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__dgbk_keu]  DEFAULT ('1') FOR [dgbk_keu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__shp_drg_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__shp_drg_vrpl]  DEFAULT ((1)) FOR [shp_drg_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__send__pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__send__pp]  DEFAULT ('0') FOR [send__pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prodkl__send_cad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prodkl__] ADD  CONSTRAINT [DF_prodkl__send_cad]  DEFAULT ('0') FOR [send_cad]
END

