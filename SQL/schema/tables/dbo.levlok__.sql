SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[levlok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[levlok__](
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[gln_____] [nvarchar](13) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ltol_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[trncom_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx_beh2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[email___] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kenlad__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mailing_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[eenmalig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[status__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[weblabel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_ori] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[brflaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lvblaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[cdelokap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[wij__dat] [date] NOT NULL,
	[wij__usr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[handelnr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[uuid] [uniqueidentifier] NOT NULL,
	[cerm8_record_version] [int] NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [lok_id1_] PRIMARY KEY CLUSTERED 
(
	[lok__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levlok__]') AND name = N'lok_id2_')
CREATE UNIQUE NONCLUSTERED INDEX [lok_id2_] ON [dbo].[levlok__]
(
	[lok__rpn] ASC,
	[lok__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levlok__]') AND name = N'lok_id3_')
CREATE NONCLUSTERED INDEX [lok_id3_] ON [dbo].[levlok__]
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levlok__]') AND name = N'lok_id4_')
CREATE NONCLUSTERED INDEX [lok_id4_] ON [dbo].[levlok__]
(
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levlok__]') AND name = N'lok_id5_')
CREATE NONCLUSTERED INDEX [lok_id5_] ON [dbo].[levlok__]
(
	[cdelokap] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levlok__]') AND name = N'lok_id6_')
CREATE NONCLUSTERED INDEX [lok_id6_] ON [dbo].[levlok__]
(
	[gln_____] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[levlok__]') AND name = N'uuid____')
CREATE NONCLUSTERED INDEX [uuid____] ON [dbo].[levlok__]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lok__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lok__rpn]  DEFAULT ('') FOR [lok__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__gln_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__gln_____]  DEFAULT ('') FOR [gln_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lok__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lok__oms]  DEFAULT ('') FOR [lok__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__ltol_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__ltol_ref]  DEFAULT ('') FOR [ltol_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__trncom_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__trncom_1]  DEFAULT ('') FOR [trncom_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__trncom_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__trncom_2]  DEFAULT ('') FOR [trncom_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__trncom_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__trncom_3]  DEFAULT ('') FOR [trncom_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__btw_beh2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__btw_beh2]  DEFAULT ('') FOR [btw_beh2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__stx_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__stx_beh_]  DEFAULT ('') FOR [stx_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__stx_beh2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__stx_beh2]  DEFAULT ('') FOR [stx_beh2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lev_loc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lev_loc1]  DEFAULT ('') FOR [lev_loc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lev_loc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lev_loc2]  DEFAULT ('') FOR [lev_loc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lev_loc3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lev_loc3]  DEFAULT ('') FOR [lev_loc3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__wijk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__wijk____]  DEFAULT ('') FOR [wijk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__postnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__postnaam]  DEFAULT ('') FOR [postnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__speedtel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__speedtel]  DEFAULT ((0)) FOR [speedtel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__speedfax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__speedfax]  DEFAULT ((0)) FOR [speedfax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__email___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__email___]  DEFAULT ('') FOR [email___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__kenlad__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__kenlad__]  DEFAULT ('') FOR [kenlad__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__levtrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__levtrref]  DEFAULT ('') FOR [levtrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__mailing_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__mailing_]  DEFAULT ('') FOR [mailing_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__eenmalig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__eenmalig]  DEFAULT ('') FOR [eenmalig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__status__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__status__]  DEFAULT ('') FOR [status__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__weblabel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__weblabel]  DEFAULT ('') FOR [weblabel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__crea_ori]  DEFAULT ('') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lvknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lvknpref]  DEFAULT ('') FOR [lvknpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__brflaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__brflaynr]  DEFAULT ('') FOR [brflaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__lvblaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__lvblaynr]  DEFAULT ('') FOR [lvblaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__cdelokap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__cdelokap]  DEFAULT ('') FOR [cdelokap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__01]  DEFAULT ('') FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__02]  DEFAULT ('') FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__03]  DEFAULT ('') FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__04]  DEFAULT ('') FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__05]  DEFAULT ('') FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__06]  DEFAULT ('') FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__07]  DEFAULT ('') FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__08]  DEFAULT ('') FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__09]  DEFAULT ('') FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__10]  DEFAULT ('') FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__11]  DEFAULT ('') FOR [antw__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__12]  DEFAULT ('') FOR [antw__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__13]  DEFAULT ('') FOR [antw__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__14]  DEFAULT ('') FOR [antw__14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__15]  DEFAULT ('') FOR [antw__15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__16]  DEFAULT ('') FOR [antw__16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__17]  DEFAULT ('') FOR [antw__17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__18]  DEFAULT ('') FOR [antw__18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__19]  DEFAULT ('') FOR [antw__19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__20]  DEFAULT ('') FOR [antw__20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__21]  DEFAULT ('') FOR [antw__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__22]  DEFAULT ('') FOR [antw__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__23]  DEFAULT ('') FOR [antw__23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__24]  DEFAULT ('') FOR [antw__24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__25]  DEFAULT ('') FOR [antw__25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__26]  DEFAULT ('') FOR [antw__26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__27]  DEFAULT ('') FOR [antw__27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__28]  DEFAULT ('') FOR [antw__28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__29]  DEFAULT ('') FOR [antw__29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__antw__30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__antw__30]  DEFAULT ('') FOR [antw__30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__aanmaak_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__aanmaak_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [aanmaak_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__wij__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__wij__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__wij__usr]  DEFAULT ('') FOR [wij__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__handelnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__handelnr]  DEFAULT ('') FOR [handelnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__uuid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__uuid]  DEFAULT (newid()) FOR [uuid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__cerm8_record_version]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__cerm8_record_version]  DEFAULT ((0)) FOR [cerm8_record_version]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levlok__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levlok__] ADD  CONSTRAINT [DF_levlok__levvwref]  DEFAULT ('') FOR [levvwref]
END

