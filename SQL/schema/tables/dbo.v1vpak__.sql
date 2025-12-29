SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1vpak__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1vpak__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__oms] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [float] NOT NULL,
	[gewicht_] [float] NOT NULL,
	[opp_____] [float] NOT NULL,
	[srt_doos] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[ligging_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakwyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[voorrang] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantalmx] [float] NOT NULL,
	[meter_mx] [float] NOT NULL,
	[diamt_mx] [float] NOT NULL,
	[brdt_krn] [float] NOT NULL,
	[diktekrn] [float] NOT NULL,
	[kern____] [float] NOT NULL,
	[aant_krn] [float] NOT NULL,
	[vrb___e2] [float] NOT NULL,
	[aantal_b] [int] NOT NULL,
	[aantal_h] [int] NOT NULL,
	[inh_e1e2] [float] NOT NULL,
	[inh_e2e3] [float] NOT NULL,
	[inh_e3e4] [float] NOT NULL,
	[inh_e4e5] [float] NOT NULL,
	[vast_inh] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantale1] [float] NOT NULL,
	[aantale2] [float] NOT NULL,
	[aantale3] [float] NOT NULL,
	[aantale4] [float] NOT NULL,
	[aantale5] [float] NOT NULL,
	[vpak_id1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_id5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom1] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom2] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom3] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom4] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakcom5] [nvarchar](300) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[anttyde1] [float] NOT NULL,
	[anttyde2] [float] NOT NULL,
	[anttyde3] [float] NOT NULL,
	[anttyde4] [float] NOT NULL,
	[anttyde5] [float] NOT NULL,
	[tyd___e1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___e2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___e3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___e4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___e5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[anttyd_m] [float] NOT NULL,
	[tyd____m] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wiss_ant] [int] NOT NULL,
	[tottyd_w] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[supp_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inh_aant] [float] NOT NULL,
	[inh__grd] [float] NOT NULL,
	[inh__plt] [float] NOT NULL,
	[vast_vls] [float] NOT NULL,
	[norm_ant] [float] NOT NULL,
	[norm_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_pak] [float] NOT NULL,
	[aant_plt] [float] NOT NULL,
	[inh__rol] [float] NOT NULL,
	[inh__pak] [float] NOT NULL,
	[aant_rol] [float] NOT NULL,
	[rol__oms] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__oms] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref2] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref3] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref4] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_ref5] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_vast] [float] NOT NULL,
	[kst__var] [float] NOT NULL,
	[grdpak_t] [float] NOT NULL,
	[grdvst_t] [float] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[lonen__s] [float] NOT NULL,
	[machi__s] [float] NOT NULL,
	[overh__s] [float] NOT NULL,
	[grdvb__s] [float] NOT NULL,
	[grdvb_t_] [float] NOT NULL,
	[grdvb_ts] [float] NOT NULL,
	[prijs___] [float] NOT NULL,
	[suppl___] [float] NOT NULL,
	[ant_stop] [int] NOT NULL,
	[diamtmax] [float] NOT NULL,
	[diamtmin] [float] NOT NULL,
	[prys__e1] [float] NOT NULL,
	[kernprys] [float] NOT NULL,
	[pak_prys] [float] NOT NULL,
	[ompkprys] [float] NOT NULL,
	[plt_prys] [float] NOT NULL,
	[fmtunitx] [float] NOT NULL,
	[fmtunity] [float] NOT NULL,
	[fmtunitz] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i1_vpak2] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[pak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__pak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__pak__ref]  DEFAULT ('') FOR [pak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpak_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpak_oms]  DEFAULT ('') FOR [vpak_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__shp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__shp__ref]  DEFAULT ('') FOR [shp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__gewicht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__gewicht_]  DEFAULT ((0)) FOR [gewicht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__opp_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__opp_____]  DEFAULT ((0)) FOR [opp_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__srt_doos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__srt_doos]  DEFAULT ('') FOR [srt_doos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__ligging_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__ligging_]  DEFAULT ('') FOR [ligging_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpakwyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpakwyze]  DEFAULT ('') FOR [vpakwyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__voorrang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__voorrang]  DEFAULT ('') FOR [voorrang]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantalmx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantalmx]  DEFAULT ((0)) FOR [aantalmx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__meter_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__meter_mx]  DEFAULT ((0)) FOR [meter_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__diamt_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__diamt_mx]  DEFAULT ((0)) FOR [diamt_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__brdt_krn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__brdt_krn]  DEFAULT ((0)) FOR [brdt_krn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__diktekrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__diktekrn]  DEFAULT ((0)) FOR [diktekrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__kern____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__kern____]  DEFAULT ((0)) FOR [kern____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aant_krn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aant_krn]  DEFAULT ((0)) FOR [aant_krn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vrb___e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vrb___e2]  DEFAULT ((0)) FOR [vrb___e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantal_b]  DEFAULT ((0)) FOR [aantal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh_e1e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh_e1e2]  DEFAULT ((0)) FOR [inh_e1e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh_e2e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh_e2e3]  DEFAULT ((0)) FOR [inh_e2e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh_e3e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh_e3e4]  DEFAULT ((0)) FOR [inh_e3e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh_e4e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh_e4e5]  DEFAULT ((0)) FOR [inh_e4e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vast_inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vast_inh]  DEFAULT ('') FOR [vast_inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantale1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantale1]  DEFAULT ((0)) FOR [aantale1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantale2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantale2]  DEFAULT ((0)) FOR [aantale2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantale3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantale3]  DEFAULT ((0)) FOR [aantale3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantale4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantale4]  DEFAULT ((0)) FOR [aantale4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aantale5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aantale5]  DEFAULT ((0)) FOR [aantale5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpak_id1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpak_id1]  DEFAULT ('') FOR [vpak_id1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpak_id2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpak_id2]  DEFAULT ('') FOR [vpak_id2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpak_id3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpak_id3]  DEFAULT ('') FOR [vpak_id3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpak_id4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpak_id4]  DEFAULT ('') FOR [vpak_id4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpak_id5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpak_id5]  DEFAULT ('') FOR [vpak_id5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpakcom1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpakcom1]  DEFAULT ('') FOR [vpakcom1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpakcom2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpakcom2]  DEFAULT ('') FOR [vpakcom2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpakcom3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpakcom3]  DEFAULT ('') FOR [vpakcom3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpakcom4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpakcom4]  DEFAULT ('') FOR [vpakcom4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vpakcom5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vpakcom5]  DEFAULT ('') FOR [vpakcom5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vast_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vast_tyd]  DEFAULT ('') FOR [vast_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__anttyde1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__anttyde1]  DEFAULT ((0)) FOR [anttyde1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__anttyde2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__anttyde2]  DEFAULT ((0)) FOR [anttyde2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__anttyde3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__anttyde3]  DEFAULT ((0)) FOR [anttyde3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__anttyde4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__anttyde4]  DEFAULT ((0)) FOR [anttyde4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__anttyde5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__anttyde5]  DEFAULT ((0)) FOR [anttyde5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__tyd___e1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__tyd___e1]  DEFAULT ('') FOR [tyd___e1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__tyd___e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__tyd___e2]  DEFAULT ('') FOR [tyd___e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__tyd___e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__tyd___e3]  DEFAULT ('') FOR [tyd___e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__tyd___e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__tyd___e4]  DEFAULT ('') FOR [tyd___e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__tyd___e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__tyd___e5]  DEFAULT ('') FOR [tyd___e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__anttyd_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__anttyd_m]  DEFAULT ((0)) FOR [anttyd_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__tyd____m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__tyd____m]  DEFAULT ('') FOR [tyd____m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__wiss_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__wiss_ant]  DEFAULT ((0)) FOR [wiss_ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__tottyd_w]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__tottyd_w]  DEFAULT ('') FOR [tottyd_w]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__prod_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__prod_tyd]  DEFAULT ('') FOR [prod_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__supp_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__supp_tyd]  DEFAULT ('') FOR [supp_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh_aant]  DEFAULT ((0)) FOR [inh_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh__grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh__grd]  DEFAULT ((0)) FOR [inh__grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh__plt]  DEFAULT ((0)) FOR [inh__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__vast_vls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__vast_vls]  DEFAULT ((0)) FOR [vast_vls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__norm_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__norm_ant]  DEFAULT ((0)) FOR [norm_ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__norm_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__norm_tyd]  DEFAULT ('') FOR [norm_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aant_pak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aant_pak]  DEFAULT ((0)) FOR [aant_pak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aant_plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aant_plt]  DEFAULT ((0)) FOR [aant_plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh__rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh__rol]  DEFAULT ((0)) FOR [inh__rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__inh__pak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__inh__pak]  DEFAULT ((0)) FOR [inh__pak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__aant_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__aant_rol]  DEFAULT ((0)) FOR [aant_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__rol__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__rol__oms]  DEFAULT ('') FOR [rol__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__plt__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__plt__oms]  DEFAULT ('') FOR [plt__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__pak__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__pak__oms]  DEFAULT ('') FOR [pak__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__art_ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__art_ref1]  DEFAULT ('') FOR [art_ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__art_ref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__art_ref2]  DEFAULT ('') FOR [art_ref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__art_ref3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__art_ref3]  DEFAULT ('') FOR [art_ref3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__art_ref4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__art_ref4]  DEFAULT ('') FOR [art_ref4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__art_ref5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__art_ref5]  DEFAULT ('') FOR [art_ref5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__rbkvrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__rbkvrref]  DEFAULT ('') FOR [rbkvrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__kst_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__kst_vast]  DEFAULT ((0)) FOR [kst_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__kst__var]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__kst__var]  DEFAULT ((0)) FOR [kst__var]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__grdpak_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__grdpak_t]  DEFAULT ((0)) FOR [grdpak_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__grdvst_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__grdvst_t]  DEFAULT ((0)) FOR [grdvst_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__lonen__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__lonen__s]  DEFAULT ((0)) FOR [lonen__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__machi__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__machi__s]  DEFAULT ((0)) FOR [machi__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__overh__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__overh__s]  DEFAULT ((0)) FOR [overh__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__grdvb__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__grdvb__s]  DEFAULT ((0)) FOR [grdvb__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__grdvb_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__grdvb_t_]  DEFAULT ((0)) FOR [grdvb_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__grdvb_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__grdvb_ts]  DEFAULT ((0)) FOR [grdvb_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__prijs___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__prijs___]  DEFAULT ((0)) FOR [prijs___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__suppl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__suppl___]  DEFAULT ((0)) FOR [suppl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__ant_stop]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__ant_stop]  DEFAULT ((0)) FOR [ant_stop]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__diamtmax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__diamtmax]  DEFAULT ((0)) FOR [diamtmax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__diamtmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__diamtmin]  DEFAULT ((0)) FOR [diamtmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__prys__e1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__prys__e1]  DEFAULT ((0)) FOR [prys__e1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__kernprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__kernprys]  DEFAULT ((0)) FOR [kernprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__pak_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__pak_prys]  DEFAULT ((0)) FOR [pak_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__ompkprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__ompkprys]  DEFAULT ((0)) FOR [ompkprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__plt_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__plt_prys]  DEFAULT ((0)) FOR [plt_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__fmtunitx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__fmtunitx]  DEFAULT ((0)) FOR [fmtunitx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__fmtunity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__fmtunity]  DEFAULT ((0)) FOR [fmtunity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1vpak__fmtunitz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1vpak__] ADD  CONSTRAINT [DF_v1vpak__fmtunitz]  DEFAULT ((0)) FOR [fmtunitz]
END

