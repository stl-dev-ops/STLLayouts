SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1kpn___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1kpn___](
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[elm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pwe__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aard____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[score___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](22) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommentv] [nvarchar](22) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommentd] [nvarchar](22) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkprrpn] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkprref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs1_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[spd___p1] [int] NOT NULL,
	[spdusrp1] [int] NOT NULL,
	[prs2_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[spd___p2] [int] NOT NULL,
	[spdusrp2] [int] NOT NULL,
	[ovt1nadr] [int] NOT NULL,
	[ovt2nadr] [int] NOT NULL,
	[fmtsl__b] [float] NOT NULL,
	[fmtsl__l] [float] NOT NULL,
	[loopr_af] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtop__b] [float] NOT NULL,
	[fmtop__l] [float] NOT NULL,
	[fmtkom_1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[sl_op_b_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtmin_b] [float] NOT NULL,
	[fmtmin_l] [float] NOT NULL,
	[looprdvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtkom_2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[rug_____] [float] NOT NULL,
	[flap___l] [float] NOT NULL,
	[flap___r] [float] NOT NULL,
	[flap___b] [float] NOT NULL,
	[flap___o] [float] NOT NULL,
	[tsssnt_h] [float] NOT NULL,
	[tsssnt_v] [float] NOT NULL,
	[grijpers] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grijpwit] [float] NOT NULL,
	[stripwit] [float] NOT NULL,
	[oversl_t] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oversl_l] [float] NOT NULL,
	[kader___] [float] NOT NULL,
	[vouwkorr] [float] NOT NULL,
	[aflopend] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsssn_or] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[det_pv_1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[det_pv_2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[poses___] [int] NOT NULL,
	[poses__x] [int] NOT NULL,
	[poses__y] [int] NOT NULL,
	[poseblrp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[posvrhou] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[pagsper_] [int] NOT NULL,
	[pagspvel] [int] NOT NULL,
	[symm_mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[symm____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[elmprflm] [float] NOT NULL,
	[el______] [float] NOT NULL,
	[fl______] [float] NOT NULL,
	[flms_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[code____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mntbraut] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[duppmant] [int] NOT NULL,
	[oripmant] [int] NOT NULL,
	[dup__per] [int] NOT NULL,
	[dup____b] [float] NOT NULL,
	[dup____l] [float] NOT NULL,
	[ant_pags] [int] NOT NULL,
	[ant_glk_] [int] NOT NULL,
	[tekstpag] [int] NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_peh] [float] NOT NULL,
	[pap__kom] [nvarchar](28) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_cost] [float] NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedte_] [int] NOT NULL,
	[lengte__] [int] NOT NULL,
	[art_oms2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[tresv___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__res] [date] NOT NULL,
	[poses_pd] [int] NOT NULL,
	[type_sny] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[haaks_sn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[snijder_] [nvarchar](23) COLLATE Latin1_General_CI_AS NOT NULL,
	[schema__] [nvarchar](23) COLLATE Latin1_General_CI_AS NOT NULL,
	[bestemm_] [nvarchar](45) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedtsn] [float] NOT NULL,
	[lengtesn] [float] NOT NULL,
	[dvfmt___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkinsvs] [int] NOT NULL,
	[drkinspr] [float] NOT NULL,
	[afwinsvs] [int] NOT NULL,
	[afwinspr] [float] NOT NULL,
	[drkinsto] [int] NOT NULL,
	[afwinsto] [int] NOT NULL,
	[vr1ins__] [int] NOT NULL,
	[macins__] [int] NOT NULL,
	[drkinsvu] [int] NOT NULL,
	[drkinspu] [float] NOT NULL,
	[macins_u] [int] NOT NULL,
	[basisant] [int] NOT NULL,
	[tedrkant] [int] NOT NULL,
	[hoev_drv] [int] NOT NULL,
	[hv_vr_vl] [int] NOT NULL,
	[hv_vr_kg] [float] NOT NULL,
	[gewicht_] [float] NOT NULL,
	[gewstusr] [float] NOT NULL,
	[antklr_r] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbpr] [int] NOT NULL,
	[pltn___r] [int] NOT NULL,
	[wissel_r] [int] NOT NULL,
	[wisklr_r] [int] NOT NULL,
	[klcod__r] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[antklr_v] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrbpv] [int] NOT NULL,
	[pltn___v] [int] NOT NULL,
	[wissel_v] [int] NOT NULL,
	[wisklr_v] [int] NOT NULL,
	[klcod__v] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[tbdopppd] [float] NOT NULL,
	[ink__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exstel__] [int] NOT NULL,
	[klcr_kom] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcv_kom] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafwh1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafwh2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafwh3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafwh4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafwh5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafwh6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_keu1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_prc1] [int] NOT NULL,
	[ant_vst1] [int] NOT NULL,
	[num_pose] [int] NOT NULL,
	[num__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[instelln] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[num__spd] [float] NOT NULL,
	[num_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[num_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[numprvst] [float] NOT NULL,
	[numpr___] [float] NOT NULL,
	[num__lev] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_keu2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[antsprc2] [int] NOT NULL,
	[antsvst2] [int] NOT NULL,
	[inks_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laks_vrb] [int] NOT NULL,
	[laks_plw] [int] NOT NULL,
	[laks_plv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[antwprc2] [int] NOT NULL,
	[antwvst2] [int] NOT NULL,
	[inkw_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lakw_vrb] [int] NOT NULL,
	[lakw_plw] [int] NOT NULL,
	[lakw_plv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lak_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[lak_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[lak_pose] [int] NOT NULL,
	[lakprvst] [float] NOT NULL,
	[lakpr___] [float] NOT NULL,
	[lak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lak__lev] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lakvlbre] [float] NOT NULL,
	[lakvllen] [float] NOT NULL,
	[ant_keu3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_prc3] [int] NOT NULL,
	[ant_vst3] [int] NOT NULL,
	[pla_zijd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plastref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[instellp] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pla__spd] [float] NOT NULL,
	[pla_lost] [float] NOT NULL,
	[pla_pose] [int] NOT NULL,
	[pla_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[pla_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[plaprvst] [float] NOT NULL,
	[plapr___] [float] NOT NULL,
	[pla__lev] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plavlbre] [float] NOT NULL,
	[plavllen] [float] NOT NULL,
	[ant_keu4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_prc4] [int] NOT NULL,
	[ant_vst4] [int] NOT NULL,
	[ril_pose] [int] NOT NULL,
	[ril__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[instellr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ril__spd] [float] NOT NULL,
	[ril_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[ril_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rilprvst] [float] NOT NULL,
	[rilpr___] [float] NOT NULL,
	[ril__lev] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_keu5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_prc5] [int] NOT NULL,
	[ant_vst5] [int] NOT NULL,
	[vwn_pose] [int] NOT NULL,
	[vwn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[instellv] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stapkpnv] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dlp_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwn__spd] [float] NOT NULL,
	[vwn_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwn_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwnprvst] [float] NOT NULL,
	[vwnpr___] [float] NOT NULL,
	[vwn__lev] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_keu6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_prc6] [int] NOT NULL,
	[ant_vst6] [int] NOT NULL,
	[afw__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[instella] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__spd] [float] NOT NULL,
	[prysatyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prysapeh] [float] NOT NULL,
	[grdvrb_a] [float] NOT NULL,
	[and_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[and_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[andprvst] [float] NOT NULL,
	[andpr___] [float] NOT NULL,
	[and__lev] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_keu7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_prc7] [int] NOT NULL,
	[ant_vst7] [int] NOT NULL,
	[nsn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsnkpsty] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsnvbtps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn__tps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsn_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsnprvst] [float] NOT NULL,
	[nsnpr___] [float] NOT NULL,
	[ant_keu8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_prc8] [int] NOT NULL,
	[ant_vst8] [int] NOT NULL,
	[vsn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsnkpsty] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsnvbtps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn__tps] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn_komm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsn_kobr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsnprvst] [float] NOT NULL,
	[vsnpr___] [float] NOT NULL,
	[crelmkpn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[crpwekpn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[optpwemg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_rekwy] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_plw__] [int] NOT NULL,
	[bw_plwdv] [int] NOT NULL,
	[bw_plwkm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_stltd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_stlt2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_stlkm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_wastd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_wast2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_waskm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_montd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_mongr] [float] NOT NULL,
	[bw_monkm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_monvl] [int] NOT NULL,
	[bw_mon_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_plk_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_bldrk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_bldra] [int] NOT NULL,
	[bw_uithl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_ps_ng] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bw_wiskr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp_____] [float] NOT NULL,
	[suppl___] [float] NOT NULL,
	[extdv___] [float] NOT NULL,
	[plwis___] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1kpn_i1] PRIMARY KEY CLUSTERED 
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1kpn___]') AND name = N'v1kpn_i2')
CREATE NONCLUSTERED INDEX [v1kpn_i2] ON [dbo].[v1kpn___]
(
	[off__ref] ASC,
	[aard____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpn__srt]  DEFAULT ('') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___elm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___elm__ref]  DEFAULT ('') FOR [elm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pwe__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pwe__ref]  DEFAULT ('') FOR [pwe__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___aard____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___aard____]  DEFAULT ('') FOR [aard____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___score___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___score___]  DEFAULT ('') FOR [score___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kommentv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kommentv]  DEFAULT ('') FOR [kommentv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kommentd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kommentd]  DEFAULT ('') FOR [kommentd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___drkprrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___drkprrpn]  DEFAULT ('') FOR [drkprrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___drkprref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___drkprref]  DEFAULT ('') FOR [drkprref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___prs1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___prs1_ref]  DEFAULT ('') FOR [prs1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___spd___p1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___spd___p1]  DEFAULT ((0)) FOR [spd___p1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___spdusrp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___spdusrp1]  DEFAULT ((0)) FOR [spdusrp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___prs2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___prs2_ref]  DEFAULT ('') FOR [prs2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___spd___p2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___spd___p2]  DEFAULT ((0)) FOR [spd___p2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___spdusrp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___spdusrp2]  DEFAULT ((0)) FOR [spdusrp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ovt1nadr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ovt1nadr]  DEFAULT ((0)) FOR [ovt1nadr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ovt2nadr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ovt2nadr]  DEFAULT ((0)) FOR [ovt2nadr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtsl__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtsl__b]  DEFAULT ((0)) FOR [fmtsl__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtsl__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtsl__l]  DEFAULT ((0)) FOR [fmtsl__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___loopr_af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___loopr_af]  DEFAULT ('') FOR [loopr_af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtop__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtop__b]  DEFAULT ((0)) FOR [fmtop__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtop__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtop__l]  DEFAULT ((0)) FOR [fmtop__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtkom_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtkom_1]  DEFAULT ('') FOR [fmtkom_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___sl_op_b_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___sl_op_b_]  DEFAULT ('') FOR [sl_op_b_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtmin_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtmin_b]  DEFAULT ((0)) FOR [fmtmin_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtmin_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtmin_l]  DEFAULT ((0)) FOR [fmtmin_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___looprdvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___looprdvl]  DEFAULT ('') FOR [looprdvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fmtkom_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fmtkom_2]  DEFAULT ('') FOR [fmtkom_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___flap___l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___flap___l]  DEFAULT ((0)) FOR [flap___l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___flap___r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___flap___r]  DEFAULT ((0)) FOR [flap___r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___flap___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___flap___b]  DEFAULT ((0)) FOR [flap___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___flap___o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___flap___o]  DEFAULT ((0)) FOR [flap___o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___tsssnt_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___tsssnt_h]  DEFAULT ((0)) FOR [tsssnt_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___tsssnt_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___tsssnt_v]  DEFAULT ((0)) FOR [tsssnt_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___grijpers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___grijpers]  DEFAULT ('') FOR [grijpers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___grijpwit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___grijpwit]  DEFAULT ((0)) FOR [grijpwit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___stripwit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___stripwit]  DEFAULT ((0)) FOR [stripwit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___oversl_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___oversl_t]  DEFAULT ('') FOR [oversl_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___oversl_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___oversl_l]  DEFAULT ((0)) FOR [oversl_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kader___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kader___]  DEFAULT ((0)) FOR [kader___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vouwkorr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vouwkorr]  DEFAULT ((0)) FOR [vouwkorr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___aflopend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___aflopend]  DEFAULT ('') FOR [aflopend]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___tsssn_or]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___tsssn_or]  DEFAULT ('') FOR [tsssn_or]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___det_pv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___det_pv_1]  DEFAULT ('') FOR [det_pv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___det_pv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___det_pv_2]  DEFAULT ('') FOR [det_pv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___poses___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___poses___]  DEFAULT ((0)) FOR [poses___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___poses__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___poses__x]  DEFAULT ((0)) FOR [poses__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___poses__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___poses__y]  DEFAULT ((0)) FOR [poses__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___poseblrp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___poseblrp]  DEFAULT ('') FOR [poseblrp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___posvrhou]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___posvrhou]  DEFAULT ('') FOR [posvrhou]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pagsper_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pagsper_]  DEFAULT ((0)) FOR [pagsper_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pagspvel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pagspvel]  DEFAULT ((0)) FOR [pagspvel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___symm_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___symm_mog]  DEFAULT ('') FOR [symm_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___symm____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___symm____]  DEFAULT ('') FOR [symm____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___elmprflm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___elmprflm]  DEFAULT ((0)) FOR [elmprflm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___el______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___el______]  DEFAULT ((0)) FOR [el______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___fl______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___fl______]  DEFAULT ((0)) FOR [fl______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___flms_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___flms_ref]  DEFAULT ('') FOR [flms_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___code____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___code____]  DEFAULT ('') FOR [code____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___mntbraut]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___mntbraut]  DEFAULT ('') FOR [mntbraut]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___duppmant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___duppmant]  DEFAULT ((0)) FOR [duppmant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___oripmant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___oripmant]  DEFAULT ((0)) FOR [oripmant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___dup__per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___dup__per]  DEFAULT ((0)) FOR [dup__per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___dup____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___dup____b]  DEFAULT ((0)) FOR [dup____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___dup____l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___dup____l]  DEFAULT ((0)) FOR [dup____l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_pags]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_pags]  DEFAULT ((0)) FOR [ant_pags]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_glk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_glk_]  DEFAULT ((0)) FOR [ant_glk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___tekstpag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___tekstpag]  DEFAULT ((0)) FOR [tekstpag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___grammage]  DEFAULT ('') FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___prys_typ]  DEFAULT ('') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___prys_peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___prys_peh]  DEFAULT ((0)) FOR [prys_peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pap__kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pap__kom]  DEFAULT ('') FOR [pap__kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pap_cost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pap_cost]  DEFAULT ((0)) FOR [pap_cost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___looprich]  DEFAULT ('') FOR [looprich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lengte__]  DEFAULT ((0)) FOR [lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___art_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___art_oms2]  DEFAULT ('') FOR [art_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___tresv___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___tresv___]  DEFAULT ('') FOR [tresv___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___dat__res]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___dat__res]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__res]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___poses_pd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___poses_pd]  DEFAULT ((0)) FOR [poses_pd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___type_sny]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___type_sny]  DEFAULT ('') FOR [type_sny]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___haaks_sn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___haaks_sn]  DEFAULT ('') FOR [haaks_sn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___snijder_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___snijder_]  DEFAULT ('') FOR [snijder_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___schema__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___schema__]  DEFAULT ('') FOR [schema__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bestemm_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bestemm_]  DEFAULT ('') FOR [bestemm_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___breedtsn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___breedtsn]  DEFAULT ((0)) FOR [breedtsn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lengtesn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lengtesn]  DEFAULT ((0)) FOR [lengtesn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___dvfmt___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___dvfmt___]  DEFAULT ('') FOR [dvfmt___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___drkinsvs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___drkinsvs]  DEFAULT ((0)) FOR [drkinsvs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___drkinspr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___drkinspr]  DEFAULT ((0)) FOR [drkinspr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___afwinsvs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___afwinsvs]  DEFAULT ((0)) FOR [afwinsvs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___afwinspr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___afwinspr]  DEFAULT ((0)) FOR [afwinspr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___drkinsto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___drkinsto]  DEFAULT ((0)) FOR [drkinsto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___afwinsto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___afwinsto]  DEFAULT ((0)) FOR [afwinsto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vr1ins__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vr1ins__]  DEFAULT ((0)) FOR [vr1ins__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___macins__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___macins__]  DEFAULT ((0)) FOR [macins__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___drkinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___drkinsvu]  DEFAULT ((0)) FOR [drkinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___drkinspu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___drkinspu]  DEFAULT ((0)) FOR [drkinspu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___macins_u]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___macins_u]  DEFAULT ((0)) FOR [macins_u]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___basisant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___basisant]  DEFAULT ((0)) FOR [basisant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___tedrkant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___tedrkant]  DEFAULT ((0)) FOR [tedrkant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___hoev_drv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___hoev_drv]  DEFAULT ((0)) FOR [hoev_drv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___hv_vr_vl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___hv_vr_vl]  DEFAULT ((0)) FOR [hv_vr_vl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___hv_vr_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___hv_vr_kg]  DEFAULT ((0)) FOR [hv_vr_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___gewicht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___gewicht_]  DEFAULT ((0)) FOR [gewicht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___gewstusr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___gewstusr]  DEFAULT ((0)) FOR [gewstusr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___antklr_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___antklr_r]  DEFAULT ('') FOR [antklr_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___inkvrbpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___inkvrbpr]  DEFAULT ((0)) FOR [inkvrbpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pltn___r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pltn___r]  DEFAULT ((0)) FOR [pltn___r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___wissel_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___wissel_r]  DEFAULT ((0)) FOR [wissel_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___wisklr_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___wisklr_r]  DEFAULT ((0)) FOR [wisklr_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___klcod__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___klcod__r]  DEFAULT ('') FOR [klcod__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___antklr_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___antklr_v]  DEFAULT ('') FOR [antklr_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___inkvrbpv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___inkvrbpv]  DEFAULT ((0)) FOR [inkvrbpv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pltn___v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pltn___v]  DEFAULT ((0)) FOR [pltn___v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___wissel_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___wissel_v]  DEFAULT ((0)) FOR [wissel_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___wisklr_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___wisklr_v]  DEFAULT ((0)) FOR [wisklr_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___klcod__v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___klcod__v]  DEFAULT ('') FOR [klcod__v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___tbdopppd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___tbdopppd]  DEFAULT ((0)) FOR [tbdopppd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ink__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ink__typ]  DEFAULT ('') FOR [ink__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___exstel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___exstel__]  DEFAULT ((0)) FOR [exstel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___klcr_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___klcr_kom]  DEFAULT ('') FOR [klcr_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___klcv_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___klcv_kom]  DEFAULT ('') FOR [klcv_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafw_1]  DEFAULT ('') FOR [kpnafw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafw_2]  DEFAULT ('') FOR [kpnafw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafw_3]  DEFAULT ('') FOR [kpnafw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafw_4]  DEFAULT ('') FOR [kpnafw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafw_5]  DEFAULT ('') FOR [kpnafw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafw_6]  DEFAULT ('') FOR [kpnafw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafw_7]  DEFAULT ('') FOR [kpnafw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafwh1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafwh1]  DEFAULT ('') FOR [kpnafwh1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafwh2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafwh2]  DEFAULT ('') FOR [kpnafwh2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafwh3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafwh3]  DEFAULT ('') FOR [kpnafwh3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafwh4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafwh4]  DEFAULT ('') FOR [kpnafwh4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafwh5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafwh5]  DEFAULT ('') FOR [kpnafwh5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___kpnafwh6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___kpnafwh6]  DEFAULT ('') FOR [kpnafwh6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu1]  DEFAULT ('') FOR [ant_keu1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_prc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_prc1]  DEFAULT ((0)) FOR [ant_prc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_vst1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_vst1]  DEFAULT ((0)) FOR [ant_vst1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___num_pose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___num_pose]  DEFAULT ((0)) FOR [num_pose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___num__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___num__ref]  DEFAULT ('') FOR [num__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___instelln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___instelln]  DEFAULT ('') FOR [instelln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___num__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___num__spd]  DEFAULT ((0)) FOR [num__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___num_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___num_komm]  DEFAULT ('') FOR [num_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___num_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___num_kobr]  DEFAULT ('') FOR [num_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___numprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___numprvst]  DEFAULT ((0)) FOR [numprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___numpr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___numpr___]  DEFAULT ((0)) FOR [numpr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___num__lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___num__lev]  DEFAULT ('') FOR [num__lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu2]  DEFAULT ('') FOR [ant_keu2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___antsprc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___antsprc2]  DEFAULT ((0)) FOR [antsprc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___antsvst2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___antsvst2]  DEFAULT ((0)) FOR [antsvst2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___inks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___inks_ref]  DEFAULT ('') FOR [inks_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___laks_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___laks_vrb]  DEFAULT ((0)) FOR [laks_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___laks_plw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___laks_plw]  DEFAULT ((0)) FOR [laks_plw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___laks_plv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___laks_plv]  DEFAULT ('') FOR [laks_plv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___antwprc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___antwprc2]  DEFAULT ((0)) FOR [antwprc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___antwvst2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___antwvst2]  DEFAULT ((0)) FOR [antwvst2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___inkw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___inkw_ref]  DEFAULT ('') FOR [inkw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lakw_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lakw_vrb]  DEFAULT ((0)) FOR [lakw_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lakw_plw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lakw_plw]  DEFAULT ((0)) FOR [lakw_plw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lakw_plv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lakw_plv]  DEFAULT ('') FOR [lakw_plv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lak_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lak_komm]  DEFAULT ('') FOR [lak_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lak_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lak_kobr]  DEFAULT ('') FOR [lak_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lak_pose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lak_pose]  DEFAULT ((0)) FOR [lak_pose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lakprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lakprvst]  DEFAULT ((0)) FOR [lakprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lakpr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lakpr___]  DEFAULT ((0)) FOR [lakpr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lak__ref]  DEFAULT ('') FOR [lak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lak__lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lak__lev]  DEFAULT ('') FOR [lak__lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lakvlbre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lakvlbre]  DEFAULT ((0)) FOR [lakvlbre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___lakvllen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___lakvllen]  DEFAULT ((0)) FOR [lakvllen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu3]  DEFAULT ('') FOR [ant_keu3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_prc3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_prc3]  DEFAULT ((0)) FOR [ant_prc3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_vst3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_vst3]  DEFAULT ((0)) FOR [ant_vst3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla_zijd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla_zijd]  DEFAULT ('') FOR [pla_zijd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___plastref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___plastref]  DEFAULT ('') FOR [plastref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla__ref]  DEFAULT ('') FOR [pla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___instellp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___instellp]  DEFAULT ('') FOR [instellp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla__spd]  DEFAULT ((0)) FOR [pla__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla_lost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla_lost]  DEFAULT ((0)) FOR [pla_lost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla_pose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla_pose]  DEFAULT ((0)) FOR [pla_pose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla_komm]  DEFAULT ('') FOR [pla_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla_kobr]  DEFAULT ('') FOR [pla_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___plaprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___plaprvst]  DEFAULT ((0)) FOR [plaprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___plapr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___plapr___]  DEFAULT ((0)) FOR [plapr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___pla__lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___pla__lev]  DEFAULT ('') FOR [pla__lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___plavlbre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___plavlbre]  DEFAULT ((0)) FOR [plavlbre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___plavllen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___plavllen]  DEFAULT ((0)) FOR [plavllen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu4]  DEFAULT ('') FOR [ant_keu4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_prc4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_prc4]  DEFAULT ((0)) FOR [ant_prc4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_vst4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_vst4]  DEFAULT ((0)) FOR [ant_vst4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ril_pose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ril_pose]  DEFAULT ((0)) FOR [ril_pose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ril__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ril__ref]  DEFAULT ('') FOR [ril__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___instellr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___instellr]  DEFAULT ('') FOR [instellr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ril__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ril__spd]  DEFAULT ((0)) FOR [ril__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ril_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ril_komm]  DEFAULT ('') FOR [ril_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ril_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ril_kobr]  DEFAULT ('') FOR [ril_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___rilprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___rilprvst]  DEFAULT ((0)) FOR [rilprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___rilpr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___rilpr___]  DEFAULT ((0)) FOR [rilpr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ril__lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ril__lev]  DEFAULT ('') FOR [ril__lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu5]  DEFAULT ('') FOR [ant_keu5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_prc5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_prc5]  DEFAULT ((0)) FOR [ant_prc5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_vst5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_vst5]  DEFAULT ((0)) FOR [ant_vst5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwn_pose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwn_pose]  DEFAULT ((0)) FOR [vwn_pose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwn__ref]  DEFAULT ('') FOR [vwn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___instellv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___instellv]  DEFAULT ('') FOR [instellv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___stapkpnv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___stapkpnv]  DEFAULT ('') FOR [stapkpnv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___dlp_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___dlp_____]  DEFAULT ('') FOR [dlp_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwn__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwn__spd]  DEFAULT ((0)) FOR [vwn__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwn_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwn_komm]  DEFAULT ('') FOR [vwn_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwn_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwn_kobr]  DEFAULT ('') FOR [vwn_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwnprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwnprvst]  DEFAULT ((0)) FOR [vwnprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwnpr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwnpr___]  DEFAULT ((0)) FOR [vwnpr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vwn__lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vwn__lev]  DEFAULT ('') FOR [vwn__lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu6]  DEFAULT ('') FOR [ant_keu6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_prc6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_prc6]  DEFAULT ((0)) FOR [ant_prc6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_vst6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_vst6]  DEFAULT ((0)) FOR [ant_vst6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___afw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___afw__ref]  DEFAULT ('') FOR [afw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___instella]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___instella]  DEFAULT ('') FOR [instella]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___afw__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___afw__spd]  DEFAULT ((0)) FOR [afw__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___prysatyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___prysatyp]  DEFAULT ('') FOR [prysatyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___prysapeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___prysapeh]  DEFAULT ((0)) FOR [prysapeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___grdvrb_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___grdvrb_a]  DEFAULT ((0)) FOR [grdvrb_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___and_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___and_komm]  DEFAULT ('') FOR [and_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___and_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___and_kobr]  DEFAULT ('') FOR [and_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___andprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___andprvst]  DEFAULT ((0)) FOR [andprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___andpr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___andpr___]  DEFAULT ((0)) FOR [andpr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___and__lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___and__lev]  DEFAULT ('') FOR [and__lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu7]  DEFAULT ('') FOR [ant_keu7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_prc7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_prc7]  DEFAULT ((0)) FOR [ant_prc7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_vst7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_vst7]  DEFAULT ((0)) FOR [ant_vst7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsn__ref]  DEFAULT ('') FOR [nsn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsnkpsty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsnkpsty]  DEFAULT ('') FOR [nsnkpsty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsnvbtps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsnvbtps]  DEFAULT ('') FOR [nsnvbtps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsn__tps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsn__tps]  DEFAULT ('') FOR [nsn__tps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsn_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsn_komm]  DEFAULT ('') FOR [nsn_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsn_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsn_kobr]  DEFAULT ('') FOR [nsn_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsnprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsnprvst]  DEFAULT ((0)) FOR [nsnprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___nsnpr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___nsnpr___]  DEFAULT ((0)) FOR [nsnpr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_keu8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_keu8]  DEFAULT ('') FOR [ant_keu8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_prc8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_prc8]  DEFAULT ((0)) FOR [ant_prc8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___ant_vst8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___ant_vst8]  DEFAULT ((0)) FOR [ant_vst8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsn__ref]  DEFAULT ('') FOR [vsn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsnkpsty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsnkpsty]  DEFAULT ('') FOR [vsnkpsty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsnvbtps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsnvbtps]  DEFAULT ('') FOR [vsnvbtps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsn__tps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsn__tps]  DEFAULT ('') FOR [vsn__tps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsn_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsn_komm]  DEFAULT ('') FOR [vsn_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsn_kobr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsn_kobr]  DEFAULT ('') FOR [vsn_kobr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsnprvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsnprvst]  DEFAULT ((0)) FOR [vsnprvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vsnpr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vsnpr___]  DEFAULT ((0)) FOR [vsnpr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___crelmkpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___crelmkpn]  DEFAULT ('') FOR [crelmkpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___crpwekpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___crpwekpn]  DEFAULT ('') FOR [crpwekpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___optpwemg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___optpwemg]  DEFAULT ('') FOR [optpwemg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_rekwy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_rekwy]  DEFAULT ('') FOR [bw_rekwy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_plw__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_plw__]  DEFAULT ((0)) FOR [bw_plw__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_plwdv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_plwdv]  DEFAULT ((0)) FOR [bw_plwdv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_plwkm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_plwkm]  DEFAULT ('') FOR [bw_plwkm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_stltd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_stltd]  DEFAULT ('') FOR [bw_stltd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_stlt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_stlt2]  DEFAULT ('') FOR [bw_stlt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_stlkm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_stlkm]  DEFAULT ('') FOR [bw_stlkm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_wastd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_wastd]  DEFAULT ('') FOR [bw_wastd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_wast2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_wast2]  DEFAULT ('') FOR [bw_wast2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_waskm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_waskm]  DEFAULT ('') FOR [bw_waskm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_montd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_montd]  DEFAULT ('') FOR [bw_montd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_mongr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_mongr]  DEFAULT ((0)) FOR [bw_mongr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_monkm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_monkm]  DEFAULT ('') FOR [bw_monkm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_monvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_monvl]  DEFAULT ((0)) FOR [bw_monvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_mon_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_mon_t]  DEFAULT ('') FOR [bw_mon_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_plk_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_plk_t]  DEFAULT ('') FOR [bw_plk_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_bldrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_bldrk]  DEFAULT ('') FOR [bw_bldrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_bldra]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_bldra]  DEFAULT ((0)) FOR [bw_bldra]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_uithl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_uithl]  DEFAULT ('') FOR [bw_uithl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_ps_ng]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_ps_ng]  DEFAULT ('') FOR [bw_ps_ng]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___bw_wiskr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___bw_wiskr]  DEFAULT ('') FOR [bw_wiskr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___vkp_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___vkp_____]  DEFAULT ((0)) FOR [vkp_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___suppl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___suppl___]  DEFAULT ((0)) FOR [suppl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___extdv___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___extdv___]  DEFAULT ((0)) FOR [extdv___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1kpn___plwis___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1kpn___] ADD  CONSTRAINT [DF_v1kpn___plwis___]  DEFAULT ((0)) FOR [plwis___]
END

