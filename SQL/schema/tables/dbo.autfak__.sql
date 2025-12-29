SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[autfak__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[autfak__](
	[auto_ofk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_ofk] [int] NOT NULL,
	[auto_ofl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_ofl] [int] NOT NULL,
	[aut_fak1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak1] [int] NOT NULL,
	[aut_fak2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak2] [int] NOT NULL,
	[aut_fak3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak3] [int] NOT NULL,
	[aut_faka] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_faka] [int] NOT NULL,
	[aut_fakb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fakb] [int] NOT NULL,
	[aut_fak4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak4] [int] NOT NULL,
	[aut_fak5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak5] [int] NOT NULL,
	[aut_fak6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak6] [int] NOT NULL,
	[aut_fakc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fakc] [int] NOT NULL,
	[aut_fakd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fakd] [int] NOT NULL,
	[aut_fak7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak7] [int] NOT NULL,
	[aut_fak8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak8] [int] NOT NULL,
	[aut_fak9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fak9] [int] NOT NULL,
	[aut_fake] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fake] [int] NOT NULL,
	[aut_fakf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlg_fakf] [int] NOT NULL,
	[actfdgbk] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kop_boe_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exa___nr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[posrek__] [int] NOT NULL,
	[vkpdat__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[insdat__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak_blok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akp_blok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lonen_v1] [float] NOT NULL,
	[machi_v1] [float] NOT NULL,
	[overh_v1] [float] NOT NULL,
	[papie_v1] [float] NOT NULL,
	[grdst_v1] [float] NOT NULL,
	[oa____v1] [float] NOT NULL,
	[adm___v1] [float] NOT NULL,
	[vkp___v1] [float] NOT NULL,
	[lonen_v2] [float] NOT NULL,
	[machi_v2] [float] NOT NULL,
	[overh_v2] [float] NOT NULL,
	[papie_v2] [float] NOT NULL,
	[grdst_v2] [float] NOT NULL,
	[oa____v2] [float] NOT NULL,
	[adm___v2] [float] NOT NULL,
	[vkp___v2] [float] NOT NULL,
	[lonen_v3] [float] NOT NULL,
	[machi_v3] [float] NOT NULL,
	[overh_v3] [float] NOT NULL,
	[papie_v3] [float] NOT NULL,
	[grdst_v3] [float] NOT NULL,
	[oa____v3] [float] NOT NULL,
	[adm___v3] [float] NOT NULL,
	[vkp___v3] [float] NOT NULL,
	[lonen_v4] [float] NOT NULL,
	[machi_v4] [float] NOT NULL,
	[overh_v4] [float] NOT NULL,
	[papie_v4] [float] NOT NULL,
	[grdst_v4] [float] NOT NULL,
	[oa____v4] [float] NOT NULL,
	[adm___v4] [float] NOT NULL,
	[vkp___v4] [float] NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fplm_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpll_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ctr_facl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ctr_vfak] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[zerofacl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_knp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[show_dlg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkntord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[std_arek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grtbkcom] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[curdatnw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdorder] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdbstln] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdbstbn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdlevbn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdfackl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tabteken] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prn__fac] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmd__pre] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmd_post] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [autfaki0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__auto_ofk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__auto_ofk]  DEFAULT ('') FOR [auto_ofk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__volg_ofk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__volg_ofk]  DEFAULT ((0)) FOR [volg_ofk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__auto_ofl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__auto_ofl]  DEFAULT ('') FOR [auto_ofl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__volg_ofl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__volg_ofl]  DEFAULT ((0)) FOR [volg_ofl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak1]  DEFAULT ('') FOR [aut_fak1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak1]  DEFAULT ((0)) FOR [vlg_fak1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak2]  DEFAULT ('') FOR [aut_fak2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak2]  DEFAULT ((0)) FOR [vlg_fak2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak3]  DEFAULT ('') FOR [aut_fak3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak3]  DEFAULT ((0)) FOR [vlg_fak3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_faka]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_faka]  DEFAULT ('') FOR [aut_faka]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_faka]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_faka]  DEFAULT ((0)) FOR [vlg_faka]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fakb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fakb]  DEFAULT ('') FOR [aut_fakb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fakb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fakb]  DEFAULT ((0)) FOR [vlg_fakb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak4]  DEFAULT ('') FOR [aut_fak4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak4]  DEFAULT ((0)) FOR [vlg_fak4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak5]  DEFAULT ('') FOR [aut_fak5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak5]  DEFAULT ((0)) FOR [vlg_fak5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak6]  DEFAULT ('') FOR [aut_fak6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak6]  DEFAULT ((0)) FOR [vlg_fak6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fakc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fakc]  DEFAULT ('') FOR [aut_fakc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fakc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fakc]  DEFAULT ((0)) FOR [vlg_fakc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fakd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fakd]  DEFAULT ('') FOR [aut_fakd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fakd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fakd]  DEFAULT ((0)) FOR [vlg_fakd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak7]  DEFAULT ('') FOR [aut_fak7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak7]  DEFAULT ((0)) FOR [vlg_fak7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak8]  DEFAULT ('') FOR [aut_fak8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak8]  DEFAULT ((0)) FOR [vlg_fak8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fak9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fak9]  DEFAULT ('') FOR [aut_fak9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fak9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fak9]  DEFAULT ((0)) FOR [vlg_fak9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fake]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fake]  DEFAULT ('') FOR [aut_fake]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fake]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fake]  DEFAULT ((0)) FOR [vlg_fake]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__aut_fakf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__aut_fakf]  DEFAULT ('') FOR [aut_fakf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vlg_fakf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vlg_fakf]  DEFAULT ((0)) FOR [vlg_fakf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__actfdgbk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__actfdgbk]  DEFAULT ('') FOR [actfdgbk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__kop_boe_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__kop_boe_]  DEFAULT ('') FOR [kop_boe_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__exa___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__exa___nr]  DEFAULT ('') FOR [exa___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__posrek__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__posrek__]  DEFAULT ((0)) FOR [posrek__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vkpdat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vkpdat__]  DEFAULT ('') FOR [vkpdat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__insdat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__insdat__]  DEFAULT ('') FOR [insdat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fak_blok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fak_blok]  DEFAULT ('') FOR [fak_blok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__akp_blok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__akp_blok]  DEFAULT ('') FOR [akp_blok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__lonen_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__lonen_v1]  DEFAULT ((0)) FOR [lonen_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__machi_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__machi_v1]  DEFAULT ((0)) FOR [machi_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__overh_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__overh_v1]  DEFAULT ((0)) FOR [overh_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__papie_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__papie_v1]  DEFAULT ((0)) FOR [papie_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__grdst_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__grdst_v1]  DEFAULT ((0)) FOR [grdst_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__oa____v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__oa____v1]  DEFAULT ((0)) FOR [oa____v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__adm___v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__adm___v1]  DEFAULT ((0)) FOR [adm___v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vkp___v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vkp___v1]  DEFAULT ((0)) FOR [vkp___v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__lonen_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__lonen_v2]  DEFAULT ((0)) FOR [lonen_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__machi_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__machi_v2]  DEFAULT ((0)) FOR [machi_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__overh_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__overh_v2]  DEFAULT ((0)) FOR [overh_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__papie_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__papie_v2]  DEFAULT ((0)) FOR [papie_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__grdst_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__grdst_v2]  DEFAULT ((0)) FOR [grdst_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__oa____v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__oa____v2]  DEFAULT ((0)) FOR [oa____v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__adm___v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__adm___v2]  DEFAULT ((0)) FOR [adm___v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vkp___v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vkp___v2]  DEFAULT ((0)) FOR [vkp___v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__lonen_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__lonen_v3]  DEFAULT ((0)) FOR [lonen_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__machi_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__machi_v3]  DEFAULT ((0)) FOR [machi_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__overh_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__overh_v3]  DEFAULT ((0)) FOR [overh_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__papie_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__papie_v3]  DEFAULT ((0)) FOR [papie_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__grdst_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__grdst_v3]  DEFAULT ((0)) FOR [grdst_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__oa____v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__oa____v3]  DEFAULT ((0)) FOR [oa____v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__adm___v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__adm___v3]  DEFAULT ((0)) FOR [adm___v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vkp___v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vkp___v3]  DEFAULT ((0)) FOR [vkp___v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__lonen_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__lonen_v4]  DEFAULT ((0)) FOR [lonen_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__machi_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__machi_v4]  DEFAULT ((0)) FOR [machi_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__overh_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__overh_v4]  DEFAULT ((0)) FOR [overh_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__papie_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__papie_v4]  DEFAULT ((0)) FOR [papie_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__grdst_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__grdst_v4]  DEFAULT ((0)) FOR [grdst_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__oa____v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__oa____v4]  DEFAULT ((0)) FOR [oa____v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__adm___v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__adm___v4]  DEFAULT ((0)) FOR [adm___v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__vkp___v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__vkp___v4]  DEFAULT ((0)) FOR [vkp___v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fplm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fplm_ref]  DEFAULT ('') FOR [fplm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fpll_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fpll_ref]  DEFAULT ('') FOR [fpll_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__ctr_facl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__ctr_facl]  DEFAULT ('') FOR [ctr_facl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__ctr_vfak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__ctr_vfak]  DEFAULT ('') FOR [ctr_vfak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__zerofacl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__zerofacl]  DEFAULT ('') FOR [zerofacl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fkla_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fkla_knp]  DEFAULT ('') FOR [fkla_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__show_dlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__show_dlg]  DEFAULT ('') FOR [show_dlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fak__ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fak__ant]  DEFAULT ('') FOR [fak__ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__drkntord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__drkntord]  DEFAULT ('') FOR [drkntord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__std_arek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__std_arek]  DEFAULT ('') FOR [std_arek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__grtbkcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__grtbkcom]  DEFAULT ('') FOR [grtbkcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__curdatnw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__curdatnw]  DEFAULT ('') FOR [curdatnw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fmdorder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fmdorder]  DEFAULT ('') FOR [fmdorder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fmdbstln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fmdbstln]  DEFAULT ('') FOR [fmdbstln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fmdbstbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fmdbstbn]  DEFAULT ('') FOR [fmdbstbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fmdlevbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fmdlevbn]  DEFAULT ('') FOR [fmdlevbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__fmdfackl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__fmdfackl]  DEFAULT ('') FOR [fmdfackl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__tabteken]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__tabteken]  DEFAULT ('') FOR [tabteken]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__prn__fac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__prn__fac]  DEFAULT ('') FOR [prn__fac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__cmd__pre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__cmd__pre]  DEFAULT ('') FOR [cmd__pre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_autfak__cmd_post]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[autfak__] ADD  CONSTRAINT [DF_autfak__cmd_post]  DEFAULT ('') FOR [cmd_post]
END

