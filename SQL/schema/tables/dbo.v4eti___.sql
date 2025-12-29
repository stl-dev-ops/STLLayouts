SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4eti___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4eti___](
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpndasrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aard____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](22) COLLATE Latin1_General_CI_AS NOT NULL,
	[basisant] [int] NOT NULL,
	[aanteenh] [float] NOT NULL,
	[diktemic] [float] NOT NULL,
	[aantprod] [int] NOT NULL,
	[aant_afg] [int] NOT NULL,
	[multidrk] [int] NOT NULL,
	[lbl__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[radius__] [float] NOT NULL,
	[zynrefkl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_b] [float] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[rol____b] [float] NOT NULL,
	[lay_flat] [float] NOT NULL,
	[overlap_] [float] NOT NULL,
	[face_h] [float] NOT NULL,
	[face_b] [float] NOT NULL,
	[backoffset_b] [float] NOT NULL,
	[sealtype_b] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[seal_b] [float] NOT NULL,
	[sealtype_onder] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[seal_h_onder] [float] NOT NULL,
	[gussettype_b] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gusset_b] [float] NOT NULL,
	[seal_zijkant] [float] NOT NULL,
	[gusset_onder] [float] NOT NULL,
	[edge_trim] [float] NOT NULL,
	[gap] [float] NOT NULL,
	[kitalign] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[asaf___b] [float] NOT NULL,
	[tssnaf_b] [float] NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[lblgp_mn] [float] NOT NULL,
	[lblgp_mx] [float] NOT NULL,
	[aantal_b] [int] NOT NULL,
	[aantal_h] [int] NOT NULL,
	[kopwit__] [float] NOT NULL,
	[voetwit_] [float] NOT NULL,
	[omtrek__] [float] NOT NULL,
	[aantallb] [int] NOT NULL,
	[rol___lb] [float] NOT NULL,
	[fmt__txt] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt__lck] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_comm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssnafsh] [float] NOT NULL,
	[lblbleed] [float] NOT NULL,
	[aantalsh] [int] NOT NULL,
	[omtreks_] [float] NOT NULL,
	[stn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantalsb] [int] NOT NULL,
	[klcod_fr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrpfr] [int] NOT NULL,
	[klcod_lm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrplm] [int] NOT NULL,
	[klcod_rg] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrprg] [int] NOT NULL,
	[antexink] [int] NOT NULL,
	[kpnafw_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpnafw_9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cal_wiss] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant__plw] [int] NOT NULL,
	[ant__klw] [int] NOT NULL,
	[ant_pltn] [int] NOT NULL,
	[antplw_0] [int] NOT NULL,
	[antplw_1] [int] NOT NULL,
	[antplw_2] [int] NOT NULL,
	[antplw_3] [int] NOT NULL,
	[antplw_4] [int] NOT NULL,
	[antplw_5] [int] NOT NULL,
	[antplw_6] [int] NOT NULL,
	[antplw_7] [int] NOT NULL,
	[antklw_0] [int] NOT NULL,
	[antklw_1] [int] NOT NULL,
	[antklw_2] [int] NOT NULL,
	[antklw_3] [int] NOT NULL,
	[antklw_4] [int] NOT NULL,
	[antklw_5] [int] NOT NULL,
	[antklw_6] [int] NOT NULL,
	[antklw_7] [int] NOT NULL,
	[antplt_0] [int] NOT NULL,
	[antplt_1] [int] NOT NULL,
	[antplt_2] [int] NOT NULL,
	[antplt_3] [int] NOT NULL,
	[antplt_4] [int] NOT NULL,
	[antplt_5] [int] NOT NULL,
	[antplt_6] [int] NOT NULL,
	[antplt_7] [int] NOT NULL,
	[plttfak0] [int] NOT NULL,
	[plttfak1] [int] NOT NULL,
	[plttfak2] [int] NOT NULL,
	[plttfak3] [int] NOT NULL,
	[plttfak4] [int] NOT NULL,
	[plttfak5] [int] NOT NULL,
	[plttfak6] [int] NOT NULL,
	[plttfak7] [int] NOT NULL,
	[plt0__vm] [float] NOT NULL,
	[plt1__vm] [float] NOT NULL,
	[plt2__vm] [float] NOT NULL,
	[plt3__vm] [float] NOT NULL,
	[plt4__vm] [float] NOT NULL,
	[plt5__vm] [float] NOT NULL,
	[plt6__vm] [float] NOT NULL,
	[plt7__vm] [float] NOT NULL,
	[plt0__bm] [float] NOT NULL,
	[plt1__bm] [float] NOT NULL,
	[plt2__bm] [float] NOT NULL,
	[plt3__bm] [float] NOT NULL,
	[plt4__bm] [float] NOT NULL,
	[plt5__bm] [float] NOT NULL,
	[plt6__bm] [float] NOT NULL,
	[plt7__bm] [float] NOT NULL,
	[antplwa0] [float] NOT NULL,
	[antplwa1] [float] NOT NULL,
	[antplwa2] [float] NOT NULL,
	[antplwa3] [float] NOT NULL,
	[antplwa4] [float] NOT NULL,
	[antplwa5] [float] NOT NULL,
	[antplwa6] [float] NOT NULL,
	[antplwa7] [float] NOT NULL,
	[antklwa0] [float] NOT NULL,
	[antklwa1] [float] NOT NULL,
	[antklwa2] [float] NOT NULL,
	[antklwa3] [float] NOT NULL,
	[antklwa4] [float] NOT NULL,
	[antklwa5] [float] NOT NULL,
	[antklwa6] [float] NOT NULL,
	[antklwa7] [float] NOT NULL,
	[plt__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[trm__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[marge__l] [float] NOT NULL,
	[marge__r] [float] NOT NULL,
	[margebnl] [float] NOT NULL,
	[margebnr] [float] NOT NULL,
	[spd_____] [int] NOT NULL,
	[spdusr__] [int] NOT NULL,
	[spdd____] [float] NOT NULL,
	[spddusr_] [float] NOT NULL,
	[spdd_slg] [float] NOT NULL,
	[spdduslg] [float] NOT NULL,
	[ovt_na_m] [int] NOT NULL,
	[ovt_nasl] [int] NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlusr_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wasusr_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ext___dg] [int] NOT NULL,
	[stlafu_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlafuin] [float] NOT NULL,
	[min____b] [float] NOT NULL,
	[minimumb] [float] NOT NULL,
	[stel_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk1tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk2tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[was__tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkinsvu] [int] NOT NULL,
	[drkinsvo] [int] NOT NULL,
	[afwinsvu] [int] NOT NULL,
	[afwinsvo] [int] NOT NULL,
	[vlginsto] [int] NOT NULL,
	[tedrk___] [int] NOT NULL,
	[tedrk_to] [int] NOT NULL,
	[tedrkd__] [float] NOT NULL,
	[tedrkdto] [float] NOT NULL,
	[prcinsvo] [float] NOT NULL,
	[prcinsvu] [float] NOT NULL,
	[inlinsvo] [float] NOT NULL,
	[inlinsvu] [float] NOT NULL,
	[oflinsvo] [float] NOT NULL,
	[oflinsvu] [float] NOT NULL,
	[proinsvu] [float] NOT NULL,
	[prcpapto] [float] NOT NULL,
	[prcpaptu] [float] NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gramm___] [float] NOT NULL,
	[breedte_] [float] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[bestemm_] [nvarchar](45) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__kom] [nvarchar](28) COLLATE Latin1_General_CI_AS NOT NULL,
	[papprins] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_peh] [float] NOT NULL,
	[prys__kg] [float] NOT NULL,
	[gewicht_] [float] NOT NULL,
	[gewstusr] [float] NOT NULL,
	[hv_vr_kg] [float] NOT NULL,
	[zijwit_l] [float] NOT NULL,
	[zijwit_r] [float] NOT NULL,
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
	[drk__ing] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[diamt_mn] [float] NOT NULL,
	[diamt_mx] [float] NOT NULL,
	[aant_rol] [float] NOT NULL,
	[kern____] [float] NOT NULL,
	[voorrang] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_doos] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantdoos] [float] NOT NULL,
	[ligging_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[wikk____] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bldoprol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tresv___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__res] [date] NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp_____] [float] NOT NULL,
	[suppl___] [float] NOT NULL,
	[flm__peh] [float] NOT NULL,
	[plt__peh] [float] NOT NULL,
	[rostnpeh] [float] NOT NULL,
	[vlstnpeh] [float] NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtpag_x] [float] NOT NULL,
	[fmtpag_y] [float] NOT NULL,
	[rug_____] [float] NOT NULL,
	[flap___v] [float] NOT NULL,
	[flap___a] [float] NOT NULL,
	[flap___b] [float] NOT NULL,
	[flap___o] [float] NOT NULL,
	[vls__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[verliesx] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[verliesy] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_kort] [float] NOT NULL,
	[tpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mark_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stgy_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v4eti_i1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4eti___]') AND name = N'v4eti_i2')
CREATE UNIQUE NONCLUSTERED INDEX [v4eti_i2] ON [dbo].[v4eti___]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpn__srt]  DEFAULT ('') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpndasrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpndasrt]  DEFAULT ('') FOR [kpndasrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnd_ref]  DEFAULT ('') FOR [kpnd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aard____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aard____]  DEFAULT ('') FOR [aard____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___basisant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___basisant]  DEFAULT ((0)) FOR [basisant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aanteenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aanteenh]  DEFAULT ((0)) FOR [aanteenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___diktemic]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___diktemic]  DEFAULT ((0)) FOR [diktemic]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aantprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aantprod]  DEFAULT ((0)) FOR [aantprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aant_afg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aant_afg]  DEFAULT ((0)) FOR [aant_afg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___multidrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___multidrk]  DEFAULT ((0)) FOR [multidrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___lbl__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___lbl__srt]  DEFAULT ('') FOR [lbl__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___eti_vorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___eti_vorm]  DEFAULT ('') FOR [eti_vorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___radius__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___radius__]  DEFAULT ((0)) FOR [radius__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___etiket_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___etiket_b]  DEFAULT ((0)) FOR [etiket_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___rol____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___rol____b]  DEFAULT ((0)) FOR [rol____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___lay_flat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___lay_flat]  DEFAULT ((0)) FOR [lay_flat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___overlap_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___overlap_]  DEFAULT ((0)) FOR [overlap_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___face_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___face_h]  DEFAULT ((0)) FOR [face_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___face_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___face_b]  DEFAULT ((0)) FOR [face_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___backoffset_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___backoffset_b]  DEFAULT ((0)) FOR [backoffset_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___sealtype_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___sealtype_b]  DEFAULT ('') FOR [sealtype_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___seal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___seal_b]  DEFAULT ((0)) FOR [seal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___sealtype_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___sealtype_onder]  DEFAULT ('') FOR [sealtype_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___seal_h_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___seal_h_onder]  DEFAULT ((0)) FOR [seal_h_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___gussettype_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___gussettype_b]  DEFAULT ('') FOR [gussettype_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___gusset_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___gusset_b]  DEFAULT ((0)) FOR [gusset_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___seal_zijkant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___seal_zijkant]  DEFAULT ((0)) FOR [seal_zijkant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___gusset_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___gusset_onder]  DEFAULT ((0)) FOR [gusset_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___edge_trim]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___edge_trim]  DEFAULT ((0)) FOR [edge_trim]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___gap]  DEFAULT ((0)) FOR [gap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kitalign]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kitalign]  DEFAULT ('') FOR [kitalign]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___asaf___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___asaf___b]  DEFAULT ((0)) FOR [asaf___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tssnaf_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tssnaf_b]  DEFAULT ((0)) FOR [tssnaf_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tssnaf_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tssnaf_h]  DEFAULT ((0)) FOR [tssnaf_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___lblgp_mn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___lblgp_mn]  DEFAULT ((0)) FOR [lblgp_mn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___lblgp_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___lblgp_mx]  DEFAULT ((0)) FOR [lblgp_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aantal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aantal_b]  DEFAULT ((0)) FOR [aantal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kopwit__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kopwit__]  DEFAULT ((0)) FOR [kopwit__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___voetwit_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___voetwit_]  DEFAULT ((0)) FOR [voetwit_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___omtrek__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___omtrek__]  DEFAULT ((0)) FOR [omtrek__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aantallb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aantallb]  DEFAULT ((0)) FOR [aantallb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___rol___lb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___rol___lb]  DEFAULT ((0)) FOR [rol___lb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___fmt__txt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___fmt__txt]  DEFAULT ('') FOR [fmt__txt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___fmt__lck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___fmt__lck]  DEFAULT ('') FOR [fmt__lck]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___fmt_comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___fmt_comm]  DEFAULT ('') FOR [fmt_comm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tssnafsh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tssnafsh]  DEFAULT ((0)) FOR [tssnafsh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___lblbleed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___lblbleed]  DEFAULT ((0)) FOR [lblbleed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aantalsh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aantalsh]  DEFAULT ((0)) FOR [aantalsh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___omtreks_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___omtreks_]  DEFAULT ((0)) FOR [omtreks_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stn__srt]  DEFAULT ('') FOR [stn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aantalsb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aantalsb]  DEFAULT ((0)) FOR [aantalsb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___klcod_fr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___klcod_fr]  DEFAULT ('') FOR [klcod_fr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___inkvrpfr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___inkvrpfr]  DEFAULT ((0)) FOR [inkvrpfr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___klcod_lm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___klcod_lm]  DEFAULT ('') FOR [klcod_lm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___inkvrplm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___inkvrplm]  DEFAULT ((0)) FOR [inkvrplm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___klcod_rg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___klcod_rg]  DEFAULT ('') FOR [klcod_rg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___inkvrprg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___inkvrprg]  DEFAULT ((0)) FOR [inkvrprg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antexink]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antexink]  DEFAULT ((0)) FOR [antexink]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_1]  DEFAULT ('') FOR [kpnafw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_2]  DEFAULT ('') FOR [kpnafw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_3]  DEFAULT ('') FOR [kpnafw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_4]  DEFAULT ('') FOR [kpnafw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_6]  DEFAULT ('') FOR [kpnafw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_7]  DEFAULT ('') FOR [kpnafw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_8]  DEFAULT ('') FOR [kpnafw_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kpnafw_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kpnafw_9]  DEFAULT ('') FOR [kpnafw_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___cal_wiss]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___cal_wiss]  DEFAULT ('') FOR [cal_wiss]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___ant__plw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___ant__plw]  DEFAULT ((0)) FOR [ant__plw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___ant__klw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___ant__klw]  DEFAULT ((0)) FOR [ant__klw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___ant_pltn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___ant_pltn]  DEFAULT ((0)) FOR [ant_pltn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_0]  DEFAULT ((0)) FOR [antplw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_1]  DEFAULT ((0)) FOR [antplw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_2]  DEFAULT ((0)) FOR [antplw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_3]  DEFAULT ((0)) FOR [antplw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_4]  DEFAULT ((0)) FOR [antplw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_5]  DEFAULT ((0)) FOR [antplw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_6]  DEFAULT ((0)) FOR [antplw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplw_7]  DEFAULT ((0)) FOR [antplw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_0]  DEFAULT ((0)) FOR [antklw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_1]  DEFAULT ((0)) FOR [antklw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_2]  DEFAULT ((0)) FOR [antklw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_3]  DEFAULT ((0)) FOR [antklw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_4]  DEFAULT ((0)) FOR [antklw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_5]  DEFAULT ((0)) FOR [antklw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_6]  DEFAULT ((0)) FOR [antklw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklw_7]  DEFAULT ((0)) FOR [antklw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_0]  DEFAULT ((0)) FOR [antplt_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_1]  DEFAULT ((0)) FOR [antplt_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_2]  DEFAULT ((0)) FOR [antplt_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_3]  DEFAULT ((0)) FOR [antplt_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_4]  DEFAULT ((0)) FOR [antplt_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_5]  DEFAULT ((0)) FOR [antplt_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_6]  DEFAULT ((0)) FOR [antplt_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplt_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplt_7]  DEFAULT ((0)) FOR [antplt_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak0]  DEFAULT ((0)) FOR [plttfak0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak1]  DEFAULT ((0)) FOR [plttfak1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak2]  DEFAULT ((0)) FOR [plttfak2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak3]  DEFAULT ((0)) FOR [plttfak3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak4]  DEFAULT ((0)) FOR [plttfak4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak5]  DEFAULT ((0)) FOR [plttfak5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak6]  DEFAULT ((0)) FOR [plttfak6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plttfak7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plttfak7]  DEFAULT ((0)) FOR [plttfak7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt0__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt0__vm]  DEFAULT ((0)) FOR [plt0__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt1__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt1__vm]  DEFAULT ((0)) FOR [plt1__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt2__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt2__vm]  DEFAULT ((0)) FOR [plt2__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt3__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt3__vm]  DEFAULT ((0)) FOR [plt3__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt4__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt4__vm]  DEFAULT ((0)) FOR [plt4__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt5__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt5__vm]  DEFAULT ((0)) FOR [plt5__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt6__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt6__vm]  DEFAULT ((0)) FOR [plt6__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt7__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt7__vm]  DEFAULT ((0)) FOR [plt7__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt0__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt0__bm]  DEFAULT ((0)) FOR [plt0__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt1__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt1__bm]  DEFAULT ((0)) FOR [plt1__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt2__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt2__bm]  DEFAULT ((0)) FOR [plt2__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt3__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt3__bm]  DEFAULT ((0)) FOR [plt3__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt4__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt4__bm]  DEFAULT ((0)) FOR [plt4__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt5__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt5__bm]  DEFAULT ((0)) FOR [plt5__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt6__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt6__bm]  DEFAULT ((0)) FOR [plt6__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt7__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt7__bm]  DEFAULT ((0)) FOR [plt7__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa0]  DEFAULT ((0)) FOR [antplwa0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa1]  DEFAULT ((0)) FOR [antplwa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa2]  DEFAULT ((0)) FOR [antplwa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa3]  DEFAULT ((0)) FOR [antplwa3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa4]  DEFAULT ((0)) FOR [antplwa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa5]  DEFAULT ((0)) FOR [antplwa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa6]  DEFAULT ((0)) FOR [antplwa6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antplwa7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antplwa7]  DEFAULT ((0)) FOR [antplwa7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa0]  DEFAULT ((0)) FOR [antklwa0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa1]  DEFAULT ((0)) FOR [antklwa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa2]  DEFAULT ((0)) FOR [antklwa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa3]  DEFAULT ((0)) FOR [antklwa3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa4]  DEFAULT ((0)) FOR [antklwa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa5]  DEFAULT ((0)) FOR [antklwa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa6]  DEFAULT ((0)) FOR [antklwa6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___antklwa7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___antklwa7]  DEFAULT ((0)) FOR [antklwa7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt__vkp]  DEFAULT ('') FOR [plt__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___trm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___trm__ref]  DEFAULT ('') FOR [trm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___marge__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___marge__l]  DEFAULT ((0)) FOR [marge__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___marge__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___marge__r]  DEFAULT ((0)) FOR [marge__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___margebnl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___margebnl]  DEFAULT ((0)) FOR [margebnl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___margebnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___margebnr]  DEFAULT ((0)) FOR [margebnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___spd_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___spd_____]  DEFAULT ((0)) FOR [spd_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___spdusr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___spdusr__]  DEFAULT ((0)) FOR [spdusr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___spdd____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___spdd____]  DEFAULT ((0)) FOR [spdd____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___spddusr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___spddusr_]  DEFAULT ((0)) FOR [spddusr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___spdd_slg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___spdd_slg]  DEFAULT ((0)) FOR [spdd_slg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___spdduslg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___spdduslg]  DEFAULT ((0)) FOR [spdduslg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___ovt_na_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___ovt_na_m]  DEFAULT ((0)) FOR [ovt_na_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___ovt_nasl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___ovt_nasl]  DEFAULT ((0)) FOR [ovt_nasl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stl____t]  DEFAULT ('') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stlusr_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stlusr_t]  DEFAULT ('') FOR [stlusr_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___wasusr_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___wasusr_t]  DEFAULT ('') FOR [wasusr_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___ext___dg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___ext___dg]  DEFAULT ((0)) FOR [ext___dg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stlafu_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stlafu_t]  DEFAULT ('') FOR [stlafu_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stlafuin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stlafuin]  DEFAULT ((0)) FOR [stlafuin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___min____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___min____b]  DEFAULT ((0)) FOR [min____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___minimumb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___minimumb]  DEFAULT ((0)) FOR [minimumb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stel_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stel_tyd]  DEFAULT ('') FOR [stel_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___druk_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___druk_tyd]  DEFAULT ('') FOR [druk_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___druk1tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___druk1tyd]  DEFAULT ('') FOR [druk1tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___druk2tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___druk2tyd]  DEFAULT ('') FOR [druk2tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___was__tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___was__tyd]  DEFAULT ('') FOR [was__tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___drkinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___drkinsvu]  DEFAULT ((0)) FOR [drkinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___drkinsvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___drkinsvo]  DEFAULT ((0)) FOR [drkinsvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___afwinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___afwinsvu]  DEFAULT ((0)) FOR [afwinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___afwinsvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___afwinsvo]  DEFAULT ((0)) FOR [afwinsvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlginsto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlginsto]  DEFAULT ((0)) FOR [vlginsto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tedrk___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tedrk___]  DEFAULT ((0)) FOR [tedrk___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tedrk_to]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tedrk_to]  DEFAULT ((0)) FOR [tedrk_to]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tedrkd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tedrkd__]  DEFAULT ((0)) FOR [tedrkd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tedrkdto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tedrkdto]  DEFAULT ((0)) FOR [tedrkdto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prcinsvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prcinsvo]  DEFAULT ((0)) FOR [prcinsvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prcinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prcinsvu]  DEFAULT ((0)) FOR [prcinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___inlinsvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___inlinsvo]  DEFAULT ((0)) FOR [inlinsvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___inlinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___inlinsvu]  DEFAULT ((0)) FOR [inlinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___oflinsvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___oflinsvo]  DEFAULT ((0)) FOR [oflinsvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___oflinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___oflinsvu]  DEFAULT ((0)) FOR [oflinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___proinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___proinsvu]  DEFAULT ((0)) FOR [proinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prcpapto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prcpapto]  DEFAULT ((0)) FOR [prcpapto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prcpaptu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prcpaptu]  DEFAULT ((0)) FOR [prcpaptu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___grammage]  DEFAULT ('') FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___gramm___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___gramm___]  DEFAULT ((0)) FOR [gramm___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___art_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___art_oms2]  DEFAULT ('') FOR [art_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bestemm_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bestemm_]  DEFAULT ('') FOR [bestemm_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___drg_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___drg_vrpl]  DEFAULT ('') FOR [drg_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___art__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___art__tst]  DEFAULT ('') FOR [art__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___pap__kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___pap__kom]  DEFAULT ('') FOR [pap__kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___papprins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___papprins]  DEFAULT ('') FOR [papprins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prys_typ]  DEFAULT ('') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prys_peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prys_peh]  DEFAULT ((0)) FOR [prys_peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___prys__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___prys__kg]  DEFAULT ((0)) FOR [prys__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___gewicht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___gewicht_]  DEFAULT ((0)) FOR [gewicht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___gewstusr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___gewstusr]  DEFAULT ((0)) FOR [gewstusr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___hv_vr_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___hv_vr_kg]  DEFAULT ((0)) FOR [hv_vr_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___zijwit_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___zijwit_l]  DEFAULT ((0)) FOR [zijwit_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___zijwit_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___zijwit_r]  DEFAULT ((0)) FOR [zijwit_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst__typ]  DEFAULT ('') FOR [bst__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst2_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst2_typ]  DEFAULT ('') FOR [bst2_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst3_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst3_typ]  DEFAULT ('') FOR [bst3_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst__bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst__bre]  DEFAULT ((0)) FOR [bst__bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst__len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst__len]  DEFAULT ((0)) FOR [bst__len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bstminm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bstminm2]  DEFAULT ((0)) FOR [bstminm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst__rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst__rol]  DEFAULT ((0)) FOR [bst__rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst___m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst___m2]  DEFAULT ((0)) FOR [bst___m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst___kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst___kg]  DEFAULT ((0)) FOR [bst___kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst_serv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst_serv]  DEFAULT ('') FOR [bst_serv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bst____m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bst____m]  DEFAULT ((0)) FOR [bst____m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bstmin_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bstmin_m]  DEFAULT ((0)) FOR [bstmin_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vrbpap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vrbpap__]  DEFAULT ((0)) FOR [vrbpap__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vrbpapm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vrbpapm2]  DEFAULT ((0)) FOR [vrbpapm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vrbpapkg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vrbpapkg]  DEFAULT ((0)) FOR [vrbpapkg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrb__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrb__l]  DEFAULT ((0)) FOR [vlsrb__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrb__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrb__b]  DEFAULT ((0)) FOR [vlsrb__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrb_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrb_m2]  DEFAULT ((0)) FOR [vlsrb_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrb_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrb_kg]  DEFAULT ((0)) FOR [vlsrb_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrl__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrl__l]  DEFAULT ((0)) FOR [vlsrl__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrl__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrl__b]  DEFAULT ((0)) FOR [vlsrl__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrl_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrl_m2]  DEFAULT ((0)) FOR [vlsrl_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsrl_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsrl_kg]  DEFAULT ((0)) FOR [vlsrl_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsmn__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsmn__l]  DEFAULT ((0)) FOR [vlsmn__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsmn__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsmn__b]  DEFAULT ((0)) FOR [vlsmn__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsmn_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsmn_m2]  DEFAULT ((0)) FOR [vlsmn_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlsmn_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlsmn_kg]  DEFAULT ((0)) FOR [vlsmn_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___drk__ing]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___drk__ing]  DEFAULT ('') FOR [drk__ing]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___diamt_mn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___diamt_mn]  DEFAULT ((0)) FOR [diamt_mn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___diamt_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___diamt_mx]  DEFAULT ((0)) FOR [diamt_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aant_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aant_rol]  DEFAULT ((0)) FOR [aant_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___kern____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___kern____]  DEFAULT ((0)) FOR [kern____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___voorrang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___voorrang]  DEFAULT ('') FOR [voorrang]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___srt_doos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___srt_doos]  DEFAULT ('') FOR [srt_doos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___aantdoos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___aantdoos]  DEFAULT ((0)) FOR [aantdoos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___ligging_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___ligging_]  DEFAULT ('') FOR [ligging_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___wikk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___wikk____]  DEFAULT ('') FOR [wikk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___bldoprol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___bldoprol]  DEFAULT ('') FOR [bldoprol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tresv___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tresv___]  DEFAULT ('') FOR [tresv___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___dat__res]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___dat__res]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__res]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vkp_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vkp_____]  DEFAULT ((0)) FOR [vkp_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___suppl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___suppl___]  DEFAULT ((0)) FOR [suppl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___flm__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___flm__peh]  DEFAULT ((0)) FOR [flm__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___plt__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___plt__peh]  DEFAULT ((0)) FOR [plt__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___rostnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___rostnpeh]  DEFAULT ((0)) FOR [rostnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vlstnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vlstnpeh]  DEFAULT ((0)) FOR [vlstnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___fmtpag_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___fmtpag_x]  DEFAULT ((0)) FOR [fmtpag_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___fmtpag_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___fmtpag_y]  DEFAULT ((0)) FOR [fmtpag_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___flap___v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___flap___v]  DEFAULT ((0)) FOR [flap___v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___flap___a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___flap___a]  DEFAULT ((0)) FOR [flap___a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___flap___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___flap___b]  DEFAULT ((0)) FOR [flap___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___flap___o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___flap___o]  DEFAULT ((0)) FOR [flap___o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___vls__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___vls__ref]  DEFAULT ('') FOR [vls__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___verliesx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___verliesx]  DEFAULT ('') FOR [verliesx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___verliesy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___verliesy]  DEFAULT ('') FOR [verliesy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___drg_kort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___drg_kort]  DEFAULT ((0)) FOR [drg_kort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___tpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___tpl__ref]  DEFAULT ('') FOR [tpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___mark_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___mark_ref]  DEFAULT ('') FOR [mark_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4eti___stgy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4eti___] ADD  CONSTRAINT [DF_v4eti___stgy_ref]  DEFAULT ('') FOR [stgy_ref]
END

