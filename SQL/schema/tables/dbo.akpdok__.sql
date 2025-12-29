SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[akpdok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[akpdok__](
	[adok__nr] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_iban_] [nvarchar](34) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_bic__] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[alg___nr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[vrvl_dat] [date] NOT NULL,
	[vrzb_dat] [date] NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koers___] [float] NOT NULL,
	[aant_dec] [int] NOT NULL,
	[kon_kort] [float] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok_com_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[blok_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[doknrlev] [nvarchar](29) COLLATE Latin1_General_CI_AS NOT NULL,
	[totf__vm] [float] NOT NULL,
	[totf__om] [float] NOT NULL,
	[totf__bm] [float] NOT NULL,
	[betd__vm] [float] NOT NULL,
	[betd__om] [float] NOT NULL,
	[betd__bm] [float] NOT NULL,
	[ngbet_vm] [float] NOT NULL,
	[ngbet_om] [float] NOT NULL,
	[ngbet_bm] [float] NOT NULL,
	[bwis__vm] [float] NOT NULL,
	[bwis__om] [float] NOT NULL,
	[bwis__bm] [float] NOT NULL,
	[basis_vm] [float] NOT NULL,
	[basis_om] [float] NOT NULL,
	[basis_bm] [float] NULL,
	[btw__afb] [float] NOT NULL,
	[btw_nafb] [float] NOT NULL,
	[btwvrlgd] [float] NOT NULL,
	[divers__] [float] NOT NULL,
	[ba_bankr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_naam_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_straa] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_wijk_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postn] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_count] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_state] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_meded] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_landr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_tebet] [float] NOT NULL,
	[ba_kort_] [float] NOT NULL,
	[bavtebet] [float] NOT NULL,
	[baotebet] [float] NOT NULL,
	[bavkort_] [float] NOT NULL,
	[baokort_] [float] NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_ab_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyz_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyzwie] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyzdat] [date] NOT NULL,
	[btwagdat] [date] NOT NULL,
	[wissel__] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx2adok] PRIMARY KEY CLUSTERED 
(
	[adok__nr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[akpdok__]') AND name = N'idx3adok')
CREATE NONCLUSTERED INDEX [idx3adok] ON [dbo].[akpdok__]
(
	[lev__ref] ASC,
	[munt_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[akpdok__]') AND name = N'idx4adok')
CREATE NONCLUSTERED INDEX [idx4adok] ON [dbo].[akpdok__]
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[peri_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__adok__nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__adok__nr]  DEFAULT ('') FOR [adok__nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_iban_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_iban_]  DEFAULT ('') FOR [ba_iban_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_bic__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_bic__]  DEFAULT ('') FOR [ba_bic__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__alg___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__alg___nr]  DEFAULT ('') FOR [alg___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__vrvl_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__vrvl_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrvl_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__vrzb_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__vrzb_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzb_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__kon_kort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__kon_kort]  DEFAULT ((0)) FOR [kon_kort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__dok_com_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__dok_com_]  DEFAULT ('') FOR [dok_com_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__blok_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__blok_com]  DEFAULT ('') FOR [blok_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__betw_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__betw_com]  DEFAULT ('') FOR [betw_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__doknrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__doknrlev]  DEFAULT ('') FOR [doknrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__totf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__totf__vm]  DEFAULT ((0)) FOR [totf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__totf__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__totf__om]  DEFAULT ((0)) FOR [totf__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__totf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__totf__bm]  DEFAULT ((0)) FOR [totf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__betd__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__betd__om]  DEFAULT ((0)) FOR [betd__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__betd__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__betd__bm]  DEFAULT ((0)) FOR [betd__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ngbet_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ngbet_vm]  DEFAULT ((0)) FOR [ngbet_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ngbet_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ngbet_om]  DEFAULT ((0)) FOR [ngbet_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ngbet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ngbet_bm]  DEFAULT ((0)) FOR [ngbet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__bwis__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__bwis__vm]  DEFAULT ((0)) FOR [bwis__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__bwis__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__bwis__om]  DEFAULT ((0)) FOR [bwis__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__bwis__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__bwis__bm]  DEFAULT ((0)) FOR [bwis__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__basis_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__basis_vm]  DEFAULT ((0)) FOR [basis_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__basis_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__basis_om]  DEFAULT ((0)) FOR [basis_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__btw__afb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__btw__afb]  DEFAULT ((0)) FOR [btw__afb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__btw_nafb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__btw_nafb]  DEFAULT ((0)) FOR [btw_nafb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__btwvrlgd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__btwvrlgd]  DEFAULT ((0)) FOR [btwvrlgd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__divers__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__divers__]  DEFAULT ((0)) FOR [divers__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_bankr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_bankr]  DEFAULT ('') FOR [ba_bankr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_naam_]  DEFAULT ('') FOR [ba_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_straa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_straa]  DEFAULT ('') FOR [ba_straa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_wijk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_wijk_]  DEFAULT ('') FOR [ba_wijk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_postr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_postr]  DEFAULT ('') FOR [ba_postr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_postn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_postn]  DEFAULT ('') FOR [ba_postn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_count]  DEFAULT ('') FOR [ba_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_state]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_state]  DEFAULT ('') FOR [ba_state]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_meded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_meded]  DEFAULT ('') FOR [ba_meded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_landr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_landr]  DEFAULT ('') FOR [ba_landr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_tebet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_tebet]  DEFAULT ((0)) FOR [ba_tebet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__ba_kort_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__ba_kort_]  DEFAULT ((0)) FOR [ba_kort_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__bavtebet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__bavtebet]  DEFAULT ((0)) FOR [bavtebet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__baotebet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__baotebet]  DEFAULT ((0)) FOR [baotebet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__bavkort_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__bavkort_]  DEFAULT ((0)) FOR [bavkort_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__baokort_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__baokort_]  DEFAULT ((0)) FOR [baokort_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__in_ab_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__in_ab_yn]  DEFAULT ('') FOR [in_ab_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__gewyz_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__gewyz_yn]  DEFAULT ('') FOR [gewyz_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__gewyzwie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__gewyzwie]  DEFAULT ('') FOR [gewyzwie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__gewyzdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__gewyzdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gewyzdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__btwagdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__btwagdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [btwagdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_akpdok__wissel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[akpdok__] ADD  CONSTRAINT [DF_akpdok__wissel__]  DEFAULT ('') FOR [wissel__]
END

