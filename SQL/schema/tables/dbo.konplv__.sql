SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[konplv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[konplv__](
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__nam] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__vnm] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp_lett] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__sex] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat_p] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijk___p] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[landrefp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[county_p] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state__p] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postrefp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postnamp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[tel__pkp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[sptelpkp] [int] NOT NULL,
	[fax__pkp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[spfaxpkp] [int] NOT NULL,
	[emailpkp] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[mailingp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[county__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postnaam] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[speedtel] [int] NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[speedfax] [int] NOT NULL,
	[email___] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[tel_auto] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[mailing_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpkr__1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpkr__2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpkr__3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpkr__4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpkr__5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[funktie_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[funk_int] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_gebr_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[werkadrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[voorvg_1] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[voorvg_2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[achtvg__] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp_nam2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[cdelevap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde__aap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[brflaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[offlulnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[offwrdnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wddlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdwlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[grdlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[linkedin] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[facebook] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[twitter_] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
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
	[aanmaak_] [date] NOT NULL,
	[wij__dat] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[wij__usr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[uuid] [uniqueidentifier] NOT NULL,
	[cerm8_record_version] [int] NOT NULL,
 CONSTRAINT [knp_kolv] PRIMARY KEY CLUSTERED 
(
	[lev__ref] ASC,
	[knp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[konplv__]') AND name = N'konplvi1')
CREATE NONCLUSTERED INDEX [konplvi1] ON [dbo].[konplv__]
(
	[cdelevap] ASC,
	[cde__aap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[konplv__]') AND name = N'uuid____')
CREATE NONCLUSTERED INDEX [uuid____] ON [dbo].[konplv__]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knp__nam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knp__nam]  DEFAULT ('') FOR [knp__nam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knp__vnm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knp__vnm]  DEFAULT ('') FOR [knp__vnm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knp_lett]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knp_lett]  DEFAULT ('') FOR [knp_lett]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knp__sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knp__sex]  DEFAULT ('') FOR [knp__sex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__straat_p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__straat_p]  DEFAULT ('') FOR [straat_p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__wijk___p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__wijk___p]  DEFAULT ('') FOR [wijk___p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__landrefp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__landrefp]  DEFAULT ('') FOR [landrefp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__county_p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__county_p]  DEFAULT ('') FOR [county_p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__state__p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__state__p]  DEFAULT ('') FOR [state__p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__postrefp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__postrefp]  DEFAULT ('') FOR [postrefp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__postnamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__postnamp]  DEFAULT ('') FOR [postnamp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__tel__pkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__tel__pkp]  DEFAULT ('') FOR [tel__pkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__sptelpkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__sptelpkp]  DEFAULT ((0)) FOR [sptelpkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__fax__pkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__fax__pkp]  DEFAULT ('') FOR [fax__pkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__spfaxpkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__spfaxpkp]  DEFAULT ((0)) FOR [spfaxpkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__emailpkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__emailpkp]  DEFAULT ('') FOR [emailpkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__mailingp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__mailingp]  DEFAULT ('') FOR [mailingp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__wijk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__wijk____]  DEFAULT ('') FOR [wijk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__postnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__postnaam]  DEFAULT ('') FOR [postnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__speedtel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__speedtel]  DEFAULT ((0)) FOR [speedtel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__speedfax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__speedfax]  DEFAULT ((0)) FOR [speedfax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__email___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__email___]  DEFAULT ('') FOR [email___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__tel_auto]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__tel_auto]  DEFAULT ('') FOR [tel_auto]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__mailing_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__mailing_]  DEFAULT ('') FOR [mailing_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knpkr__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knpkr__1]  DEFAULT ('') FOR [knpkr__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knpkr__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knpkr__2]  DEFAULT ('') FOR [knpkr__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knpkr__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knpkr__3]  DEFAULT ('') FOR [knpkr__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knpkr__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knpkr__4]  DEFAULT ('') FOR [knpkr__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knpkr__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knpkr__5]  DEFAULT ('') FOR [knpkr__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__funktie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__funktie_]  DEFAULT ('') FOR [funktie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__funk_int]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__funk_int]  DEFAULT ('') FOR [funk_int]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__taal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__taal_ref]  DEFAULT ('') FOR [taal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__in_gebr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__in_gebr_]  DEFAULT ('') FOR [in_gebr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__werkadrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__werkadrs]  DEFAULT ('') FOR [werkadrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__voorvg_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__voorvg_1]  DEFAULT ('') FOR [voorvg_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__voorvg_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__voorvg_2]  DEFAULT ('') FOR [voorvg_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__achtvg__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__achtvg__]  DEFAULT ('') FOR [achtvg__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__dienst_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__dienst_1]  DEFAULT ('') FOR [dienst_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__dienst_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__dienst_2]  DEFAULT ('') FOR [dienst_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__dienst_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__dienst_3]  DEFAULT ('') FOR [dienst_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__knp_nam2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__knp_nam2]  DEFAULT ('') FOR [knp_nam2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__cdelevap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__cdelevap]  DEFAULT ('') FOR [cdelevap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__cde__aap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__cde__aap]  DEFAULT ('') FOR [cde__aap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__brflaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__brflaynr]  DEFAULT ('') FOR [brflaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__offlulnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__offlulnr]  DEFAULT ('') FOR [offlulnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__offwrdnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__offwrdnr]  DEFAULT ('') FOR [offwrdnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__wddlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__wddlaynr]  DEFAULT ('') FOR [wddlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__wdwlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__wdwlaynr]  DEFAULT ('') FOR [wdwlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__grdlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__grdlaynr]  DEFAULT ('') FOR [grdlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__levlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__levlaynr]  DEFAULT ('') FOR [levlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__linkedin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__linkedin]  DEFAULT ('') FOR [linkedin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__facebook]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__facebook]  DEFAULT ('') FOR [facebook]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__twitter_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__twitter_]  DEFAULT ('') FOR [twitter_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__01]  DEFAULT ('') FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__02]  DEFAULT ('') FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__03]  DEFAULT ('') FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__04]  DEFAULT ('') FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__05]  DEFAULT ('') FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__06]  DEFAULT ('') FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__07]  DEFAULT ('') FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__08]  DEFAULT ('') FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__09]  DEFAULT ('') FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__10]  DEFAULT ('') FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__11]  DEFAULT ('') FOR [antw__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__12]  DEFAULT ('') FOR [antw__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__13]  DEFAULT ('') FOR [antw__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__14]  DEFAULT ('') FOR [antw__14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__15]  DEFAULT ('') FOR [antw__15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__16]  DEFAULT ('') FOR [antw__16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__17]  DEFAULT ('') FOR [antw__17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__18]  DEFAULT ('') FOR [antw__18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__19]  DEFAULT ('') FOR [antw__19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__20]  DEFAULT ('') FOR [antw__20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__21]  DEFAULT ('') FOR [antw__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__22]  DEFAULT ('') FOR [antw__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__23]  DEFAULT ('') FOR [antw__23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__24]  DEFAULT ('') FOR [antw__24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__25]  DEFAULT ('') FOR [antw__25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__26]  DEFAULT ('') FOR [antw__26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__27]  DEFAULT ('') FOR [antw__27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__28]  DEFAULT ('') FOR [antw__28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__29]  DEFAULT ('') FOR [antw__29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__antw__30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__antw__30]  DEFAULT ('') FOR [antw__30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__aanmaak_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__aanmaak_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [aanmaak_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__wij__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__wij__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__wij__usr]  DEFAULT ('') FOR [wij__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__uuid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__uuid]  DEFAULT (newid()) FOR [uuid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_konplv__cerm8_record_version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[konplv__] ADD  CONSTRAINT [DF_konplv__cerm8_record_version]  DEFAULT ((0)) FOR [cerm8_record_version]
END

