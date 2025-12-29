SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wafgfk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wafgfk__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rnd___bm] [float] NOT NULL,
	[rnd___vm] [float] NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[betd_dat] [date] NOT NULL,
	[verv_dat] [date] NOT NULL,
	[verv2dat] [date] NOT NULL,
	[verv3dat] [date] NOT NULL,
	[verv4dat] [date] NOT NULL,
	[verv5dat] [date] NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbn_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__com] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok2_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok3_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok4_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac___ex] [int] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_ori] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_pct0] [float] NOT NULL,
	[btw_pct1] [float] NOT NULL,
	[btw_pct2] [float] NOT NULL,
	[btw_pct3] [float] NOT NULL,
	[btw_pct4] [float] NOT NULL,
	[btw_pct5] [float] NOT NULL,
	[texcl_v0] [float] NOT NULL,
	[texcl_v1] [float] NOT NULL,
	[texcl_v2] [float] NOT NULL,
	[texcl_v3] [float] NOT NULL,
	[texcl_v4] [float] NOT NULL,
	[texcl_v5] [float] NOT NULL,
	[texcl_b0] [float] NOT NULL,
	[texcl_b1] [float] NOT NULL,
	[texcl_b2] [float] NOT NULL,
	[texcl_b3] [float] NOT NULL,
	[texcl_b4] [float] NOT NULL,
	[texcl_b5] [float] NOT NULL,
	[btw___v0] [float] NOT NULL,
	[btw___v1] [float] NOT NULL,
	[btw___v2] [float] NOT NULL,
	[btw___v3] [float] NOT NULL,
	[btw___v4] [float] NOT NULL,
	[btw___v5] [float] NOT NULL,
	[btw___b0] [float] NOT NULL,
	[btw___b1] [float] NOT NULL,
	[btw___b2] [float] NOT NULL,
	[btw___b3] [float] NOT NULL,
	[btw___b4] [float] NOT NULL,
	[btw___b5] [float] NOT NULL,
	[mvh___b0] [float] NOT NULL,
	[mvh___b1] [float] NOT NULL,
	[mvh___b2] [float] NOT NULL,
	[mvh___b3] [float] NOT NULL,
	[mvh___b4] [float] NOT NULL,
	[mvh___b5] [float] NOT NULL,
	[mvh___v0] [float] NOT NULL,
	[mvh___v1] [float] NOT NULL,
	[mvh___v2] [float] NOT NULL,
	[mvh___v3] [float] NOT NULL,
	[mvh___v4] [float] NOT NULL,
	[mvh___v5] [float] NOT NULL,
	[tincl_v0] [float] NOT NULL,
	[tincl_v1] [float] NOT NULL,
	[tincl_v2] [float] NOT NULL,
	[tincl_v3] [float] NOT NULL,
	[tincl_v4] [float] NOT NULL,
	[tincl_v5] [float] NOT NULL,
	[tincl_b0] [float] NOT NULL,
	[tincl_b1] [float] NOT NULL,
	[tincl_b2] [float] NOT NULL,
	[tincl_b3] [float] NOT NULL,
	[tincl_b4] [float] NOT NULL,
	[tincl_b5] [float] NOT NULL,
	[texcl_vm] [float] NOT NULL,
	[texcl_bm] [float] NOT NULL,
	[btw___vm] [float] NOT NULL,
	[btw___bm] [float] NOT NULL,
	[stat__bm] [float] NOT NULL,
	[stat__vm] [float] NOT NULL,
	[cnty__bm] [float] NOT NULL,
	[cnty__vm] [float] NOT NULL,
	[city__bm] [float] NOT NULL,
	[city__vm] [float] NOT NULL,
	[spld__bm] [float] NOT NULL,
	[spld__vm] [float] NOT NULL,
	[tincl_vm] [float] NOT NULL,
	[tincl_bm] [float] NOT NULL,
	[tincl1bm] [float] NOT NULL,
	[tincl2bm] [float] NOT NULL,
	[tincl3bm] [float] NOT NULL,
	[tincl4bm] [float] NOT NULL,
	[tincl5bm] [float] NOT NULL,
	[tincl1vm] [float] NOT NULL,
	[tincl2vm] [float] NOT NULL,
	[tincl3vm] [float] NOT NULL,
	[tincl4vm] [float] NOT NULL,
	[tincl5vm] [float] NOT NULL,
	[kortcpct] [float] NOT NULL,
	[kortc_vm] [float] NOT NULL,
	[kortc_bm] [float] NOT NULL,
	[kort2pct] [float] NOT NULL,
	[kortc2vm] [float] NOT NULL,
	[kortc2bm] [float] NOT NULL,
	[kort3pct] [float] NOT NULL,
	[kortc3vm] [float] NOT NULL,
	[kortc3bm] [float] NOT NULL,
	[boetepct] [float] NOT NULL,
	[boete_vm] [float] NOT NULL,
	[boete_bm] [float] NOT NULL,
	[fmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnredi] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrprn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__dat] [date] NOT NULL,
	[ic__jaar] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ic_maand] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[goed__bm] [float] NOT NULL,
	[dienstbm] [float] NOT NULL,
	[drieh_bm] [float] NOT NULL,
	[bankrek_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[iban____] [nvarchar](34) COLLATE Latin1_General_CI_AS NOT NULL,
	[bic_____] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[rf_meded] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[betd__vm] [float] NOT NULL,
	[betd__bm] [float] NOT NULL,
	[betw_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [wafgfki1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfk__]') AND name = N'wafgfki2')
CREATE NONCLUSTERED INDEX [wafgfki2] ON [dbo].[wafgfk__]
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__rnd___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__rnd___bm]  DEFAULT ((0)) FOR [rnd___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__rnd___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__rnd___vm]  DEFAULT ((0)) FOR [rnd___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__taal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__taal_ref]  DEFAULT ('') FOR [taal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__knplkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__knplkref]  DEFAULT ('') FOR [knplkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__betd_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__betd_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [betd_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__verv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__verv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__verv2dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__verv2dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv2dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__verv3dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__verv3dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv3dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__verv4dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__verv4dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv4dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__verv5dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__verv5dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv5dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__stx_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__stx_beh_]  DEFAULT ('') FOR [stx_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__bsbn_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__bsbn_kla]  DEFAULT ('') FOR [bsbn_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dok__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dok__com]  DEFAULT ('') FOR [dok__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dok2_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dok2_com]  DEFAULT ('') FOR [dok2_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dok3_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dok3_com]  DEFAULT ('') FOR [dok3_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dok4_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dok4_com]  DEFAULT ('') FOR [dok4_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__fac__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__fac__lay]  DEFAULT ('') FOR [fac__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__fac___ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__fac___ex]  DEFAULT ((0)) FOR [fac___ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__crea_ori]  DEFAULT ('') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__fiat____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__fiat____]  DEFAULT ('') FOR [fiat____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw_pct0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw_pct0]  DEFAULT ((0)) FOR [btw_pct0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw_pct1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw_pct1]  DEFAULT ((0)) FOR [btw_pct1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw_pct2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw_pct2]  DEFAULT ((0)) FOR [btw_pct2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw_pct3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw_pct3]  DEFAULT ((0)) FOR [btw_pct3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw_pct4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw_pct4]  DEFAULT ((0)) FOR [btw_pct4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw_pct5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw_pct5]  DEFAULT ((0)) FOR [btw_pct5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_v0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_v0]  DEFAULT ((0)) FOR [texcl_v0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_v1]  DEFAULT ((0)) FOR [texcl_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_v2]  DEFAULT ((0)) FOR [texcl_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_v3]  DEFAULT ((0)) FOR [texcl_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_v4]  DEFAULT ((0)) FOR [texcl_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_v5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_v5]  DEFAULT ((0)) FOR [texcl_v5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_b0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_b0]  DEFAULT ((0)) FOR [texcl_b0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_b1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_b1]  DEFAULT ((0)) FOR [texcl_b1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_b2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_b2]  DEFAULT ((0)) FOR [texcl_b2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_b3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_b3]  DEFAULT ((0)) FOR [texcl_b3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_b4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_b4]  DEFAULT ((0)) FOR [texcl_b4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_b5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_b5]  DEFAULT ((0)) FOR [texcl_b5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___v0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___v0]  DEFAULT ((0)) FOR [btw___v0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___v1]  DEFAULT ((0)) FOR [btw___v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___v2]  DEFAULT ((0)) FOR [btw___v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___v3]  DEFAULT ((0)) FOR [btw___v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___v4]  DEFAULT ((0)) FOR [btw___v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___v5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___v5]  DEFAULT ((0)) FOR [btw___v5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___b0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___b0]  DEFAULT ((0)) FOR [btw___b0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___b1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___b1]  DEFAULT ((0)) FOR [btw___b1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___b2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___b2]  DEFAULT ((0)) FOR [btw___b2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___b3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___b3]  DEFAULT ((0)) FOR [btw___b3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___b4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___b4]  DEFAULT ((0)) FOR [btw___b4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___b5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___b5]  DEFAULT ((0)) FOR [btw___b5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___b0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___b0]  DEFAULT ((0)) FOR [mvh___b0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___b1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___b1]  DEFAULT ((0)) FOR [mvh___b1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___b2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___b2]  DEFAULT ((0)) FOR [mvh___b2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___b3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___b3]  DEFAULT ((0)) FOR [mvh___b3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___b4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___b4]  DEFAULT ((0)) FOR [mvh___b4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___b5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___b5]  DEFAULT ((0)) FOR [mvh___b5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___v0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___v0]  DEFAULT ((0)) FOR [mvh___v0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___v1]  DEFAULT ((0)) FOR [mvh___v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___v2]  DEFAULT ((0)) FOR [mvh___v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___v3]  DEFAULT ((0)) FOR [mvh___v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___v4]  DEFAULT ((0)) FOR [mvh___v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__mvh___v5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__mvh___v5]  DEFAULT ((0)) FOR [mvh___v5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_v0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_v0]  DEFAULT ((0)) FOR [tincl_v0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_v1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_v1]  DEFAULT ((0)) FOR [tincl_v1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_v2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_v2]  DEFAULT ((0)) FOR [tincl_v2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_v3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_v3]  DEFAULT ((0)) FOR [tincl_v3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_v4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_v4]  DEFAULT ((0)) FOR [tincl_v4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_v5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_v5]  DEFAULT ((0)) FOR [tincl_v5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_b0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_b0]  DEFAULT ((0)) FOR [tincl_b0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_b1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_b1]  DEFAULT ((0)) FOR [tincl_b1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_b2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_b2]  DEFAULT ((0)) FOR [tincl_b2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_b3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_b3]  DEFAULT ((0)) FOR [tincl_b3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_b4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_b4]  DEFAULT ((0)) FOR [tincl_b4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_b5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_b5]  DEFAULT ((0)) FOR [tincl_b5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_vm]  DEFAULT ((0)) FOR [texcl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__texcl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__texcl_bm]  DEFAULT ((0)) FOR [texcl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___vm]  DEFAULT ((0)) FOR [btw___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__btw___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__btw___bm]  DEFAULT ((0)) FOR [btw___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__stat__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__stat__bm]  DEFAULT ((0)) FOR [stat__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__stat__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__stat__vm]  DEFAULT ((0)) FOR [stat__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__cnty__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__cnty__bm]  DEFAULT ((0)) FOR [cnty__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__cnty__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__cnty__vm]  DEFAULT ((0)) FOR [cnty__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__city__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__city__bm]  DEFAULT ((0)) FOR [city__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__city__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__city__vm]  DEFAULT ((0)) FOR [city__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__spld__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__spld__bm]  DEFAULT ((0)) FOR [spld__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__spld__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__spld__vm]  DEFAULT ((0)) FOR [spld__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_vm]  DEFAULT ((0)) FOR [tincl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl_bm]  DEFAULT ((0)) FOR [tincl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl1bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl1bm]  DEFAULT ((0)) FOR [tincl1bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl2bm]  DEFAULT ((0)) FOR [tincl2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl3bm]  DEFAULT ((0)) FOR [tincl3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl4bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl4bm]  DEFAULT ((0)) FOR [tincl4bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl5bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl5bm]  DEFAULT ((0)) FOR [tincl5bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl1vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl1vm]  DEFAULT ((0)) FOR [tincl1vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl2vm]  DEFAULT ((0)) FOR [tincl2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl3vm]  DEFAULT ((0)) FOR [tincl3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl4vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl4vm]  DEFAULT ((0)) FOR [tincl4vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tincl5vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tincl5vm]  DEFAULT ((0)) FOR [tincl5vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kortcpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kortcpct]  DEFAULT ((0)) FOR [kortcpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kortc_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kortc_vm]  DEFAULT ((0)) FOR [kortc_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kortc_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kortc_bm]  DEFAULT ((0)) FOR [kortc_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kort2pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kort2pct]  DEFAULT ((0)) FOR [kort2pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kortc2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kortc2vm]  DEFAULT ((0)) FOR [kortc2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kortc2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kortc2bm]  DEFAULT ((0)) FOR [kortc2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kort3pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kort3pct]  DEFAULT ((0)) FOR [kort3pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kortc3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kortc3vm]  DEFAULT ((0)) FOR [kortc3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__kortc3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__kortc3bm]  DEFAULT ((0)) FOR [kortc3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__boetepct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__boetepct]  DEFAULT ((0)) FOR [boetepct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__boete_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__boete_vm]  DEFAULT ((0)) FOR [boete_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__boete_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__boete_bm]  DEFAULT ((0)) FOR [boete_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__fmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__fmd__ref]  DEFAULT ('') FOR [fmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__jobnredi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__jobnredi]  DEFAULT ('') FOR [jobnredi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__jobnrprn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__jobnrprn]  DEFAULT ('') FOR [jobnrprn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__edi__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__edi__tst]  DEFAULT ('') FOR [edi__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__edi__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__edi__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [edi__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__ic__jaar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__ic__jaar]  DEFAULT ('') FOR [ic__jaar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__ic_maand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__ic_maand]  DEFAULT ('') FOR [ic_maand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__goed__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__goed__bm]  DEFAULT ((0)) FOR [goed__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__dienstbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__dienstbm]  DEFAULT ((0)) FOR [dienstbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__drieh_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__drieh_bm]  DEFAULT ((0)) FOR [drieh_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__bankrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__bankrek_]  DEFAULT ('') FOR [bankrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__iban____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__iban____]  DEFAULT ('') FOR [iban____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__bic_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__bic_____]  DEFAULT ('') FOR [bic_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__rf_meded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__rf_meded]  DEFAULT ('') FOR [rf_meded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__betd__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__betd__bm]  DEFAULT ((0)) FOR [betd__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfk__betw_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfk__] ADD  CONSTRAINT [DF_wafgfk__betw_srt]  DEFAULT ('1') FOR [betw_srt]
END

