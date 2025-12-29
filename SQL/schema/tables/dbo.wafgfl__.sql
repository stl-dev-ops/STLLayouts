SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wafgfl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wafgfl__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt1_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt2_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__bo] [int] NOT NULL,
	[basisopl] [float] NOT NULL,
	[f_aantal] [float] NOT NULL,
	[omsaant_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[stprysvm] [float] NOT NULL,
	[stprysbm] [float] NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kort_mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[comm_mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordergeb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[kort__vm] [float] NOT NULL,
	[kort__bm] [float] NOT NULL,
	[texcl_vm] [float] NOT NULL,
	[texcl_bm] [float] NOT NULL,
	[btw___vm] [float] NOT NULL,
	[btw___bm] [float] NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordreffl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnrfl] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[bstreffl] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[vfl__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[tlr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[tlr__beg] [float] NOT NULL,
	[tlr_eind] [float] NOT NULL,
	[stx__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_pct] [float] NOT NULL,
	[cnty_pct] [float] NOT NULL,
	[city_pct] [float] NOT NULL,
	[spld_pct] [float] NOT NULL,
	[ship_tax] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ori] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ori] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ori] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_ori] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd__vm] [float] NOT NULL,
	[betd__bm] [float] NOT NULL,
	[betdmeth] [nvarchar](64) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_dat] [date] NOT NULL,
	[betd_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_tid] [nvarchar](128) COLLATE Latin1_General_CI_AS NOT NULL,
	[betdcard] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_kla] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_com] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [wafgfli1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[volgnr__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfl__]') AND name = N'wafgfli2')
CREATE NONCLUSTERED INDEX [wafgfli2] ON [dbo].[wafgfl__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfl__]') AND name = N'wafgfli3')
CREATE NONCLUSTERED INDEX [wafgfli3] ON [dbo].[wafgfl__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfl__]') AND name = N'wafgfli4')
CREATE NONCLUSTERED INDEX [wafgfli4] ON [dbo].[wafgfl__]
(
	[bstreffl] ASC,
	[vfl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfl__]') AND name = N'wafgfli5')
CREATE NONCLUSTERED INDEX [wafgfli5] ON [dbo].[wafgfl__]
(
	[ordreffl] ASC,
	[volgnrfl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__fkttxt1_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__fkttxt1_]  DEFAULT ('') FOR [fkttxt1_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__fkttxt2_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__fkttxt2_]  DEFAULT ('') FOR [fkttxt2_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__aant__bo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__aant__bo]  DEFAULT ((0)) FOR [aant__bo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__basisopl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__basisopl]  DEFAULT ((0)) FOR [basisopl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__f_aantal]  DEFAULT ((0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__omsaant_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__omsaant_]  DEFAULT ('') FOR [omsaant_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__stprysvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__stprysvm]  DEFAULT ((0)) FOR [stprysvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__stprysbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__stprysbm]  DEFAULT ((0)) FOR [stprysbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__kort_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__kort_mog]  DEFAULT ('') FOR [kort_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__comm_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__comm_mog]  DEFAULT ('') FOR [comm_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__ordergeb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__ordergeb]  DEFAULT ('') FOR [ordergeb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__kort__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__kort__vm]  DEFAULT ((0)) FOR [kort__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__kort__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__kort__bm]  DEFAULT ((0)) FOR [kort__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__texcl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__texcl_vm]  DEFAULT ((0)) FOR [texcl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__texcl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__texcl_bm]  DEFAULT ((0)) FOR [texcl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__btw___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__btw___vm]  DEFAULT ((0)) FOR [btw___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__btw___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__btw___bm]  DEFAULT ((0)) FOR [btw___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__ordreffl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__ordreffl]  DEFAULT ('') FOR [ordreffl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__volgnrfl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__volgnrfl]  DEFAULT ('') FOR [volgnrfl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__bstreffl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__bstreffl]  DEFAULT ('') FOR [bstreffl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__vfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__vfl__ref]  DEFAULT ('') FOR [vfl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__tlr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__tlr__ref]  DEFAULT ('') FOR [tlr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__tlr__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__tlr__beg]  DEFAULT ((0)) FOR [tlr__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__tlr_eind]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__tlr_eind]  DEFAULT ((0)) FOR [tlr_eind]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__stx__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__stx__srt]  DEFAULT ('') FOR [stx__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__stat_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__stat_pct]  DEFAULT ((0)) FOR [stat_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__cnty_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__cnty_pct]  DEFAULT ((0)) FOR [cnty_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__city_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__city_pct]  DEFAULT ((0)) FOR [city_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__spld_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__spld_pct]  DEFAULT ((0)) FOR [spld_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__ship_tax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__ship_tax]  DEFAULT ('') FOR [ship_tax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__stat__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__stat__bm]  DEFAULT ((0)) FOR [stat__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__stat__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__stat__vm]  DEFAULT ((0)) FOR [stat__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__cnty__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__cnty__bm]  DEFAULT ((0)) FOR [cnty__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__cnty__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__cnty__vm]  DEFAULT ((0)) FOR [cnty__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__city__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__city__bm]  DEFAULT ((0)) FOR [city__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__city__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__city__vm]  DEFAULT ((0)) FOR [city__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__spld__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__spld__bm]  DEFAULT ((0)) FOR [spld__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__spld__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__spld__vm]  DEFAULT ((0)) FOR [spld__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__lokalite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__lokalite]  DEFAULT ('') FOR [lokalite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__dgbk_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__dgbk_ori]  DEFAULT ('') FOR [dgbk_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__bkj__ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__bkj__ori]  DEFAULT ('') FOR [bkj__ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__fak__ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__fak__ori]  DEFAULT ('') FOR [fak__ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__volg_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__volg_ori]  DEFAULT ('') FOR [volg_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betd__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betd__bm]  DEFAULT ((0)) FOR [betd__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betdmeth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betdmeth]  DEFAULT ('') FOR [betdmeth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betd_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betd_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [betd_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betd_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betd_uur]  DEFAULT ('') FOR [betd_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betd_tid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betd_tid]  DEFAULT ('') FOR [betd_tid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betdcard]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betdcard]  DEFAULT ('') FOR [betdcard]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betd_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betd_kla]  DEFAULT ('') FOR [betd_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfl__betd_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfl__] ADD  CONSTRAINT [DF_wafgfl__betd_com]  DEFAULT ('') FOR [betd_com]
END

