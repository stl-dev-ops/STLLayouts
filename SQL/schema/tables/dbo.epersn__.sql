SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[epersn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[epersn__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__oms] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toonprod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tandmaat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[multidrk] [int] NOT NULL,
	[mltmrgbn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[mxfmtbre] [float] NOT NULL,
	[mnfmtbre] [float] NOT NULL,
	[trm__bre] [int] NOT NULL,
	[marge__l] [float] NOT NULL,
	[marge__r] [float] NOT NULL,
	[margemnl] [float] NOT NULL,
	[margemnr] [float] NOT NULL,
	[marge_al] [float] NOT NULL,
	[marge_ar] [float] NOT NULL,
	[margemal] [float] NOT NULL,
	[margemar] [float] NOT NULL,
	[mrgbl__l] [float] NOT NULL,
	[mrgbl__r] [float] NOT NULL,
	[mrgblmnl] [float] NOT NULL,
	[mrgblmnr] [float] NOT NULL,
	[mrgbl_al] [float] NOT NULL,
	[mrgbl_ar] [float] NOT NULL,
	[mrgblmal] [float] NOT NULL,
	[mrgblmar] [float] NOT NULL,
	[spd_____] [int] NOT NULL,
	[ovt_nasl] [int] NOT NULL,
	[ovt_na_m] [int] NOT NULL,
	[ins__prc] [float] NOT NULL,
	[insstvst] [float] NOT NULL,
	[insstprc] [float] NOT NULL,
	[ktrlblgp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnstpdrk] [float] NOT NULL,
	[mxstpdrk] [float] NOT NULL,
	[optstpst] [float] NOT NULL,
	[afwlbgvl] [float] NOT NULL,
	[ctrl__vl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mxst_trm] [float] NOT NULL,
	[mxtrm_st] [float] NOT NULL,
	[mnstprot] [float] NOT NULL,
	[mxstprot] [float] NOT NULL,
	[afwlbgro] [float] NOT NULL,
	[ctrl__ro] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stpst_gt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[spd_unit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stnprvst] [float] NOT NULL,
	[stn__peh] [float] NOT NULL,
	[prs_1lok] [float] NOT NULL,
	[prs_1mak] [float] NOT NULL,
	[prs_1ovk] [float] NOT NULL,
	[prs_2lok] [float] NOT NULL,
	[prs_2mak] [float] NOT NULL,
	[prs_2ovk] [float] NOT NULL,
	[afg1_lok] [float] NOT NULL,
	[afg1_mak] [float] NOT NULL,
	[afg1_ovk] [float] NOT NULL,
	[afgw_lok] [float] NOT NULL,
	[afgw_mak] [float] NOT NULL,
	[afgw_ovk] [float] NOT NULL,
	[rbk_aref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[krd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl__plw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl__klw] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins__plw] [float] NOT NULL,
	[ins__klw] [float] NOT NULL,
	[stlplw_0] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlplw_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlplw_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlplw_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlplw_4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlplw_5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlplw_6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlplw_7] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_0] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlklw_7] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[insplw_0] [float] NOT NULL,
	[insplw_1] [float] NOT NULL,
	[insplw_2] [float] NOT NULL,
	[insplw_3] [float] NOT NULL,
	[insplw_4] [float] NOT NULL,
	[insplw_5] [float] NOT NULL,
	[insplw_6] [float] NOT NULL,
	[insplw_7] [float] NOT NULL,
	[insklw_0] [float] NOT NULL,
	[insklw_1] [float] NOT NULL,
	[insklw_2] [float] NOT NULL,
	[insklw_3] [float] NOT NULL,
	[insklw_4] [float] NOT NULL,
	[insklw_5] [float] NOT NULL,
	[insklw_6] [float] NOT NULL,
	[insklw_7] [float] NOT NULL,
	[plttps_0] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plttps_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plttps_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plttps_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plttps_4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plttps_5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plttps_6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plttps_7] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltvks_0] [float] NOT NULL,
	[pltvks_1] [float] NOT NULL,
	[pltvks_2] [float] NOT NULL,
	[pltvks_3] [float] NOT NULL,
	[pltvks_4] [float] NOT NULL,
	[pltvks_5] [float] NOT NULL,
	[pltvks_6] [float] NOT NULL,
	[pltvks_7] [float] NOT NULL,
	[pltpeh_0] [float] NOT NULL,
	[pltpeh_1] [float] NOT NULL,
	[pltpeh_2] [float] NOT NULL,
	[pltpeh_3] [float] NOT NULL,
	[pltpeh_4] [float] NOT NULL,
	[pltpeh_5] [float] NOT NULL,
	[pltpeh_6] [float] NOT NULL,
	[pltpeh_7] [float] NOT NULL,
	[pltapeh0] [float] NOT NULL,
	[pltapeh1] [float] NOT NULL,
	[pltapeh2] [float] NOT NULL,
	[pltapeh3] [float] NOT NULL,
	[pltapeh4] [float] NOT NULL,
	[pltapeh5] [float] NOT NULL,
	[pltapeh6] [float] NOT NULL,
	[pltapeh7] [float] NOT NULL,
	[plt__tps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grdplpeh] [float] NOT NULL,
	[inkvrb_0] [float] NOT NULL,
	[inkvrb_1] [float] NOT NULL,
	[inkvrb_2] [float] NOT NULL,
	[inkvrb_3] [float] NOT NULL,
	[inkvrb_4] [float] NOT NULL,
	[inkvrb_5] [float] NOT NULL,
	[inkvrb_6] [float] NOT NULL,
	[inkvrb_7] [float] NOT NULL,
	[inkvmn_0] [float] NOT NULL,
	[inkvmn_1] [float] NOT NULL,
	[inkvmn_2] [float] NOT NULL,
	[inkvmn_3] [float] NOT NULL,
	[inkvmn_4] [float] NOT NULL,
	[inkvmn_5] [float] NOT NULL,
	[inkvmn_6] [float] NOT NULL,
	[inkvmn_7] [float] NOT NULL,
	[inkvvs_0] [float] NOT NULL,
	[inkvvs_1] [float] NOT NULL,
	[inkvvs_2] [float] NOT NULL,
	[inkvvs_3] [float] NOT NULL,
	[inkvvs_4] [float] NOT NULL,
	[inkvvs_5] [float] NOT NULL,
	[inkvvs_6] [float] NOT NULL,
	[inkvvs_7] [float] NOT NULL,
	[flm__peh] [float] NOT NULL,
	[plt__peh] [float] NOT NULL,
	[rostnpeh] [float] NOT NULL,
	[vlstnpeh] [float] NOT NULL,
	[opo0_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo4_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo5_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo6_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opo7_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl0ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl1ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl2ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl3ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl4ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl5ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl6ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl7ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__vrb] [float] NOT NULL,
	[inkmnvrb] [float] NOT NULL,
	[ink_ex_k] [float] NOT NULL,
	[rlweti_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rlweti_l] [float] NOT NULL,
	[rlweti_i] [float] NOT NULL,
	[rlw__lin] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_sref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_dref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_wref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_iref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_kref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins_m_sl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[spd_m_sl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vins_bdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vins_ink] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pins_bdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etapovl1] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[etapovl2] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[etapwiki] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[etaplilo] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ_klik] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pp1000kl] [float] NOT NULL,
	[pp1000m_] [float] NOT NULL,
	[strpmrks] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[etapwiko] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__prs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[devrefpp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[coat_peh] [float] NOT NULL,
	[crit__01] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[newdgeti] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mxdrktor] [int] NOT NULL,
	[bld__rot] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pctinkg0] [int] NOT NULL,
	[pctinkg1] [int] NOT NULL,
	[pctinkg2] [int] NOT NULL,
	[pctinkg3] [int] NOT NULL,
	[pctinkg4] [int] NOT NULL,
	[pctinkg5] [int] NOT NULL,
	[pctinkg6] [int] NOT NULL,
	[pctinkg7] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [epersni1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs__oms]  DEFAULT ('') FOR [prs__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__reken___]  DEFAULT ('') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__toonprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__toonprod]  DEFAULT ('') FOR [toonprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs__srt]  DEFAULT ('') FOR [prs__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__tandmaat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__tandmaat]  DEFAULT ('') FOR [tandmaat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__multidrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__multidrk]  DEFAULT ((0)) FOR [multidrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mltmrgbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mltmrgbn]  DEFAULT ('') FOR [mltmrgbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mxfmtbre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mxfmtbre]  DEFAULT ((0)) FOR [mxfmtbre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mnfmtbre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mnfmtbre]  DEFAULT ((0)) FOR [mnfmtbre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__trm__bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__trm__bre]  DEFAULT ((0)) FOR [trm__bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__marge__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__marge__l]  DEFAULT ((0)) FOR [marge__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__marge__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__marge__r]  DEFAULT ((0)) FOR [marge__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__margemnl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__margemnl]  DEFAULT ((0)) FOR [margemnl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__margemnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__margemnr]  DEFAULT ((0)) FOR [margemnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__marge_al]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__marge_al]  DEFAULT ((0)) FOR [marge_al]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__marge_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__marge_ar]  DEFAULT ((0)) FOR [marge_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__margemal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__margemal]  DEFAULT ((0)) FOR [margemal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__margemar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__margemar]  DEFAULT ((0)) FOR [margemar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgbl__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgbl__l]  DEFAULT ((0)) FOR [mrgbl__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgbl__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgbl__r]  DEFAULT ((0)) FOR [mrgbl__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgblmnl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgblmnl]  DEFAULT ((0)) FOR [mrgblmnl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgblmnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgblmnr]  DEFAULT ((0)) FOR [mrgblmnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgbl_al]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgbl_al]  DEFAULT ((0)) FOR [mrgbl_al]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgbl_ar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgbl_ar]  DEFAULT ((0)) FOR [mrgbl_ar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgblmal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgblmal]  DEFAULT ((0)) FOR [mrgblmal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mrgblmar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mrgblmar]  DEFAULT ((0)) FOR [mrgblmar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__spd_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__spd_____]  DEFAULT ((0)) FOR [spd_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ovt_nasl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ovt_nasl]  DEFAULT ((0)) FOR [ovt_nasl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ovt_na_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ovt_na_m]  DEFAULT ((0)) FOR [ovt_na_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ins__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ins__prc]  DEFAULT ((0)) FOR [ins__prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insstvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insstvst]  DEFAULT ((0)) FOR [insstvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insstprc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insstprc]  DEFAULT ((0)) FOR [insstprc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ktrlblgp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ktrlblgp]  DEFAULT ('') FOR [ktrlblgp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mnstpdrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mnstpdrk]  DEFAULT ((0)) FOR [mnstpdrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mxstpdrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mxstpdrk]  DEFAULT ((0)) FOR [mxstpdrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__optstpst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__optstpst]  DEFAULT ((0)) FOR [optstpst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afwlbgvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afwlbgvl]  DEFAULT ((0)) FOR [afwlbgvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ctrl__vl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ctrl__vl]  DEFAULT ('') FOR [ctrl__vl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mxst_trm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mxst_trm]  DEFAULT ((0)) FOR [mxst_trm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mxtrm_st]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mxtrm_st]  DEFAULT ((0)) FOR [mxtrm_st]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mnstprot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mnstprot]  DEFAULT ((0)) FOR [mnstprot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mxstprot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mxstprot]  DEFAULT ((0)) FOR [mxstprot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afwlbgro]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afwlbgro]  DEFAULT ((0)) FOR [afwlbgro]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ctrl__ro]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ctrl__ro]  DEFAULT ('') FOR [ctrl__ro]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stpst_gt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stpst_gt]  DEFAULT ('') FOR [stpst_gt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__spd_unit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__spd_unit]  DEFAULT ('') FOR [spd_unit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stnprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stnprvst]  DEFAULT ((0)) FOR [stnprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stn__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stn__peh]  DEFAULT ((0)) FOR [stn__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs_1lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs_1lok]  DEFAULT ((0)) FOR [prs_1lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs_1mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs_1mak]  DEFAULT ((0)) FOR [prs_1mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs_1ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs_1ovk]  DEFAULT ((0)) FOR [prs_1ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs_2lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs_2lok]  DEFAULT ((0)) FOR [prs_2lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs_2mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs_2mak]  DEFAULT ((0)) FOR [prs_2mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prs_2ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prs_2ovk]  DEFAULT ((0)) FOR [prs_2ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afg1_lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afg1_lok]  DEFAULT ((0)) FOR [afg1_lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afg1_mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afg1_mak]  DEFAULT ((0)) FOR [afg1_mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afg1_ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afg1_ovk]  DEFAULT ((0)) FOR [afg1_ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afgw_lok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afgw_lok]  DEFAULT ((0)) FOR [afgw_lok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afgw_mak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afgw_mak]  DEFAULT ((0)) FOR [afgw_mak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__afgw_ovk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__afgw_ovk]  DEFAULT ((0)) FOR [afgw_ovk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rbk_aref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rbk_aref]  DEFAULT ('') FOR [rbk_aref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__krd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__krd__ref]  DEFAULT ('') FOR [krd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stl__plw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stl__plw]  DEFAULT ('') FOR [stl__plw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stl__klw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stl__klw]  DEFAULT ('') FOR [stl__klw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ins__plw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ins__plw]  DEFAULT ((0)) FOR [ins__plw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ins__klw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ins__klw]  DEFAULT ((0)) FOR [ins__klw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_0]  DEFAULT ('') FOR [stlplw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_1]  DEFAULT ('') FOR [stlplw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_2]  DEFAULT ('') FOR [stlplw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_3]  DEFAULT ('') FOR [stlplw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_4]  DEFAULT ('') FOR [stlplw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_5]  DEFAULT ('') FOR [stlplw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_6]  DEFAULT ('') FOR [stlplw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlplw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlplw_7]  DEFAULT ('') FOR [stlplw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_0]  DEFAULT ('') FOR [stlklw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_1]  DEFAULT ('') FOR [stlklw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_2]  DEFAULT ('') FOR [stlklw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_3]  DEFAULT ('') FOR [stlklw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_4]  DEFAULT ('') FOR [stlklw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_5]  DEFAULT ('') FOR [stlklw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_6]  DEFAULT ('') FOR [stlklw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__stlklw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__stlklw_7]  DEFAULT ('') FOR [stlklw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_0]  DEFAULT ((0)) FOR [insplw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_1]  DEFAULT ((0)) FOR [insplw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_2]  DEFAULT ((0)) FOR [insplw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_3]  DEFAULT ((0)) FOR [insplw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_4]  DEFAULT ((0)) FOR [insplw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_5]  DEFAULT ((0)) FOR [insplw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_6]  DEFAULT ((0)) FOR [insplw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insplw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insplw_7]  DEFAULT ((0)) FOR [insplw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_0]  DEFAULT ((0)) FOR [insklw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_1]  DEFAULT ((0)) FOR [insklw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_2]  DEFAULT ((0)) FOR [insklw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_3]  DEFAULT ((0)) FOR [insklw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_4]  DEFAULT ((0)) FOR [insklw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_5]  DEFAULT ((0)) FOR [insklw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_6]  DEFAULT ((0)) FOR [insklw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__insklw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__insklw_7]  DEFAULT ((0)) FOR [insklw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_0]  DEFAULT ('') FOR [plttps_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_1]  DEFAULT ('') FOR [plttps_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_2]  DEFAULT ('') FOR [plttps_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_3]  DEFAULT ('') FOR [plttps_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_4]  DEFAULT ('') FOR [plttps_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_5]  DEFAULT ('') FOR [plttps_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_6]  DEFAULT ('') FOR [plttps_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plttps_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plttps_7]  DEFAULT ('') FOR [plttps_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_0]  DEFAULT ((0)) FOR [pltvks_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_1]  DEFAULT ((0)) FOR [pltvks_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_2]  DEFAULT ((0)) FOR [pltvks_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_3]  DEFAULT ((0)) FOR [pltvks_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_4]  DEFAULT ((0)) FOR [pltvks_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_5]  DEFAULT ((0)) FOR [pltvks_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_6]  DEFAULT ((0)) FOR [pltvks_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltvks_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltvks_7]  DEFAULT ((0)) FOR [pltvks_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_0]  DEFAULT ((0)) FOR [pltpeh_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_1]  DEFAULT ((0)) FOR [pltpeh_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_2]  DEFAULT ((0)) FOR [pltpeh_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_3]  DEFAULT ((0)) FOR [pltpeh_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_4]  DEFAULT ((0)) FOR [pltpeh_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_5]  DEFAULT ((0)) FOR [pltpeh_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_6]  DEFAULT ((0)) FOR [pltpeh_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltpeh_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltpeh_7]  DEFAULT ((0)) FOR [pltpeh_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh0]  DEFAULT ((0)) FOR [pltapeh0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh1]  DEFAULT ((0)) FOR [pltapeh1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh2]  DEFAULT ((0)) FOR [pltapeh2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh3]  DEFAULT ((0)) FOR [pltapeh3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh4]  DEFAULT ((0)) FOR [pltapeh4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh5]  DEFAULT ((0)) FOR [pltapeh5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh6]  DEFAULT ((0)) FOR [pltapeh6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pltapeh7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pltapeh7]  DEFAULT ((0)) FOR [pltapeh7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plt__tps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plt__tps]  DEFAULT ('') FOR [plt__tps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__grdplpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__grdplpeh]  DEFAULT ((0)) FOR [grdplpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_0]  DEFAULT ((0)) FOR [inkvrb_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_1]  DEFAULT ((0)) FOR [inkvrb_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_2]  DEFAULT ((0)) FOR [inkvrb_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_3]  DEFAULT ((0)) FOR [inkvrb_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_4]  DEFAULT ((0)) FOR [inkvrb_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_5]  DEFAULT ((0)) FOR [inkvrb_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_6]  DEFAULT ((0)) FOR [inkvrb_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvrb_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvrb_7]  DEFAULT ((0)) FOR [inkvrb_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_0]  DEFAULT ((0)) FOR [inkvmn_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_1]  DEFAULT ((0)) FOR [inkvmn_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_2]  DEFAULT ((0)) FOR [inkvmn_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_3]  DEFAULT ((0)) FOR [inkvmn_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_4]  DEFAULT ((0)) FOR [inkvmn_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_5]  DEFAULT ((0)) FOR [inkvmn_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_6]  DEFAULT ((0)) FOR [inkvmn_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvmn_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvmn_7]  DEFAULT ((0)) FOR [inkvmn_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_0]  DEFAULT ((0)) FOR [inkvvs_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_1]  DEFAULT ((0)) FOR [inkvvs_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_2]  DEFAULT ((0)) FOR [inkvvs_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_3]  DEFAULT ((0)) FOR [inkvvs_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_4]  DEFAULT ((0)) FOR [inkvvs_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_5]  DEFAULT ((0)) FOR [inkvvs_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_6]  DEFAULT ((0)) FOR [inkvvs_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkvvs_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkvvs_7]  DEFAULT ((0)) FOR [inkvvs_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__flm__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__flm__peh]  DEFAULT ((0)) FOR [flm__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plt__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plt__peh]  DEFAULT ((0)) FOR [plt__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rostnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rostnpeh]  DEFAULT ((0)) FOR [rostnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__vlstnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__vlstnpeh]  DEFAULT ((0)) FOR [vlstnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo0_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo0_ref]  DEFAULT ('') FOR [opo0_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo1_ref]  DEFAULT ('') FOR [opo1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo2_ref]  DEFAULT ('') FOR [opo2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo3_ref]  DEFAULT ('') FOR [opo3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo4_ref]  DEFAULT ('') FOR [opo4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo5_ref]  DEFAULT ('') FOR [opo5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo6_ref]  DEFAULT ('') FOR [opo6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__opo7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__opo7_ref]  DEFAULT ('') FOR [opo7_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl0ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl0ref]  DEFAULT ('') FOR [plpl0ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl1ref]  DEFAULT ('') FOR [plpl1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl2ref]  DEFAULT ('') FOR [plpl2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl3ref]  DEFAULT ('') FOR [plpl3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl4ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl4ref]  DEFAULT ('') FOR [plpl4ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl5ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl5ref]  DEFAULT ('') FOR [plpl5ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl6ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl6ref]  DEFAULT ('') FOR [plpl6ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__plpl7ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__plpl7ref]  DEFAULT ('') FOR [plpl7ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ink__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ink__vrb]  DEFAULT ((0)) FOR [ink__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__inkmnvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__inkmnvrb]  DEFAULT ((0)) FOR [inkmnvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ink_ex_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ink_ex_k]  DEFAULT ((0)) FOR [ink_ex_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rlweti_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rlweti_t]  DEFAULT ('') FOR [rlweti_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rlweti_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rlweti_l]  DEFAULT ((0)) FOR [rlweti_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rlweti_i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rlweti_i]  DEFAULT ((0)) FOR [rlweti_i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rlw__lin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rlw__lin]  DEFAULT ('') FOR [rlw__lin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rbk_sref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rbk_sref]  DEFAULT ('') FOR [rbk_sref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rbk_dref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rbk_dref]  DEFAULT ('') FOR [rbk_dref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rbk_wref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rbk_wref]  DEFAULT ('') FOR [rbk_wref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rbk_iref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rbk_iref]  DEFAULT ('') FOR [rbk_iref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__rbk_kref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__rbk_kref]  DEFAULT ('') FOR [rbk_kref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__ins_m_sl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__ins_m_sl]  DEFAULT ('') FOR [ins_m_sl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__spd_m_sl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__spd_m_sl]  DEFAULT ('') FOR [spd_m_sl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__vins_bdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__vins_bdr]  DEFAULT ('') FOR [vins_bdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__vins_ink]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__vins_ink]  DEFAULT ('') FOR [vins_ink]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pins_bdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pins_bdr]  DEFAULT ('') FOR [pins_bdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__etapovl1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__etapovl1]  DEFAULT ('') FOR [etapovl1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__etapovl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__etapovl2]  DEFAULT ('') FOR [etapovl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__etapwiki]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__etapwiki]  DEFAULT ('') FOR [etapwiki]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__etaplilo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__etaplilo]  DEFAULT ('') FOR [etaplilo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__typ_klik]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__typ_klik]  DEFAULT ('') FOR [typ_klik]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pp1000kl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pp1000kl]  DEFAULT ((0)) FOR [pp1000kl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pp1000m_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pp1000m_]  DEFAULT ((0)) FOR [pp1000m_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__strpmrks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__strpmrks]  DEFAULT ('') FOR [strpmrks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__etapwiko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__etapwiko]  DEFAULT ('') FOR [etapwiko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__typ__prs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__typ__prs]  DEFAULT ('') FOR [typ__prs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__devrefpp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__devrefpp]  DEFAULT ('') FOR [devrefpp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__coat_peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__coat_peh]  DEFAULT ((0)) FOR [coat_peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__crit__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__crit__01]  DEFAULT ('') FOR [crit__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prod_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prod_srt]  DEFAULT ('') FOR [prod_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__prod_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__prod_ord]  DEFAULT ('') FOR [prod_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__newdgeti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__newdgeti]  DEFAULT ('') FOR [newdgeti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__mxdrktor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__mxdrktor]  DEFAULT ((0)) FOR [mxdrktor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__bld__rot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__bld__rot]  DEFAULT ('') FOR [bld__rot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg0]  DEFAULT ((0)) FOR [pctinkg0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg1]  DEFAULT ((0)) FOR [pctinkg1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg2]  DEFAULT ((0)) FOR [pctinkg2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg3]  DEFAULT ((0)) FOR [pctinkg3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg4]  DEFAULT ((0)) FOR [pctinkg4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg5]  DEFAULT ((0)) FOR [pctinkg5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg6]  DEFAULT ((0)) FOR [pctinkg6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_epersn__pctinkg7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[epersn__] ADD  CONSTRAINT [DF_epersn__pctinkg7]  DEFAULT ((0)) FOR [pctinkg7]
END

