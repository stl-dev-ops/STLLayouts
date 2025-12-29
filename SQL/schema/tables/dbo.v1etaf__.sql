SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1etaf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1etaf__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etaf_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etas_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[etap_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantprod] [int] NOT NULL,
	[ant__keu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant__prc] [int] NOT NULL,
	[ant__vst] [int] NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl___t2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stl____w] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant____w] [int] NOT NULL,
	[stl___in] [float] NOT NULL,
	[stl__in2] [float] NOT NULL,
	[lilo__in] [float] NOT NULL,
	[lilo_in2] [float] NOT NULL,
	[stl_p_in] [float] NOT NULL,
	[stl_pmin] [float] NOT NULL,
	[mxspdd__] [float] NOT NULL,
	[mxspdd_s] [float] NOT NULL,
	[invlspd_] [float] NOT NULL,
	[invlspds] [float] NOT NULL,
	[aantal_h] [int] NOT NULL,
	[aantal_b] [int] NOT NULL,
	[prys___m] [float] NOT NULL,
	[prysvorm] [float] NOT NULL,
	[grd__oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__peh] [float] NOT NULL,
	[grd__prc] [float] NOT NULL,
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[grdvb_t_] [float] NOT NULL,
	[lonen_t_] [float] NOT NULL,
	[machi_t_] [float] NOT NULL,
	[overh_t_] [float] NOT NULL,
	[oa____t_] [float] NOT NULL,
	[duur____] [int] NOT NULL,
	[lonen__s] [float] NOT NULL,
	[machi__s] [float] NOT NULL,
	[overh__s] [float] NOT NULL,
	[grdvb__s] [float] NOT NULL,
	[oa_____s] [float] NOT NULL,
	[lonen_ts] [float] NOT NULL,
	[machi_ts] [float] NOT NULL,
	[overh_ts] [float] NOT NULL,
	[oa____ts] [float] NOT NULL,
	[grdvb_ts] [float] NOT NULL,
	[duur___s] [int] NOT NULL,
	[volgnr__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__ing] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bldoprol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__rek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gramm___] [float] NOT NULL,
	[breedte_] [float] NOT NULL,
	[drg__afw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papprins] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_peh] [float] NOT NULL,
	[prys__kg] [float] NOT NULL,
	[gewicht_] [float] NOT NULL,
	[hv_vr_kg] [float] NOT NULL,
	[pag1___b] [float] NOT NULL,
	[pag2___b] [float] NOT NULL,
	[pag3___b] [float] NOT NULL,
	[pag4___b] [float] NOT NULL,
	[pag5___b] [float] NOT NULL,
	[pag6___b] [float] NOT NULL,
	[pag7___b] [float] NOT NULL,
	[lijmzyde] [float] NOT NULL,
	[vouwzyde] [float] NOT NULL,
	[prod___m] [float] NOT NULL,
	[drg____m] [float] NOT NULL,
	[grd____m] [float] NOT NULL,
	[ant_kern] [float] NOT NULL,
	[ant_stop] [float] NOT NULL,
	[stel_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wikk_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tot__tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst2_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst3_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__bre] [float] NOT NULL,
	[bst__len] [float] NOT NULL,
	[bstminm2] [float] NOT NULL,
	[bst__rol] [float] NOT NULL,
	[bst___m2] [float] NOT NULL,
	[bst___kg] [float] NOT NULL,
	[bst_serv] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst____m] [float] NOT NULL,
	[bstmin_m] [float] NOT NULL,
	[vrbpap__] [float] NOT NULL,
	[vrbpapm2] [float] NOT NULL,
	[vrbpapkg] [float] NOT NULL,
	[vlsrb__l] [float] NOT NULL,
	[vlsrb__b] [float] NOT NULL,
	[vlsrb_m2] [float] NOT NULL,
	[vlsrb_kg] [float] NOT NULL,
	[vlsrl__l] [float] NOT NULL,
	[vlsrl__b] [float] NOT NULL,
	[vlsrl_m2] [float] NOT NULL,
	[vlsrl_kg] [float] NOT NULL,
	[vlsmn__l] [float] NOT NULL,
	[vlsmn__b] [float] NOT NULL,
	[vlsmn_m2] [float] NOT NULL,
	[vlsmn_kg] [float] NOT NULL,
	[drg_kort] [float] NOT NULL,
	[diktemic] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1etafi1] PRIMARY KEY CLUSTERED 
(
	[kpn__ref] ASC,
	[type____] ASC,
	[etaf_ref] ASC,
	[dg___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1etaf__]') AND name = N'v1etafi2')
CREATE NONCLUSTERED INDEX [v1etafi2] ON [dbo].[v1etaf__]
(
	[stns_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1etaf__]') AND name = N'v1etafi3')
CREATE NONCLUSTERED INDEX [v1etafi3] ON [dbo].[v1etaf__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1etaf__]') AND name = N'v1etafi4')
CREATE NONCLUSTERED INDEX [v1etafi4] ON [dbo].[v1etaf__]
(
	[etap_ref] ASC,
	[etap_typ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__etaf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__etaf_ref]  DEFAULT ('') FOR [etaf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__etas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__etas_ref]  DEFAULT ('') FOR [etas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__etap_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__etap_ref]  DEFAULT ('') FOR [etap_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__etap_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__etap_typ]  DEFAULT ('') FOR [etap_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__aantprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__aantprod]  DEFAULT ((0)) FOR [aantprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__ant__keu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__ant__keu]  DEFAULT ('') FOR [ant__keu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__ant__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__ant__prc]  DEFAULT ((0)) FOR [ant__prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__ant__vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__ant__vst]  DEFAULT ((0)) FOR [ant__vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stl____t]  DEFAULT ('') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stl___t2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stl___t2]  DEFAULT ('') FOR [stl___t2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stl____w]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stl____w]  DEFAULT ('') FOR [stl____w]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__ant____w]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__ant____w]  DEFAULT ((0)) FOR [ant____w]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stl___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stl___in]  DEFAULT ((0)) FOR [stl___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stl__in2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stl__in2]  DEFAULT ((0)) FOR [stl__in2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__lilo__in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__lilo__in]  DEFAULT ((0)) FOR [lilo__in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__lilo_in2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__lilo_in2]  DEFAULT ((0)) FOR [lilo_in2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stl_p_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stl_p_in]  DEFAULT ((0)) FOR [stl_p_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stl_pmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stl_pmin]  DEFAULT ((0)) FOR [stl_pmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__mxspdd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__mxspdd__]  DEFAULT ((0)) FOR [mxspdd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__mxspdd_s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__mxspdd_s]  DEFAULT ((0)) FOR [mxspdd_s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__invlspd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__invlspd_]  DEFAULT ((0)) FOR [invlspd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__invlspds]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__invlspds]  DEFAULT ((0)) FOR [invlspds]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__aantal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__aantal_b]  DEFAULT ((0)) FOR [aantal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__prys___m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__prys___m]  DEFAULT ((0)) FOR [prys___m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__prysvorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__prysvorm]  DEFAULT ((0)) FOR [prysvorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grd__oms]  DEFAULT ('') FOR [grd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grd__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grd__peh]  DEFAULT ((0)) FOR [grd__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grd__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grd__prc]  DEFAULT ((0)) FOR [grd__prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grdvb_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grdvb_t_]  DEFAULT ((0)) FOR [grdvb_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__lonen_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__lonen_t_]  DEFAULT ((0)) FOR [lonen_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__machi_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__machi_t_]  DEFAULT ((0)) FOR [machi_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__overh_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__overh_t_]  DEFAULT ((0)) FOR [overh_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__oa____t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__oa____t_]  DEFAULT ((0)) FOR [oa____t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__duur____]  DEFAULT ((0)) FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__lonen__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__lonen__s]  DEFAULT ((0)) FOR [lonen__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__machi__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__machi__s]  DEFAULT ((0)) FOR [machi__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__overh__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__overh__s]  DEFAULT ((0)) FOR [overh__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grdvb__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grdvb__s]  DEFAULT ((0)) FOR [grdvb__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__oa_____s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__oa_____s]  DEFAULT ((0)) FOR [oa_____s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__lonen_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__lonen_ts]  DEFAULT ((0)) FOR [lonen_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__machi_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__machi_ts]  DEFAULT ((0)) FOR [machi_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__overh_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__overh_ts]  DEFAULT ((0)) FOR [overh_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__oa____ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__oa____ts]  DEFAULT ((0)) FOR [oa____ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grdvb_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grdvb_ts]  DEFAULT ((0)) FOR [grdvb_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__duur___s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__duur___s]  DEFAULT ((0)) FOR [duur___s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__afw__ing]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__afw__ing]  DEFAULT ('') FOR [afw__ing]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bldoprol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bldoprol]  DEFAULT ('') FOR [bldoprol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__drg__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__drg__rek]  DEFAULT ('') FOR [drg__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grammage]  DEFAULT ('') FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__gramm___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__gramm___]  DEFAULT ((0)) FOR [gramm___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__drg__afw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__drg__afw]  DEFAULT ('') FOR [drg__afw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__drg_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__drg_vrpl]  DEFAULT ('') FOR [drg_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__papprins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__papprins]  DEFAULT ('') FOR [papprins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__prys_typ]  DEFAULT ('') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__prys_peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__prys_peh]  DEFAULT ((0)) FOR [prys_peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__prys__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__prys__kg]  DEFAULT ((0)) FOR [prys__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__gewicht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__gewicht_]  DEFAULT ((0)) FOR [gewicht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__hv_vr_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__hv_vr_kg]  DEFAULT ((0)) FOR [hv_vr_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pag1___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pag1___b]  DEFAULT ((0)) FOR [pag1___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pag2___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pag2___b]  DEFAULT ((0)) FOR [pag2___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pag3___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pag3___b]  DEFAULT ((0)) FOR [pag3___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pag4___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pag4___b]  DEFAULT ((0)) FOR [pag4___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pag5___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pag5___b]  DEFAULT ((0)) FOR [pag5___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pag6___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pag6___b]  DEFAULT ((0)) FOR [pag6___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__pag7___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__pag7___b]  DEFAULT ((0)) FOR [pag7___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__lijmzyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__lijmzyde]  DEFAULT ((0)) FOR [lijmzyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vouwzyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vouwzyde]  DEFAULT ((0)) FOR [vouwzyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__prod___m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__prod___m]  DEFAULT ((0)) FOR [prod___m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__drg____m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__drg____m]  DEFAULT ((0)) FOR [drg____m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__grd____m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__grd____m]  DEFAULT ((0)) FOR [grd____m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__ant_kern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__ant_kern]  DEFAULT ((0)) FOR [ant_kern]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__ant_stop]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__ant_stop]  DEFAULT ((0)) FOR [ant_stop]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__stel_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__stel_tyd]  DEFAULT ('') FOR [stel_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__prod_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__prod_tyd]  DEFAULT ('') FOR [prod_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__wikk_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__wikk_tyd]  DEFAULT ('') FOR [wikk_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__tot__tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__tot__tyd]  DEFAULT ('') FOR [tot__tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst__typ]  DEFAULT ('') FOR [bst__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst2_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst2_typ]  DEFAULT ('') FOR [bst2_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst3_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst3_typ]  DEFAULT ('') FOR [bst3_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst__bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst__bre]  DEFAULT ((0)) FOR [bst__bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst__len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst__len]  DEFAULT ((0)) FOR [bst__len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bstminm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bstminm2]  DEFAULT ((0)) FOR [bstminm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst__rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst__rol]  DEFAULT ((0)) FOR [bst__rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst___m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst___m2]  DEFAULT ((0)) FOR [bst___m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst___kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst___kg]  DEFAULT ((0)) FOR [bst___kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst_serv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst_serv]  DEFAULT ('') FOR [bst_serv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bst____m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bst____m]  DEFAULT ((0)) FOR [bst____m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__bstmin_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__bstmin_m]  DEFAULT ((0)) FOR [bstmin_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vrbpap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vrbpap__]  DEFAULT ((0)) FOR [vrbpap__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vrbpapm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vrbpapm2]  DEFAULT ((0)) FOR [vrbpapm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vrbpapkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vrbpapkg]  DEFAULT ((0)) FOR [vrbpapkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrb__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrb__l]  DEFAULT ((0)) FOR [vlsrb__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrb__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrb__b]  DEFAULT ((0)) FOR [vlsrb__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrb_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrb_m2]  DEFAULT ((0)) FOR [vlsrb_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrb_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrb_kg]  DEFAULT ((0)) FOR [vlsrb_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrl__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrl__l]  DEFAULT ((0)) FOR [vlsrl__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrl__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrl__b]  DEFAULT ((0)) FOR [vlsrl__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrl_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrl_m2]  DEFAULT ((0)) FOR [vlsrl_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsrl_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsrl_kg]  DEFAULT ((0)) FOR [vlsrl_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsmn__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsmn__l]  DEFAULT ((0)) FOR [vlsmn__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsmn__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsmn__b]  DEFAULT ((0)) FOR [vlsmn__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsmn_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsmn_m2]  DEFAULT ((0)) FOR [vlsmn_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__vlsmn_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__vlsmn_kg]  DEFAULT ((0)) FOR [vlsmn_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__drg_kort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__drg_kort]  DEFAULT ((0)) FOR [drg_kort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1etaf__diktemic]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1etaf__] ADD  CONSTRAINT [DF_v1etaf__diktemic]  DEFAULT ((0)) FOR [diktemic]
END

