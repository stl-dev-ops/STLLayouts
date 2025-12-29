SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[grootb__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[grootb__](
	[grtb_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[alg___nr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[boek_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[debcre__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwtboek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koers___] [float] NOT NULL,
	[aant_dec] [int] NOT NULL,
	[dok___nr] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedragbm] [float] NOT NULL,
	[bedragvm] [float] NOT NULL,
	[bedragom] [float] NOT NULL,
	[mvh___bm] [float] NOT NULL,
	[mvh___vm] [float] NOT NULL,
	[btw_____] [float] NOT NULL,
	[btw___bm] [float] NOT NULL,
	[btw___vm] [float] NOT NULL,
	[btwa_pct] [float] NOT NULL,
	[btwa__bm] [float] NOT NULL,
	[btwa__vm] [float] NOT NULL,
	[btwna_bm] [float] NOT NULL,
	[btwna_vm] [float] NOT NULL,
	[btwlnkrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwnarek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_pct] [float] NOT NULL,
	[cnty_pct] [float] NOT NULL,
	[city_pct] [float] NOT NULL,
	[spld_pct] [float] NOT NULL,
	[stat__bm] [float] NOT NULL,
	[stat__vm] [float] NOT NULL,
	[cnty__bm] [float] NOT NULL,
	[cnty__vm] [float] NOT NULL,
	[city__bm] [float] NOT NULL,
	[city__vm] [float] NOT NULL,
	[spld__bm] [float] NOT NULL,
	[spld__vm] [float] NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokalite] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[grtbkcom] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[stuk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fin__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stkd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[div__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_atab_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bal_wv__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyz_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyzwie] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyzdat] [date] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [idx_grtb] PRIMARY KEY CLUSTERED 
(
	[grtb_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[grootb__]') AND name = N'idx_grt2')
CREATE NONCLUSTERED INDEX [idx_grt2] ON [dbo].[grootb__]
(
	[dossier_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[grootb__]') AND name = N'idx_grt6')
CREATE NONCLUSTERED INDEX [idx_grt6] ON [dbo].[grootb__]
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__grtb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__grtb_ref]  DEFAULT ('') FOR [grtb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__alg___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__alg___nr]  DEFAULT ('') FOR [alg___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__boek_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__boek_srt]  DEFAULT ('') FOR [boek_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__debcre__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__debcre__]  DEFAULT ('') FOR [debcre__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwtboek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwtboek]  DEFAULT ('') FOR [btwtboek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__dok___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__dok___nr]  DEFAULT ('') FOR [dok___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__bedragbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__bedragbm]  DEFAULT ((0)) FOR [bedragbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__bedragvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__bedragvm]  DEFAULT ((0)) FOR [bedragvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__bedragom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__bedragom]  DEFAULT ((0)) FOR [bedragom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__mvh___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__mvh___bm]  DEFAULT ((0)) FOR [mvh___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__mvh___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__mvh___vm]  DEFAULT ((0)) FOR [mvh___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btw_____]  DEFAULT ((0)) FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btw___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btw___bm]  DEFAULT ((0)) FOR [btw___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btw___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btw___vm]  DEFAULT ((0)) FOR [btw___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwa_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwa_pct]  DEFAULT ((0)) FOR [btwa_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwa__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwa__bm]  DEFAULT ((0)) FOR [btwa__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwa__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwa__vm]  DEFAULT ((0)) FOR [btwa__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwna_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwna_bm]  DEFAULT ((0)) FOR [btwna_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwna_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwna_vm]  DEFAULT ((0)) FOR [btwna_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwlnkrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwlnkrf]  DEFAULT ('') FOR [btwlnkrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__btwnarek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__btwnarek]  DEFAULT ('') FOR [btwnarek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__stat_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__stat_pct]  DEFAULT ((0)) FOR [stat_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__cnty_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__cnty_pct]  DEFAULT ((0)) FOR [cnty_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__city_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__city_pct]  DEFAULT ((0)) FOR [city_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__spld_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__spld_pct]  DEFAULT ((0)) FOR [spld_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__stat__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__stat__bm]  DEFAULT ((0)) FOR [stat__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__stat__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__stat__vm]  DEFAULT ((0)) FOR [stat__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__cnty__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__cnty__bm]  DEFAULT ((0)) FOR [cnty__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__cnty__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__cnty__vm]  DEFAULT ((0)) FOR [cnty__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__city__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__city__bm]  DEFAULT ((0)) FOR [city__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__city__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__city__vm]  DEFAULT ((0)) FOR [city__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__spld__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__spld__bm]  DEFAULT ((0)) FOR [spld__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__spld__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__spld__vm]  DEFAULT ((0)) FOR [spld__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__lokalite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__lokalite]  DEFAULT ('') FOR [lokalite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__grtbkcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__grtbkcom]  DEFAULT ('') FOR [grtbkcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__stuk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__stuk_ref]  DEFAULT ('') FOR [stuk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__fin__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__fin__ref]  DEFAULT ('') FOR [fin__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__stkd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__stkd_ref]  DEFAULT ('') FOR [stkd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__div__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__div__ref]  DEFAULT ('') FOR [div__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__in_atab_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__in_atab_]  DEFAULT ('') FOR [in_atab_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__bal_wv__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__bal_wv__]  DEFAULT ('') FOR [bal_wv__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__gewyz_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__gewyz_yn]  DEFAULT ('') FOR [gewyz_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__gewyzwie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__gewyzwie]  DEFAULT ('') FOR [gewyzwie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__gewyzdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__gewyzdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gewyzdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grootb__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grootb__] ADD  CONSTRAINT [DF_grootb__straat__]  DEFAULT ('') FOR [straat__]
END

