SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drgers__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drgers__](
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typfrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typfrrpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtfrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtfrrpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[typrgref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typrgrpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtrgref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtrgrpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[typlmref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typlmrpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtlmref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtlmrpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__grp] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean___13] [nvarchar](13) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fsc__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref_boven] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref_onder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrm_d] [int] NOT NULL,
	[levtrm_u] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[diktemic] [float] NOT NULL,
	[grammage] [float] NOT NULL,
	[oppervl1] [float] NOT NULL,
	[oppervl2] [float] NOT NULL,
	[oppervl3] [float] NOT NULL,
	[oppervl4] [float] NOT NULL,
	[oppervl5] [float] NOT NULL,
	[oppervl6] [float] NOT NULL,
	[oppervl7] [float] NOT NULL,
	[oppervl8] [float] NOT NULL,
	[oppervl9] [float] NOT NULL,
	[oppervla] [float] NOT NULL,
	[gewicht1] [float] NOT NULL,
	[gewicht2] [float] NOT NULL,
	[gewicht3] [float] NOT NULL,
	[gewicht4] [float] NOT NULL,
	[gewicht5] [float] NOT NULL,
	[gewicht6] [float] NOT NULL,
	[gewicht7] [float] NOT NULL,
	[gewicht8] [float] NOT NULL,
	[gewicht9] [float] NOT NULL,
	[gewichta] [float] NOT NULL,
	[prys1_m2] [float] NOT NULL,
	[prys2_m2] [float] NOT NULL,
	[prys3_m2] [float] NOT NULL,
	[prys4_m2] [float] NOT NULL,
	[prys5_m2] [float] NOT NULL,
	[prys6_m2] [float] NOT NULL,
	[prys7_m2] [float] NOT NULL,
	[prys8_m2] [float] NOT NULL,
	[prys9_m2] [float] NOT NULL,
	[prysa_m2] [float] NOT NULL,
	[prys__m2] [float] NOT NULL,
	[prvm1_m2] [float] NOT NULL,
	[prvm2_m2] [float] NOT NULL,
	[prvm3_m2] [float] NOT NULL,
	[prvm4_m2] [float] NOT NULL,
	[prvm5_m2] [float] NOT NULL,
	[prvm6_m2] [float] NOT NULL,
	[prvm7_m2] [float] NOT NULL,
	[prvm8_m2] [float] NOT NULL,
	[prvm9_m2] [float] NOT NULL,
	[prvma_m2] [float] NOT NULL,
	[prvm__m2] [float] NOT NULL,
	[prys1_kg] [float] NOT NULL,
	[prys2_kg] [float] NOT NULL,
	[prys3_kg] [float] NOT NULL,
	[prys4_kg] [float] NOT NULL,
	[prys5_kg] [float] NOT NULL,
	[prys6_kg] [float] NOT NULL,
	[prys7_kg] [float] NOT NULL,
	[prys8_kg] [float] NOT NULL,
	[prys9_kg] [float] NOT NULL,
	[prysa_kg] [float] NOT NULL,
	[prys__kg] [float] NOT NULL,
	[prvm1_kg] [float] NOT NULL,
	[prvm2_kg] [float] NOT NULL,
	[prvm3_kg] [float] NOT NULL,
	[prvm4_kg] [float] NOT NULL,
	[prvm5_kg] [float] NOT NULL,
	[prvm6_kg] [float] NOT NULL,
	[prvm7_kg] [float] NOT NULL,
	[prvm8_kg] [float] NOT NULL,
	[prvm9_kg] [float] NOT NULL,
	[prvma_kg] [float] NOT NULL,
	[prvm__kg] [float] NOT NULL,
	[bst__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst2_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst3_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[stdbrrek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[weblabel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rfqonw4l] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gecoat__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[coat_fct] [float] NOT NULL,
	[website_] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[korting_] [float] NOT NULL,
	[rlweti_l] [float] NOT NULL,
	[digmedrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lak_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lak_comm] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kenmerk_] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[fabriek] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[krimp__b] [float] NOT NULL,
	[krimp__h] [float] NOT NULL,
	[art_ref1] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[calc_pry] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[buigmoment_taber15_md] [float] NOT NULL,
	[buigmoment_taber15_cd] [float] NOT NULL,
	[buigstijfheid_lw5_md] [float] NOT NULL,
	[buigstijfheid_lw5_cd] [float] NOT NULL,
	[buigstijfheid_lw5_tol_neg] [float] NOT NULL,
	[buigstijfheid_lw5_tol_pos] [float] NOT NULL,
	[witheid_iso2470_boven] [float] NOT NULL,
	[witheid_iso2470_boven_min] [float] NOT NULL,
	[witheid_iso2470_boven_max] [float] NOT NULL,
	[witheid_iso2470_onder] [float] NOT NULL,
	[witheid_iso2470_onder_min] [float] NOT NULL,
	[witheid_iso2470_onder_max] [float] NOT NULL,
	[witheid_iso11475_boven] [float] NOT NULL,
	[witheid_iso11475_onder] [float] NOT NULL,
	[witheid_iso56312_l_boven] [float] NOT NULL,
	[witheid_iso56312_l_onder] [float] NOT NULL,
	[witheid_iso56312_a_boven] [float] NOT NULL,
	[witheid_iso56312_a_onder] [float] NOT NULL,
	[witheid_iso56312_b_boven] [float] NOT NULL,
	[witheid_iso56312_b_onder] [float] NOT NULL,
	[vetbestendigheid] [int] NOT NULL,
	[robinson] [float] NOT NULL,
	[voeding] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[witmakers] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[gestreken_boven] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gestreken_onder] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[wij__dat] [date] NOT NULL,
	[wij__usr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[kolom_6a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_productie] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [drgersi1] PRIMARY KEY CLUSTERED 
(
	[drg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[drgers__]') AND name = N'drgersi2')
CREATE NONCLUSTERED INDEX [drgersi2] ON [dbo].[drgers__]
(
	[drg__grp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__drg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__drg__rpn]  DEFAULT ('') FOR [drg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__typfrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__typfrref]  DEFAULT ('') FOR [typfrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__typfrrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__typfrrpn]  DEFAULT ('') FOR [typfrrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__srtfrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__srtfrref]  DEFAULT ('') FOR [srtfrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__srtfrrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__srtfrrpn]  DEFAULT ('') FOR [srtfrrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__typrgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__typrgref]  DEFAULT ('') FOR [typrgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__typrgrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__typrgrpn]  DEFAULT ('') FOR [typrgrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__srtrgref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__srtrgref]  DEFAULT ('') FOR [srtrgref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__srtrgrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__srtrgrpn]  DEFAULT ('') FOR [srtrgrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__typlmref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__typlmref]  DEFAULT ('') FOR [typlmref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__typlmrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__typlmrpn]  DEFAULT ('') FOR [typlmrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__srtlmref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__srtlmref]  DEFAULT ('') FOR [srtlmref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__srtlmrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__srtlmrpn]  DEFAULT ('') FOR [srtlmrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__drg__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__drg__oms]  DEFAULT ('') FOR [drg__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__drg__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__drg__grp]  DEFAULT ('') FOR [drg__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__ean___13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__ean___13]  DEFAULT ('') FOR [ean___13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__pap__srt]  DEFAULT ('5') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__fsc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__fsc__ref]  DEFAULT ('') FOR [fsc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__klr__ref_boven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__klr__ref_boven]  DEFAULT ('') FOR [klr__ref_boven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__klr__ref_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__klr__ref_onder]  DEFAULT ('') FOR [klr__ref_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__levtrm_d]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__levtrm_d]  DEFAULT ((0)) FOR [levtrm_d]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__levtrm_u]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__levtrm_u]  DEFAULT ('  0:00') FOR [levtrm_u]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__layoutnr]  DEFAULT ('11') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__diktemic]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__diktemic]  DEFAULT ((0)) FOR [diktemic]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__grammage]  DEFAULT ((0)) FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl1]  DEFAULT ((0)) FOR [oppervl1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl2]  DEFAULT ((0)) FOR [oppervl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl3]  DEFAULT ((0)) FOR [oppervl3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl4]  DEFAULT ((0)) FOR [oppervl4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl5]  DEFAULT ((0)) FOR [oppervl5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl6]  DEFAULT ((0)) FOR [oppervl6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl7]  DEFAULT ((0)) FOR [oppervl7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl8]  DEFAULT ((0)) FOR [oppervl8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervl9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervl9]  DEFAULT ((0)) FOR [oppervl9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__oppervla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__oppervla]  DEFAULT ((0)) FOR [oppervla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht1]  DEFAULT ((0)) FOR [gewicht1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht2]  DEFAULT ((0)) FOR [gewicht2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht3]  DEFAULT ((0)) FOR [gewicht3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht4]  DEFAULT ((0)) FOR [gewicht4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht5]  DEFAULT ((0)) FOR [gewicht5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht6]  DEFAULT ((0)) FOR [gewicht6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht7]  DEFAULT ((0)) FOR [gewicht7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht8]  DEFAULT ((0)) FOR [gewicht8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewicht9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewicht9]  DEFAULT ((0)) FOR [gewicht9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gewichta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gewichta]  DEFAULT ((0)) FOR [gewichta]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys1_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys1_m2]  DEFAULT ((0)) FOR [prys1_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys2_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys2_m2]  DEFAULT ((0)) FOR [prys2_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys3_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys3_m2]  DEFAULT ((0)) FOR [prys3_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys4_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys4_m2]  DEFAULT ((0)) FOR [prys4_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys5_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys5_m2]  DEFAULT ((0)) FOR [prys5_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys6_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys6_m2]  DEFAULT ((0)) FOR [prys6_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys7_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys7_m2]  DEFAULT ((0)) FOR [prys7_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys8_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys8_m2]  DEFAULT ((0)) FOR [prys8_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys9_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys9_m2]  DEFAULT ((0)) FOR [prys9_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prysa_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prysa_m2]  DEFAULT ((0)) FOR [prysa_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys__m2]  DEFAULT ((0)) FOR [prys__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm1_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm1_m2]  DEFAULT ((0)) FOR [prvm1_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm2_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm2_m2]  DEFAULT ((0)) FOR [prvm2_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm3_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm3_m2]  DEFAULT ((0)) FOR [prvm3_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm4_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm4_m2]  DEFAULT ((0)) FOR [prvm4_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm5_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm5_m2]  DEFAULT ((0)) FOR [prvm5_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm6_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm6_m2]  DEFAULT ((0)) FOR [prvm6_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm7_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm7_m2]  DEFAULT ((0)) FOR [prvm7_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm8_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm8_m2]  DEFAULT ((0)) FOR [prvm8_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm9_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm9_m2]  DEFAULT ((0)) FOR [prvm9_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvma_m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvma_m2]  DEFAULT ((0)) FOR [prvma_m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm__m2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm__m2]  DEFAULT ((0)) FOR [prvm__m2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys1_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys1_kg]  DEFAULT ((0)) FOR [prys1_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys2_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys2_kg]  DEFAULT ((0)) FOR [prys2_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys3_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys3_kg]  DEFAULT ((0)) FOR [prys3_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys4_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys4_kg]  DEFAULT ((0)) FOR [prys4_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys5_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys5_kg]  DEFAULT ((0)) FOR [prys5_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys6_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys6_kg]  DEFAULT ((0)) FOR [prys6_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys7_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys7_kg]  DEFAULT ((0)) FOR [prys7_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys8_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys8_kg]  DEFAULT ((0)) FOR [prys8_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys9_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys9_kg]  DEFAULT ((0)) FOR [prys9_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prysa_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prysa_kg]  DEFAULT ((0)) FOR [prysa_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prys__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prys__kg]  DEFAULT ((0)) FOR [prys__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm1_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm1_kg]  DEFAULT ((0)) FOR [prvm1_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm2_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm2_kg]  DEFAULT ((0)) FOR [prvm2_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm3_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm3_kg]  DEFAULT ((0)) FOR [prvm3_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm4_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm4_kg]  DEFAULT ((0)) FOR [prvm4_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm5_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm5_kg]  DEFAULT ((0)) FOR [prvm5_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm6_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm6_kg]  DEFAULT ((0)) FOR [prvm6_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm7_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm7_kg]  DEFAULT ((0)) FOR [prvm7_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm8_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm8_kg]  DEFAULT ((0)) FOR [prvm8_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm9_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm9_kg]  DEFAULT ((0)) FOR [prvm9_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvma_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvma_kg]  DEFAULT ((0)) FOR [prvma_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__prvm__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__prvm__kg]  DEFAULT ((0)) FOR [prvm__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__bst__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__bst__typ]  DEFAULT ('1') FOR [bst__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__bst2_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__bst2_typ]  DEFAULT ('2') FOR [bst2_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__bst3_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__bst3_typ]  DEFAULT ('2') FOR [bst3_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__stdbrrek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__stdbrrek]  DEFAULT ('N') FOR [stdbrrek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__weblabel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__weblabel]  DEFAULT ('N') FOR [weblabel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__rfqonw4l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__rfqonw4l]  DEFAULT ('N') FOR [rfqonw4l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gecoat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gecoat__]  DEFAULT ('N') FOR [gecoat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__coat_fct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__coat_fct]  DEFAULT ((1.0)) FOR [coat_fct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__website_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__website_]  DEFAULT ('') FOR [website_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__korting_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__korting_]  DEFAULT ((0)) FOR [korting_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__rlweti_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__rlweti_l]  DEFAULT ((0)) FOR [rlweti_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__digmedrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__digmedrf]  DEFAULT ('') FOR [digmedrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__lak_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__lak_vrpl]  DEFAULT ('N') FOR [lak_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__lak_comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__lak_comm]  DEFAULT ('') FOR [lak_comm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__kenmerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__kenmerk_]  DEFAULT ('') FOR [kenmerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__fabriek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__fabriek]  DEFAULT ('') FOR [fabriek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__koers___]  DEFAULT ((1.0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__krimp__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__krimp__b]  DEFAULT ((0)) FOR [krimp__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__krimp__h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__krimp__h]  DEFAULT ((0)) FOR [krimp__h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__art_ref1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__art_ref1]  DEFAULT ('') FOR [art_ref1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__calc_pry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__calc_pry]  DEFAULT ('N') FOR [calc_pry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__buigmoment_taber15_md]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__buigmoment_taber15_md]  DEFAULT ((0)) FOR [buigmoment_taber15_md]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__buigmoment_taber15_cd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__buigmoment_taber15_cd]  DEFAULT ((0)) FOR [buigmoment_taber15_cd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__buigstijfheid_lw5_md]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__buigstijfheid_lw5_md]  DEFAULT ((0)) FOR [buigstijfheid_lw5_md]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__buigstijfheid_lw5_cd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__buigstijfheid_lw5_cd]  DEFAULT ((0)) FOR [buigstijfheid_lw5_cd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__buigstijfheid_lw5_tol_neg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__buigstijfheid_lw5_tol_neg]  DEFAULT ((0)) FOR [buigstijfheid_lw5_tol_neg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__buigstijfheid_lw5_tol_pos]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__buigstijfheid_lw5_tol_pos]  DEFAULT ((0)) FOR [buigstijfheid_lw5_tol_pos]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso2470_boven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso2470_boven]  DEFAULT ((0)) FOR [witheid_iso2470_boven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso2470_boven_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso2470_boven_min]  DEFAULT ((0)) FOR [witheid_iso2470_boven_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso2470_boven_max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso2470_boven_max]  DEFAULT ((0)) FOR [witheid_iso2470_boven_max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso2470_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso2470_onder]  DEFAULT ((0)) FOR [witheid_iso2470_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso2470_onder_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso2470_onder_min]  DEFAULT ((0)) FOR [witheid_iso2470_onder_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso2470_onder_max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso2470_onder_max]  DEFAULT ((0)) FOR [witheid_iso2470_onder_max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso11475_boven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso11475_boven]  DEFAULT ((0)) FOR [witheid_iso11475_boven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso11475_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso11475_onder]  DEFAULT ((0)) FOR [witheid_iso11475_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso56312_l_boven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso56312_l_boven]  DEFAULT ((0)) FOR [witheid_iso56312_l_boven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso56312_l_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso56312_l_onder]  DEFAULT ((0)) FOR [witheid_iso56312_l_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso56312_a_boven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso56312_a_boven]  DEFAULT ((0)) FOR [witheid_iso56312_a_boven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso56312_a_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso56312_a_onder]  DEFAULT ((0)) FOR [witheid_iso56312_a_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso56312_b_boven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso56312_b_boven]  DEFAULT ((0)) FOR [witheid_iso56312_b_boven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witheid_iso56312_b_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witheid_iso56312_b_onder]  DEFAULT ((0)) FOR [witheid_iso56312_b_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__vetbestendigheid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__vetbestendigheid]  DEFAULT ((0)) FOR [vetbestendigheid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__robinson]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__robinson]  DEFAULT ((0)) FOR [robinson]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__voeding]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__voeding]  DEFAULT ('U') FOR [voeding]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__witmakers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__witmakers]  DEFAULT ('') FOR [witmakers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gestreken_boven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gestreken_boven]  DEFAULT ('U') FOR [gestreken_boven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__gestreken_onder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__gestreken_onder]  DEFAULT ('U') FOR [gestreken_onder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__wij__dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__wij__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__wij__usr]  DEFAULT ('') FOR [wij__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__kolom_6a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__kolom_6a]  DEFAULT ('') FOR [kolom_6a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgers__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgers__] ADD  CONSTRAINT [DF_drgers__land_productie]  DEFAULT ('') FOR [land_productie]
END

