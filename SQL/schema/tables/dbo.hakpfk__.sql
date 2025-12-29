SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hakpfk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hakpfk__](
	[akp__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_iban_] [nvarchar](34) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_bic__] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[doknrlev] [nvarchar](29) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user_wij] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__wij] [date] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[verv_dat] [date] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[belastvm] [float] NOT NULL,
	[belastbm] [float] NOT NULL,
	[btw___bm] [float] NOT NULL,
	[btw___vm] [float] NOT NULL,
	[btwa__vm] [float] NOT NULL,
	[btwa__bm] [float] NOT NULL,
	[btwna_vm] [float] NOT NULL,
	[btwna_bm] [float] NOT NULL,
	[diversvm] [float] NOT NULL,
	[diversbm] [float] NOT NULL,
	[totaalvm] [float] NOT NULL,
	[totaalbm] [float] NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_pct0] [float] NOT NULL,
	[btw_pct1] [float] NOT NULL,
	[btw_pct2] [float] NOT NULL,
	[btw_pct3] [float] NOT NULL,
	[btw_pct4] [float] NOT NULL,
	[btw_pct5] [float] NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_landr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_bankr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_naam_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_straa] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_wijk_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_land_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postn] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_count] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_state] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_meded] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_blcom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_blusr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
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
 CONSTRAINT [hakpfki1] PRIMARY KEY CLUSTERED 
(
	[akp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hakpfk__]') AND name = N'hakpfki2')
CREATE NONCLUSTERED INDEX [hakpfki2] ON [dbo].[hakpfk__]
(
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__akp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__akp__ref]  DEFAULT ('') FOR [akp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_iban_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_iban_]  DEFAULT ('') FOR [ba_iban_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_bic__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_bic__]  DEFAULT ('') FOR [ba_bic__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__doknrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__doknrlev]  DEFAULT ('') FOR [doknrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__user_wij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__user_wij]  DEFAULT ('') FOR [user_wij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__dat__wij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__dat__wij]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__wij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__verv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__verv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__dok__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__dok__com]  DEFAULT ('') FOR [dok__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__belastvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__belastvm]  DEFAULT ((0)) FOR [belastvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__belastbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__belastbm]  DEFAULT ((0)) FOR [belastbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw___bm]  DEFAULT ((0)) FOR [btw___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw___vm]  DEFAULT ((0)) FOR [btw___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btwa__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btwa__vm]  DEFAULT ((0)) FOR [btwa__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btwa__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btwa__bm]  DEFAULT ((0)) FOR [btwa__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btwna_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btwna_vm]  DEFAULT ((0)) FOR [btwna_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btwna_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btwna_bm]  DEFAULT ((0)) FOR [btwna_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__diversvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__diversvm]  DEFAULT ((0)) FOR [diversvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__diversbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__diversbm]  DEFAULT ((0)) FOR [diversbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__totaalvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__totaalvm]  DEFAULT ((0)) FOR [totaalvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__totaalbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__totaalbm]  DEFAULT ((0)) FOR [totaalbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw_pct0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw_pct0]  DEFAULT ((0)) FOR [btw_pct0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw_pct1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw_pct1]  DEFAULT ((0)) FOR [btw_pct1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw_pct2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw_pct2]  DEFAULT ((0)) FOR [btw_pct2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw_pct3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw_pct3]  DEFAULT ((0)) FOR [btw_pct3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw_pct4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw_pct4]  DEFAULT ((0)) FOR [btw_pct4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__btw_pct5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__btw_pct5]  DEFAULT ((0)) FOR [btw_pct5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_landr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_landr]  DEFAULT ('') FOR [ba_landr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_bankr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_bankr]  DEFAULT ('') FOR [ba_bankr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_naam_]  DEFAULT ('') FOR [ba_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_straa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_straa]  DEFAULT ('') FOR [ba_straa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_wijk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_wijk_]  DEFAULT ('') FOR [ba_wijk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_land_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_land_]  DEFAULT ('') FOR [ba_land_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_postr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_postr]  DEFAULT ('') FOR [ba_postr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_postn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_postn]  DEFAULT ('') FOR [ba_postn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_count]  DEFAULT ('') FOR [ba_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_state]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_state]  DEFAULT ('') FOR [ba_state]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_meded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_meded]  DEFAULT ('') FOR [ba_meded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_blcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_blcom]  DEFAULT ('') FOR [ba_blcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__ba_blusr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__ba_blusr]  DEFAULT ('') FOR [ba_blusr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfk__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfk__] ADD  CONSTRAINT [DF_hakpfk__tstval10]  DEFAULT ('') FOR [tstval10]
END

