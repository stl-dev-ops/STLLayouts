SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[levbas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[levbas__](
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[gln_____] [nvarchar](13) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[dienst__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[county__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postnaam] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[speedtel] [int] NOT NULL,
	[speedfax] [int] NOT NULL,
	[telex___] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[website_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mailing_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[letop___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__com] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_grp_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[edigrlay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ediwdlay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[editrlay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[editrvlg] [int] NOT NULL,
	[edi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[brflaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[offlulnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[offwrdnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wddlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdwlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__cat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__dll] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__url] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__dir] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__prt] [int] NOT NULL,
	[ediaduit] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ediadrin] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi_user] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi_pasw] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi_engi] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_type] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss2] [float] NOT NULL,
	[status__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[flev_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__dft] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt2ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aankrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arekref2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arktrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[centrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_def_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_aftr] [float] NOT NULL,
	[korting_] [float] NOT NULL,
	[lnd__bnk] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[siretnr_] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[levkltnr] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[extraln_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvgr_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[beoordel] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pbnk_lev] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pbnk_bnk] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[bankrek_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[iban____] [nvarchar](34) COLLATE Latin1_General_CI_AS NOT NULL,
	[bic_____] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_naam_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_straa] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_wijk_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_landr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postn] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_count] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_state] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_rek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanmaak_] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[cdelevap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[usezynrf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn_code] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_list] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_oms4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_fil4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[bbknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[eur__dat] [date] NOT NULL,
	[oph__grd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oph__prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oph__wdd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oph__trn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw__30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wij__dat] [date] NOT NULL,
	[wij__usr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[uuid] [uniqueidentifier] NOT NULL,
	[cerm8_record_version] [int] NOT NULL,
	[lok_uuid] [uniqueidentifier] NOT NULL,
	[lok_cerm8_record_version] [int] NOT NULL,
	[lvsegref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn_packing_required] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eori_number] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [ref__lev] PRIMARY KEY CLUSTERED 
(
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levbas__]') AND name = N'knp__lev')
CREATE UNIQUE NONCLUSTERED INDEX [knp__lev] ON [dbo].[levbas__]
(
	[lev__rpn] ASC,
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levbas__]') AND name = N'levbasi2')
CREATE NONCLUSTERED INDEX [levbasi2] ON [dbo].[levbas__]
(
	[cdelevap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levbas__]') AND name = N'lok_uuid')
CREATE UNIQUE NONCLUSTERED INDEX [lok_uuid] ON [dbo].[levbas__]
(
	[lok_uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levbas__]') AND name = N'uuid____')
CREATE UNIQUE NONCLUSTERED INDEX [uuid____] ON [dbo].[levbas__]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__gln_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__gln_____]  DEFAULT ('') FOR [gln_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__dienst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__dienst__]  DEFAULT ('') FOR [dienst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__wijk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__wijk____]  DEFAULT ('') FOR [wijk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__postnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__postnaam]  DEFAULT ('') FOR [postnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__speedtel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__speedtel]  DEFAULT ((0)) FOR [speedtel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__speedfax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__speedfax]  DEFAULT ((0)) FOR [speedfax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__telex___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__telex___]  DEFAULT ('') FOR [telex___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__website_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__website_]  DEFAULT ('') FOR [website_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__levtrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__levtrref]  DEFAULT ('') FOR [levtrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__mailing_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__mailing_]  DEFAULT ('') FOR [mailing_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__letop___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__letop___]  DEFAULT ('') FOR [letop___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lev__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lev__com]  DEFAULT ('') FOR [lev__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lev_grp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lev_grp_]  DEFAULT ('') FOR [lev_grp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__taal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__taal_ref]  DEFAULT ('') FOR [taal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__trncom_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__trncom_1]  DEFAULT ('') FOR [trncom_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__trncom_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__trncom_2]  DEFAULT ('') FOR [trncom_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__trncom_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__trncom_3]  DEFAULT ('') FOR [trncom_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__grd__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__grd__lay]  DEFAULT ('') FOR [grd__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edigrlay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edigrlay]  DEFAULT ('') FOR [edigrlay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ediwdlay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ediwdlay]  DEFAULT ('') FOR [ediwdlay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__editrlay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__editrlay]  DEFAULT ('') FOR [editrlay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__editrvlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__editrvlg]  DEFAULT ((0)) FOR [editrvlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi__ref]  DEFAULT ('') FOR [edi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__brflaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__brflaynr]  DEFAULT ('') FOR [brflaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__offlulnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__offlulnr]  DEFAULT ('') FOR [offlulnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__offwrdnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__offwrdnr]  DEFAULT ('') FOR [offwrdnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__wddlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__wddlaynr]  DEFAULT ('') FOR [wddlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__wdwlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__wdwlaynr]  DEFAULT ('') FOR [wdwlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__levlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__levlaynr]  DEFAULT ('') FOR [levlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi__typ]  DEFAULT ('') FOR [edi__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi__cat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi__cat]  DEFAULT ('') FOR [edi__cat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi__dll]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi__dll]  DEFAULT ('') FOR [edi__dll]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi__url]  DEFAULT ('') FOR [edi__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi__dir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi__dir]  DEFAULT ('') FOR [edi__dir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi__prt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi__prt]  DEFAULT ((0)) FOR [edi__prt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ediaduit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ediaduit]  DEFAULT ('') FOR [ediaduit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ediadrin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ediadrin]  DEFAULT ('') FOR [ediadrin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi_user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi_user]  DEFAULT ('') FOR [edi_user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi_pasw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi_pasw]  DEFAULT ('') FOR [edi_pasw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__edi_engi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__edi_engi]  DEFAULT ('') FOR [edi_engi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lev_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lev_type]  DEFAULT ('') FOR [lev_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__kommiss2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__kommiss2]  DEFAULT ((0)) FOR [kommiss2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__status__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__status__]  DEFAULT ('') FOR [status__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__flev_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__flev_ref]  DEFAULT ('') FOR [flev_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__fac__dft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__fac__dft]  DEFAULT ('') FOR [fac__dft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__munt2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__munt2ref]  DEFAULT ('') FOR [munt2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__aankrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__aankrref]  DEFAULT ('') FOR [aankrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__arekref2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__arekref2]  DEFAULT ('') FOR [arekref2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__arktrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__arktrref]  DEFAULT ('') FOR [arktrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__centrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__centrref]  DEFAULT ('') FOR [centrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__btw_def_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__btw_def_]  DEFAULT ('') FOR [btw_def_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__btw_aftr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__btw_aftr]  DEFAULT ((0)) FOR [btw_aftr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__korting_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__korting_]  DEFAULT ((0)) FOR [korting_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lnd__bnk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lnd__bnk]  DEFAULT ('') FOR [lnd__bnk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__siretnr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__siretnr_]  DEFAULT ('') FOR [siretnr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__levkltnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__levkltnr]  DEFAULT ('') FOR [levkltnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__extraln_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__extraln_]  DEFAULT ('') FOR [extraln_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lvgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lvgr_ref]  DEFAULT ('') FOR [lvgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__beoordel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__beoordel]  DEFAULT ('') FOR [beoordel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pbnk_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pbnk_lev]  DEFAULT ('') FOR [pbnk_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pbnk_bnk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pbnk_bnk]  DEFAULT ('') FOR [pbnk_bnk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__bankrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__bankrek_]  DEFAULT ('') FOR [bankrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__iban____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__iban____]  DEFAULT ('') FOR [iban____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__bic_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__bic_____]  DEFAULT ('') FOR [bic_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_naam_]  DEFAULT ('') FOR [ba_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_straa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_straa]  DEFAULT ('') FOR [ba_straa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_wijk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_wijk_]  DEFAULT ('') FOR [ba_wijk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_landr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_landr]  DEFAULT ('') FOR [ba_landr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_postr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_postr]  DEFAULT ('') FOR [ba_postr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_postn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_postn]  DEFAULT ('') FOR [ba_postn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_count]  DEFAULT ('') FOR [ba_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__ba_state]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__ba_state]  DEFAULT ('') FOR [ba_state]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__land_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__land_rek]  DEFAULT ('') FOR [land_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__aanmaak_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__aanmaak_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [aanmaak_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__cdelevap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__cdelevap]  DEFAULT ('') FOR [cdelevap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__usezynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__usezynrf]  DEFAULT ('') FOR [usezynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__trn_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__trn_code]  DEFAULT ('') FOR [trn_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_list]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_list]  DEFAULT ('') FOR [pry_list]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_oms1]  DEFAULT ('') FOR [pry_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_oms2]  DEFAULT ('') FOR [pry_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_oms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_oms3]  DEFAULT ('') FOR [pry_oms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_oms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_oms4]  DEFAULT ('') FOR [pry_oms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_fil1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_fil1]  DEFAULT ('') FOR [pry_fil1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_fil2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_fil2]  DEFAULT ('') FOR [pry_fil2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_fil3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_fil3]  DEFAULT ('') FOR [pry_fil3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__pry_fil4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__pry_fil4]  DEFAULT ('') FOR [pry_fil4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__bbknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__bbknpref]  DEFAULT ('') FOR [bbknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__eur__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__eur__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [eur__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__oph__grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__oph__grd]  DEFAULT ('') FOR [oph__grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__oph__prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__oph__prd]  DEFAULT ('') FOR [oph__prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__oph__wdd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__oph__wdd]  DEFAULT ('') FOR [oph__wdd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__oph__trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__oph__trn]  DEFAULT ('') FOR [oph__trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__01]  DEFAULT ('') FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__02]  DEFAULT ('') FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__03]  DEFAULT ('') FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__04]  DEFAULT ('') FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__05]  DEFAULT ('') FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__06]  DEFAULT ('') FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__07]  DEFAULT ('') FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__08]  DEFAULT ('') FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__09]  DEFAULT ('') FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__10]  DEFAULT ('') FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__11]  DEFAULT ('') FOR [antw__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__12]  DEFAULT ('') FOR [antw__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__13]  DEFAULT ('') FOR [antw__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__14]  DEFAULT ('') FOR [antw__14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__15]  DEFAULT ('') FOR [antw__15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__16]  DEFAULT ('') FOR [antw__16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__17]  DEFAULT ('') FOR [antw__17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__18]  DEFAULT ('') FOR [antw__18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__19]  DEFAULT ('') FOR [antw__19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__20]  DEFAULT ('') FOR [antw__20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__21]  DEFAULT ('') FOR [antw__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__22]  DEFAULT ('') FOR [antw__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__23]  DEFAULT ('') FOR [antw__23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__24]  DEFAULT ('') FOR [antw__24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__25]  DEFAULT ('') FOR [antw__25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__26]  DEFAULT ('') FOR [antw__26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__27]  DEFAULT ('') FOR [antw__27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__28]  DEFAULT ('') FOR [antw__28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__29]  DEFAULT ('') FOR [antw__29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__antw__30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__antw__30]  DEFAULT ('') FOR [antw__30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__wij__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__wij__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__wij__usr]  DEFAULT ('') FOR [wij__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__uuid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__uuid]  DEFAULT (newid()) FOR [uuid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__cerm8_record_version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__cerm8_record_version]  DEFAULT ((0)) FOR [cerm8_record_version]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lok_uuid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lok_uuid]  DEFAULT (newid()) FOR [lok_uuid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lok_cerm8_record_version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lok_cerm8_record_version]  DEFAULT ((0)) FOR [lok_cerm8_record_version]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__lvsegref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__lvsegref]  DEFAULT ('') FOR [lvsegref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__trn_packing_required]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__trn_packing_required]  DEFAULT ('') FOR [trn_packing_required]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levbas__eori_number]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levbas__] ADD  CONSTRAINT [DF_levbas__eori_number]  DEFAULT ('') FOR [eori_number]
END

