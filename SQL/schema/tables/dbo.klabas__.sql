SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klabas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klabas__](
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gln_____] [nvarchar](13) COLLATE Latin1_General_CI_AS NOT NULL,
	[ape___nr] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[county__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postnaam] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[speedtel] [int] NOT NULL,
	[speedfax] [int] NOT NULL,
	[telex___] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__com] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[mailing_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[letop___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[website_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt2ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[centrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[land__nr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[handelnm] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[handelnr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[bankrek_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_rek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[iban____] [nvarchar](34) COLLATE Latin1_General_CI_AS NOT NULL,
	[bic_____] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkt___ex] [int] NOT NULL,
	[fkt_com1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkt_com2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkt_form] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fknp_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla2typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fknp2ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fstckcre] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fstcktst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[flok_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fknp3ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__fac] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdporef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmdkoref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[klsegref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrzm_kla] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla_hvdt] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__vdt] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[beoordel] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[status__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_dat] [date] NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss_] [float] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss2] [float] NOT NULL,
	[kom2_kom] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanman__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kort__af] [float] NOT NULL,
	[grp___af] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__2af] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kltlevnr] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgprdfac] [int] NOT NULL,
	[dgprddel] [int] NOT NULL,
	[qalvlref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[smpl_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[smpl_str] [int] NOT NULL,
	[smpl_stp] [int] NOT NULL,
	[smpl_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[smpl_nul] [int] NOT NULL,
	[smplvar1] [int] NOT NULL,
	[smplvar2] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[smplvar3] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[smplvar4] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__num] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__tst] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[amo__ask] [float] NOT NULL,
	[amo__akn] [float] NOT NULL,
	[amoaknvm] [float] NOT NULL,
	[amoaknom] [float] NOT NULL,
	[vrzvvdat] [date] NOT NULL,
	[vrzbetko] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz_zone] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz_mij_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd_vrrd] [float] NOT NULL,
	[vgo_vrrd] [float] NOT NULL,
	[ngo_opbr] [float] NOT NULL,
	[ngo_kost] [float] NOT NULL,
	[ngkoopbr] [float] NOT NULL,
	[openstf_] [float] NOT NULL,
	[ovschr_o] [float] NOT NULL,
	[ovschr_k] [float] NOT NULL,
	[ngo_aant] [int] NOT NULL,
	[ngkoaant] [int] NOT NULL,
	[opf_aant] [int] NOT NULL,
	[oudstefk] [date] NOT NULL,
	[volglev_] [date] NOT NULL,
	[le_berek] [date] NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ltol_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvblay_p] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvblay_r] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvbpalnr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvbpalsm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvbompgr] [float] NOT NULL,
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean___nr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[kol_trfp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gblk_off] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gblk_fak] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gblk_lev] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gblk_bst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanmaak_] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[zaknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[boknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[akknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ficlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ontlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bstlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvblaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rmalaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[afrlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[etilaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[af1laynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ofblaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ofblulnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[artlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordlulnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[brflaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[konlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[edifalay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[edifavlg] [int] NOT NULL,
	[fac__edi] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__pdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__bat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml_bat3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eml__trn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cdeklaap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pctnktoe] [float] NOT NULL,
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hit_dat1] [date] NOT NULL,
	[hit_dat2] [date] NOT NULL,
	[hit_dat3] [date] NOT NULL,
	[hit_str1] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[hit_str2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[hit_str3] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[hit_get1] [float] NOT NULL,
	[hit_get2] [float] NOT NULL,
	[hit_get3] [float] NOT NULL,
	[vk_k_vst] [float] NOT NULL,
	[vk_k_pct] [float] NOT NULL,
	[vk_kmpct] [float] NOT NULL,
	[vk_kmkom] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[vk_kfpct] [float] NOT NULL,
	[vk_tovst] [float] NOT NULL,
	[vk_topct] [float] NOT NULL,
	[vk_betal] [int] NOT NULL,
	[brf_prys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_supp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_oplv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpan_pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eur__dat] [date] NOT NULL,
	[ord_begl] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_cont] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bstrfweb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[faccmweb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[paswrdwb] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[w4lqqlog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[w4lrfqem] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[apv__src] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijsweb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval06] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval07] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval08] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval09] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[uuid] [uniqueidentifier] NOT NULL,
	[rek_staf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tariffs_default_number_of_months_valid] [int] NOT NULL,
	[tariffs_fixed_end__dat] [bit] NOT NULL,
	[tariffs_fixed_vm] [bit] NOT NULL,
	[tariffs_proposal_for_creation] [int] NOT NULL,
	[cerm8_record_version] [int] NOT NULL,
	[lok_uuid] [uniqueidentifier] NOT NULL,
	[lok_cerm8_record_version] [int] NOT NULL,
	[rek_staf_src] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[salesorders_default_stafprys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [ref__kla] PRIMARY KEY CLUSTERED 
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[klabas__]') AND name = N'lok_uuid')
CREATE UNIQUE NONCLUSTERED INDEX [lok_uuid] ON [dbo].[klabas__]
(
	[lok_uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[klabas__]') AND name = N'ref__cde')
CREATE NONCLUSTERED INDEX [ref__cde] ON [dbo].[klabas__]
(
	[cdeklaap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[klabas__]') AND name = N'rpn__kla')
CREATE UNIQUE NONCLUSTERED INDEX [rpn__kla] ON [dbo].[klabas__]
(
	[kla__rpn] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[klabas__]') AND name = N'uuid____')
CREATE UNIQUE NONCLUSTERED INDEX [uuid____] ON [dbo].[klabas__]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__gln_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__gln_____]  DEFAULT ('') FOR [gln_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ape___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ape___nr]  DEFAULT ('') FOR [ape___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__dienst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__dienst__]  DEFAULT ('') FOR [dienst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__wijk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__wijk____]  DEFAULT ('') FOR [wijk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__postnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__postnaam]  DEFAULT ('') FOR [postnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__speedtel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__speedtel]  DEFAULT ((0)) FOR [speedtel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__speedfax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__speedfax]  DEFAULT ((0)) FOR [speedfax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__telex___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__telex___]  DEFAULT ('') FOR [telex___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__taal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__taal_ref]  DEFAULT ('') FOR [taal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kla__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kla__com]  DEFAULT ('') FOR [kla__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__mailing_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__mailing_]  DEFAULT ('') FOR [mailing_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__letop___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__letop___]  DEFAULT ('') FOR [letop___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__website_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__website_]  DEFAULT ('') FOR [website_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__munt2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__munt2ref]  DEFAULT ('') FOR [munt2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__centrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__centrref]  DEFAULT ('') FOR [centrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__stx_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__stx_beh_]  DEFAULT ('') FOR [stx_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__land__nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__land__nr]  DEFAULT ('') FOR [land__nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__handelnm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__handelnm]  DEFAULT ('') FOR [handelnm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__handelnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__handelnr]  DEFAULT ('') FOR [handelnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__bankrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__bankrek_]  DEFAULT ('') FOR [bankrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__land_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__land_rek]  DEFAULT ('') FOR [land_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__iban____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__iban____]  DEFAULT ('') FOR [iban____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__bic_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__bic_____]  DEFAULT ('') FOR [bic_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fkt___ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fkt___ex]  DEFAULT ((0)) FOR [fkt___ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fkt_com1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fkt_com1]  DEFAULT ('') FOR [fkt_com1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fkt_com2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fkt_com2]  DEFAULT ('') FOR [fkt_com2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fkt_form]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fkt_form]  DEFAULT ('') FOR [fkt_form]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fknp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fknp_ref]  DEFAULT ('') FOR [fknp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fkla2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fkla2ref]  DEFAULT ('') FOR [fkla2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fkla2typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fkla2typ]  DEFAULT ('') FOR [fkla2typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fknp2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fknp2ref]  DEFAULT ('') FOR [fknp2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fstckcre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fstckcre]  DEFAULT ('') FOR [fstckcre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fstcktst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fstcktst]  DEFAULT ('') FOR [fstcktst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__flok_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__flok_ref]  DEFAULT ('') FOR [flok_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fknp3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fknp3ref]  DEFAULT ('') FOR [fknp3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__grp__fac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__grp__fac]  DEFAULT ('') FOR [grp__fac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fmdporef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fmdporef]  DEFAULT ('') FOR [fmdporef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fmdkoref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fmdkoref]  DEFAULT ('') FOR [fmdkoref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fac__typ]  DEFAULT ('') FOR [fac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__klsegref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__klsegref]  DEFAULT ('') FOR [klsegref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrzm_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrzm_kla]  DEFAULT ('') FOR [vrzm_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kla_hvdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kla_hvdt]  DEFAULT ('') FOR [kla_hvdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kla__vdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kla__vdt]  DEFAULT ('') FOR [kla__vdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__beoordel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__beoordel]  DEFAULT ('') FOR [beoordel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__status__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__status__]  DEFAULT ('') FOR [status__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__stat_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__stat_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [stat_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kommiss2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kommiss2]  DEFAULT ((0)) FOR [kommiss2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kom2_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kom2_kom]  DEFAULT ('') FOR [kom2_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__aanman__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__aanman__]  DEFAULT ('') FOR [aanman__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kort__af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kort__af]  DEFAULT ((0)) FOR [kort__af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__grp___af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__grp___af]  DEFAULT ('') FOR [grp___af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__grp__2af]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__grp__2af]  DEFAULT ('') FOR [grp__2af]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__bkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__bkla_ref]  DEFAULT ('') FOR [bkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kltlevnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kltlevnr]  DEFAULT ('') FOR [kltlevnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__dgprdfac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__dgprdfac]  DEFAULT ((0)) FOR [dgprdfac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__dgprddel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__dgprddel]  DEFAULT ((0)) FOR [dgprddel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__qalvlref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__qalvlref]  DEFAULT ('') FOR [qalvlref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smpl_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smpl_typ]  DEFAULT ('') FOR [smpl_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smpl_str]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smpl_str]  DEFAULT ((0)) FOR [smpl_str]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smpl_stp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smpl_stp]  DEFAULT ((0)) FOR [smpl_stp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smpl_ref]  DEFAULT ('') FOR [smpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smpl_nul]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smpl_nul]  DEFAULT ((0)) FOR [smpl_nul]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smplvar1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smplvar1]  DEFAULT ((0)) FOR [smplvar1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smplvar2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smplvar2]  DEFAULT ('') FOR [smplvar2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smplvar3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smplvar3]  DEFAULT ('') FOR [smplvar3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__smplvar4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__smplvar4]  DEFAULT ('') FOR [smplvar4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrz__num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrz__num]  DEFAULT ('') FOR [vrz__num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrz__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrz__tst]  DEFAULT ('') FOR [vrz__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__amo__ask]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__amo__ask]  DEFAULT ((0)) FOR [amo__ask]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__amo__akn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__amo__akn]  DEFAULT ((0)) FOR [amo__akn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__amoaknvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__amoaknvm]  DEFAULT ((0)) FOR [amoaknvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__amoaknom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__amoaknom]  DEFAULT ((0)) FOR [amoaknom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrzvvdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrzvvdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzvvdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrzbetko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrzbetko]  DEFAULT ('') FOR [vrzbetko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrz__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrz__com]  DEFAULT ('') FOR [vrz__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrz_zone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrz_zone]  DEFAULT ('') FOR [vrz_zone]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vrz_mij_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vrz_mij_]  DEFAULT ('') FOR [vrz_mij_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__grd_vrrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__grd_vrrd]  DEFAULT ((0)) FOR [grd_vrrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vgo_vrrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vgo_vrrd]  DEFAULT ((0)) FOR [vgo_vrrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ngo_opbr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ngo_opbr]  DEFAULT ((0)) FOR [ngo_opbr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ngo_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ngo_kost]  DEFAULT ((0)) FOR [ngo_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ngkoopbr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ngkoopbr]  DEFAULT ((0)) FOR [ngkoopbr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__openstf_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__openstf_]  DEFAULT ((0)) FOR [openstf_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ovschr_o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ovschr_o]  DEFAULT ((0)) FOR [ovschr_o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ovschr_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ovschr_k]  DEFAULT ((0)) FOR [ovschr_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ngo_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ngo_aant]  DEFAULT ((0)) FOR [ngo_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ngkoaant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ngkoaant]  DEFAULT ((0)) FOR [ngkoaant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__opf_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__opf_aant]  DEFAULT ((0)) FOR [opf_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__oudstefk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__oudstefk]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [oudstefk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__volglev_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__volglev_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [volglev_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__le_berek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__le_berek]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [le_berek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__levtrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__levtrref]  DEFAULT ('') FOR [levtrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ltol_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ltol_ref]  DEFAULT ('') FOR [ltol_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__trncom_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__trncom_1]  DEFAULT ('') FOR [trncom_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__trncom_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__trncom_2]  DEFAULT ('') FOR [trncom_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__trncom_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__trncom_3]  DEFAULT ('') FOR [trncom_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lvblay_p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lvblay_p]  DEFAULT ('') FOR [lvblay_p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lvblay_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lvblay_r]  DEFAULT ('') FOR [lvblay_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lvbpalnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lvbpalnr]  DEFAULT ('') FOR [lvbpalnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lvbpalsm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lvbpalsm]  DEFAULT ('') FOR [lvbpalsm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lvbompgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lvbompgr]  DEFAULT ((0)) FOR [lvbompgr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__pry__ref]  DEFAULT ('') FOR [pry__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ean___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ean___nr]  DEFAULT ('') FOR [ean___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__kol_trfp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__kol_trfp]  DEFAULT ('') FOR [kol_trfp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__gblk_off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__gblk_off]  DEFAULT ('') FOR [gblk_off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__gblk_fak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__gblk_fak]  DEFAULT ('') FOR [gblk_fak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__gblk_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__gblk_lev]  DEFAULT ('') FOR [gblk_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__gblk_bst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__gblk_bst]  DEFAULT ('') FOR [gblk_bst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__aanmaak_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__aanmaak_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [aanmaak_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__zaknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__zaknpref]  DEFAULT ('') FOR [zaknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__boknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__boknpref]  DEFAULT ('') FOR [boknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__koknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__koknpref]  DEFAULT ('') FOR [koknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__akknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__akknpref]  DEFAULT ('') FOR [akknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__mnknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__mnknpref]  DEFAULT ('') FOR [mnknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ficlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ficlaynr]  DEFAULT ('') FOR [ficlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ontlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ontlaynr]  DEFAULT ('') FOR [ontlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__bstlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__bstlaynr]  DEFAULT ('') FOR [bstlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__uitlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__uitlaynr]  DEFAULT ('') FOR [uitlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lvblaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lvblaynr]  DEFAULT ('') FOR [lvblaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__rmalaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__rmalaynr]  DEFAULT ('') FOR [rmalaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__afrlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__afrlaynr]  DEFAULT ('') FOR [afrlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__etilaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__etilaynr]  DEFAULT ('') FOR [etilaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__af1laynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__af1laynr]  DEFAULT ('') FOR [af1laynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ofblaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ofblaynr]  DEFAULT ('') FOR [ofblaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ofblulnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ofblulnr]  DEFAULT ('') FOR [ofblulnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__artlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__artlaynr]  DEFAULT ('') FOR [artlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ordlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ordlaynr]  DEFAULT ('') FOR [ordlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ordlulnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ordlulnr]  DEFAULT ('') FOR [ordlulnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__brflaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__brflaynr]  DEFAULT ('') FOR [brflaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__konlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__konlaynr]  DEFAULT ('') FOR [konlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__edifalay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__edifalay]  DEFAULT ('') FOR [edifalay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__edifavlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__edifavlg]  DEFAULT ((0)) FOR [edifavlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fac__edi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fac__edi]  DEFAULT ('') FOR [fac__edi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__fac__pdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__fac__pdf]  DEFAULT ('') FOR [fac__pdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__eml__bat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__eml__bat]  DEFAULT ('') FOR [eml__bat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__eml_bat3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__eml_bat3]  DEFAULT ('') FOR [eml_bat3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__eml__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__eml__vkp]  DEFAULT ('') FOR [eml__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__eml__trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__eml__trn]  DEFAULT ('') FOR [eml__trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__cdeklaap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__cdeklaap]  DEFAULT ('') FOR [cdeklaap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__pctnktoe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__pctnktoe]  DEFAULT ((0)) FOR [pctnktoe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_dat1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_dat1]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [hit_dat1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_dat2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_dat2]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [hit_dat2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_dat3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_dat3]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [hit_dat3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_str1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_str1]  DEFAULT ('') FOR [hit_str1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_str2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_str2]  DEFAULT ('') FOR [hit_str2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_str3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_str3]  DEFAULT ('') FOR [hit_str3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_get1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_get1]  DEFAULT ((0)) FOR [hit_get1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_get2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_get2]  DEFAULT ((0)) FOR [hit_get2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__hit_get3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__hit_get3]  DEFAULT ((0)) FOR [hit_get3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_k_vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_k_vst]  DEFAULT ((0)) FOR [vk_k_vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_k_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_k_pct]  DEFAULT ((0)) FOR [vk_k_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_kmpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_kmpct]  DEFAULT ((0)) FOR [vk_kmpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_kmkom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_kmkom]  DEFAULT ('') FOR [vk_kmkom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_kfpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_kfpct]  DEFAULT ((0)) FOR [vk_kfpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_tovst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_tovst]  DEFAULT ((0)) FOR [vk_tovst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_topct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_topct]  DEFAULT ((0)) FOR [vk_topct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vk_betal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vk_betal]  DEFAULT ((0)) FOR [vk_betal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__brf_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__brf_prys]  DEFAULT ('') FOR [brf_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__brf_supp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__brf_supp]  DEFAULT ('') FOR [brf_supp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__brf_oplv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__brf_oplv]  DEFAULT ('') FOR [brf_oplv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vkpan_pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vkpan_pp]  DEFAULT ('') FOR [vkpan_pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__eur__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__eur__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [eur__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__ord_begl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__ord_begl]  DEFAULT ('') FOR [ord_begl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__int_cont]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__int_cont]  DEFAULT ('') FOR [int_cont]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__bstrfweb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__bstrfweb]  DEFAULT ('') FOR [bstrfweb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__faccmweb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__faccmweb]  DEFAULT ('') FOR [faccmweb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__01]  DEFAULT ('') FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__02]  DEFAULT ('') FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__03]  DEFAULT ('') FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__04]  DEFAULT ('') FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__05]  DEFAULT ('') FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__06]  DEFAULT ('') FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__07]  DEFAULT ('') FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__08]  DEFAULT ('') FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__09]  DEFAULT ('') FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__10]  DEFAULT ('') FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__11]  DEFAULT ('') FOR [antw__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__12]  DEFAULT ('') FOR [antw__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__13]  DEFAULT ('') FOR [antw__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__14]  DEFAULT ('') FOR [antw__14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__15]  DEFAULT ('') FOR [antw__15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__16]  DEFAULT ('') FOR [antw__16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__17]  DEFAULT ('') FOR [antw__17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__18]  DEFAULT ('') FOR [antw__18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__19]  DEFAULT ('') FOR [antw__19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__20]  DEFAULT ('') FOR [antw__20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__21]  DEFAULT ('') FOR [antw__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__22]  DEFAULT ('') FOR [antw__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__23]  DEFAULT ('') FOR [antw__23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__24]  DEFAULT ('') FOR [antw__24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__25]  DEFAULT ('') FOR [antw__25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__26]  DEFAULT ('') FOR [antw__26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__27]  DEFAULT ('') FOR [antw__27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__28]  DEFAULT ('') FOR [antw__28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__29]  DEFAULT ('') FOR [antw__29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__antw__30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__antw__30]  DEFAULT ('') FOR [antw__30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__wij__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__wij__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__wij__usr]  DEFAULT ('') FOR [wij__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__paswrdwb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__paswrdwb]  DEFAULT ('') FOR [paswrdwb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__w4lqqlog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__w4lqqlog]  DEFAULT ('') FOR [w4lqqlog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__w4lrfqem]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__w4lrfqem]  DEFAULT ('') FOR [w4lrfqem]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__apv__src]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__apv__src]  DEFAULT ('') FOR [apv__src]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__prijsweb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__prijsweb]  DEFAULT ('') FOR [prijsweb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__uuid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__uuid]  DEFAULT (newid()) FOR [uuid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__rek_staf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__rek_staf]  DEFAULT ('') FOR [rek_staf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tariffs_default_number_of_months_valid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tariffs_default_number_of_months_valid]  DEFAULT ((0)) FOR [tariffs_default_number_of_months_valid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tariffs_fixed_end__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tariffs_fixed_end__dat]  DEFAULT ((0)) FOR [tariffs_fixed_end__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tariffs_fixed_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tariffs_fixed_vm]  DEFAULT ((0)) FOR [tariffs_fixed_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__tariffs_proposal_for_creation]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__tariffs_proposal_for_creation]  DEFAULT ((0)) FOR [tariffs_proposal_for_creation]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__cerm8_record_version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__cerm8_record_version]  DEFAULT ((0)) FOR [cerm8_record_version]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lok_uuid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lok_uuid]  DEFAULT (newid()) FOR [lok_uuid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__lok_cerm8_record_version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__lok_cerm8_record_version]  DEFAULT ((0)) FOR [lok_cerm8_record_version]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__rek_staf_src]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__rek_staf_src]  DEFAULT ('1') FOR [rek_staf_src]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__vpakvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__vpakvast]  DEFAULT ('N') FOR [vpakvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klabas__salesorders_default_stafprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klabas__] ADD  CONSTRAINT [DF_klabas__salesorders_default_stafprys]  DEFAULT ('0') FOR [salesorders_default_stafprys]
END

