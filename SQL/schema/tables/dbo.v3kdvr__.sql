SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3kdvr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3kdvr__](
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [int] NOT NULL,
	[afw__ins] [int] NOT NULL,
	[score___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm_orig] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [float] NOT NULL,
	[art_oms2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtmin_x] [float] NOT NULL,
	[fmtmin_y] [float] NOT NULL,
	[lpr__min] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtdrk_b] [float] NOT NULL,
	[fmtdrk_l] [float] NOT NULL,
	[lpr__drk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtpap_b] [float] NOT NULL,
	[fmtpap_l] [float] NOT NULL,
	[lpr__pap] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewicht_] [float] NOT NULL,
	[gewstusr] [float] NOT NULL,
	[posespap] [int] NOT NULL,
	[poses__1] [int] NOT NULL,
	[poses__2] [int] NOT NULL,
	[type_sny] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[haaks_sn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[algafcum] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[algstins] [float] NOT NULL,
	[algprins] [float] NOT NULL,
	[vrbdvr__] [float] NOT NULL,
	[vrbpap__] [float] NOT NULL,
	[vrbpapkg] [float] NOT NULL,
	[vrbpapm2] [float] NOT NULL,
	[vrbdvr_2] [float] NOT NULL,
	[vrbpa2__] [float] NOT NULL,
	[vrbpa2kg] [float] NOT NULL,
	[vrbpa2m2] [float] NOT NULL,
	[vrbdvr_3] [float] NOT NULL,
	[vrbpa3__] [float] NOT NULL,
	[vrbpa3kg] [float] NOT NULL,
	[vrbpa3m2] [float] NOT NULL,
	[papprrek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papprtyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pappr___] [float] NOT NULL,
	[pap__kst] [float] NOT NULL,
	[pa2__kst] [float] NOT NULL,
	[pa3__kst] [float] NOT NULL,
	[pak__inh] [float] NOT NULL,
	[bstmin__] [float] NOT NULL,
	[extra___] [float] NOT NULL,
	[extra_kg] [float] NOT NULL,
	[extra_m2] [float] NOT NULL,
	[extrakst] [float] NOT NULL,
	[opl_prst] [int] NOT NULL,
	[prst_rek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prf__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tydv_plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tydp_plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant__plt] [int] NOT NULL,
	[ant_wplt] [int] NOT NULL,
	[ant_lplt] [int] NOT NULL,
	[ant__prf] [int] NOT NULL,
	[prf_btst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prf_otst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[firstmnt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tydu_mnt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tydp_mnt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__bld] [int] NOT NULL,
	[ant__bld] [int] NOT NULL,
	[tydp_uit] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[basisbre] [float] NOT NULL,
	[basislen] [float] NOT NULL,
	[gvd_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gvd__dat] [date] NOT NULL,
	[gvd__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gvd__com] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[scr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gangpool] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[isganged] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_pag] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[fmtsht_b] [float] NOT NULL,
	[artshref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrbshtm_] [float] NOT NULL,
	[vrbshtkg] [float] NOT NULL,
	[vrbshtm2] [float] NOT NULL,
 CONSTRAINT [v3kdvri1] PRIMARY KEY CLUSTERED 
(
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3kdvr__]') AND name = N'v3kdvri2')
CREATE NONCLUSTERED INDEX [v3kdvri2] ON [dbo].[v3kdvr__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3kdvr__]') AND name = N'v3kdvri3')
CREATE NONCLUSTERED INDEX [v3kdvri3] ON [dbo].[v3kdvr__]
(
	[off__ref] ASC,
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrm__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrm__vnr]  DEFAULT ('') FOR [vrm__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__afw__ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__afw__ins]  DEFAULT ((0)) FOR [afw__ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__score___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__score___]  DEFAULT ('') FOR [score___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrm_orig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrm_orig]  DEFAULT ('') FOR [vrm_orig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__grammage]  DEFAULT ((0)) FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__art_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__art_oms2]  DEFAULT ('') FOR [art_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__art__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__art__tst]  DEFAULT ('') FOR [art__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__fmtmin_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__fmtmin_x]  DEFAULT ((0)) FOR [fmtmin_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__fmtmin_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__fmtmin_y]  DEFAULT ((0)) FOR [fmtmin_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__lpr__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__lpr__min]  DEFAULT ('') FOR [lpr__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__fmtdrk_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__fmtdrk_b]  DEFAULT ((0)) FOR [fmtdrk_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__fmtdrk_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__fmtdrk_l]  DEFAULT ((0)) FOR [fmtdrk_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__lpr__drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__lpr__drk]  DEFAULT ('') FOR [lpr__drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__fmtpap_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__fmtpap_b]  DEFAULT ((0)) FOR [fmtpap_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__fmtpap_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__fmtpap_l]  DEFAULT ((0)) FOR [fmtpap_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__lpr__pap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__lpr__pap]  DEFAULT ('') FOR [lpr__pap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__gewicht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__gewicht_]  DEFAULT ((0)) FOR [gewicht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__gewstusr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__gewstusr]  DEFAULT ((0)) FOR [gewstusr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__posespap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__posespap]  DEFAULT ((0)) FOR [posespap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__poses__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__poses__1]  DEFAULT ((0)) FOR [poses__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__poses__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__poses__2]  DEFAULT ((0)) FOR [poses__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__type_sny]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__type_sny]  DEFAULT ('') FOR [type_sny]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__haaks_sn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__haaks_sn]  DEFAULT ('') FOR [haaks_sn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__algafcum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__algafcum]  DEFAULT ('') FOR [algafcum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__algstins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__algstins]  DEFAULT ((0)) FOR [algstins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__algprins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__algprins]  DEFAULT ((0)) FOR [algprins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbdvr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbdvr__]  DEFAULT ((0)) FOR [vrbdvr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpap__]  DEFAULT ((0)) FOR [vrbpap__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpapkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpapkg]  DEFAULT ((0)) FOR [vrbpapkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpapm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpapm2]  DEFAULT ((0)) FOR [vrbpapm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbdvr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbdvr_2]  DEFAULT ((0)) FOR [vrbdvr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpa2__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpa2__]  DEFAULT ((0)) FOR [vrbpa2__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpa2kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpa2kg]  DEFAULT ((0)) FOR [vrbpa2kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpa2m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpa2m2]  DEFAULT ((0)) FOR [vrbpa2m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbdvr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbdvr_3]  DEFAULT ((0)) FOR [vrbdvr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpa3__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpa3__]  DEFAULT ((0)) FOR [vrbpa3__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpa3kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpa3kg]  DEFAULT ((0)) FOR [vrbpa3kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbpa3m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbpa3m2]  DEFAULT ((0)) FOR [vrbpa3m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__papprrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__papprrek]  DEFAULT ('') FOR [papprrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__papprtyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__papprtyp]  DEFAULT ('') FOR [papprtyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pap__kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pap__kom]  DEFAULT ('') FOR [pap__kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pappr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pappr___]  DEFAULT ((0)) FOR [pappr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pap__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pap__kst]  DEFAULT ((0)) FOR [pap__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pa2__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pa2__kst]  DEFAULT ((0)) FOR [pa2__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pa3__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pa3__kst]  DEFAULT ((0)) FOR [pa3__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__pak__inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__pak__inh]  DEFAULT ((0)) FOR [pak__inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__bstmin__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__bstmin__]  DEFAULT ((0)) FOR [bstmin__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__extra___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__extra___]  DEFAULT ((0)) FOR [extra___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__extra_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__extra_kg]  DEFAULT ((0)) FOR [extra_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__extra_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__extra_m2]  DEFAULT ((0)) FOR [extra_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__extrakst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__extrakst]  DEFAULT ((0)) FOR [extrakst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__opl_prst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__opl_prst]  DEFAULT ((0)) FOR [opl_prst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__prst_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__prst_rek]  DEFAULT ('') FOR [prst_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__prf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__prf__ref]  DEFAULT ('') FOR [prf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__plt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__plt__ref]  DEFAULT ('') FOR [plt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tydv_plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tydv_plt]  DEFAULT ('') FOR [tydv_plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tydp_plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tydp_plt]  DEFAULT ('') FOR [tydp_plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__ant__plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__ant__plt]  DEFAULT ((0)) FOR [ant__plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__ant_wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__ant_wplt]  DEFAULT ((0)) FOR [ant_wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__ant_lplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__ant_lplt]  DEFAULT ((0)) FOR [ant_lplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__ant__prf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__ant__prf]  DEFAULT ((0)) FOR [ant__prf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__prf_btst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__prf_btst]  DEFAULT ('') FOR [prf_btst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__prf_otst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__prf_otst]  DEFAULT ('') FOR [prf_otst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__firstmnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__firstmnt]  DEFAULT ('') FOR [firstmnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tydu_mnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tydu_mnt]  DEFAULT ('') FOR [tydu_mnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tydp_mnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tydp_mnt]  DEFAULT ('') FOR [tydp_mnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__mnt__bld]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__mnt__bld]  DEFAULT ((0)) FOR [mnt__bld]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__ant__bld]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__ant__bld]  DEFAULT ((0)) FOR [ant__bld]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tydp_uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tydp_uit]  DEFAULT ('') FOR [tydp_uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__basisbre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__basisbre]  DEFAULT ((0)) FOR [basisbre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__basislen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__basislen]  DEFAULT ((0)) FOR [basislen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__gvd_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__gvd_____]  DEFAULT ('') FOR [gvd_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__gvd__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__gvd__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvd__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__gvd__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__gvd__uur]  DEFAULT ('') FOR [gvd__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__gvd__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__gvd__com]  DEFAULT ('') FOR [gvd__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__scr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__scr__ref]  DEFAULT ('') FOR [scr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__gangpool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__gangpool]  DEFAULT ('') FOR [gangpool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__isganged]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__isganged]  DEFAULT ('') FOR [isganged]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__aant_pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__aant_pag]  DEFAULT ((0)) FOR [aant_pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__fmtsht_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__fmtsht_b]  DEFAULT ((0)) FOR [fmtsht_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__artshref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__artshref]  DEFAULT ('') FOR [artshref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbshtm_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbshtm_]  DEFAULT ((0)) FOR [vrbshtm_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbshtkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbshtkg]  DEFAULT ((0)) FOR [vrbshtkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdvr__vrbshtm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdvr__] ADD  CONSTRAINT [DF_v3kdvr__vrbshtm2]  DEFAULT ((0)) FOR [vrbshtm2]
END

