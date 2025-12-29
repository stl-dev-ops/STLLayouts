SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bstafr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bstafr__](
	[afr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__bon] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afrvlgnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[crea_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbn_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbn_kl2] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[beg__dat] [date] NOT NULL,
	[end__dat] [date] NOT NULL,
	[bst__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_aantal] [float] NOT NULL,
	[beaantal] [float] NOT NULL,
	[minbaant] [float] NOT NULL,
	[aant_lev] [int] NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr_excl_] [float] NOT NULL,
	[preexcl_] [float] NOT NULL,
	[pr_incl_] [float] NOT NULL,
	[pr_exclv] [float] NOT NULL,
	[preexclv] [float] NOT NULL,
	[pr_inclv] [float] NOT NULL,
	[btw__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedr__bm] [float] NOT NULL,
	[bedr__vm] [float] NOT NULL,
	[fiat___c] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lynsrtso] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[off1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_off] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dgn] [int] NOT NULL,
	[aantplev] [float] NOT NULL,
	[typ_vrsp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpakvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__e2] [float] NOT NULL,
	[aant__e3] [float] NOT NULL,
	[aant__e4] [float] NOT NULL,
	[aant__e5] [float] NOT NULL,
	[trn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_dgn] [int] NOT NULL,
	[trsp_urn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__com] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__wyz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__grp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac_eenh] [int] NOT NULL,
	[fkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpfcref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wij__dat] [date] NOT NULL,
	[wij__usr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[afrlvdet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afrfcdet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[flok_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[flknpref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [bstafri0] PRIMARY KEY CLUSTERED 
(
	[afr__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstafr__]') AND name = N'bstafri1')
CREATE NONCLUSTERED INDEX [bstafri1] ON [dbo].[bstafr__]
(
	[kla__ref] ASC,
	[afg__ref] ASC,
	[uitgeput] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstafr__]') AND name = N'bstafri2')
CREATE NONCLUSTERED INDEX [bstafri2] ON [dbo].[bstafr__]
(
	[afg__ref] ASC,
	[uitgeput] ASC,
	[vpakvast] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[bstafr__]') AND name = N'bstafri3')
CREATE NONCLUSTERED INDEX [bstafri3] ON [dbo].[bstafr__]
(
	[afr__bon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afr__bon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afr__bon]  DEFAULT ('') FOR [afr__bon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afrvlgnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afrvlgnr]  DEFAULT ('') FOR [afrvlgnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__crea_dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__crea_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__crea_uur]  DEFAULT ('  0:00') FOR [crea_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__uitgeput]  DEFAULT ('N') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afg__rpn]  DEFAULT ('') FOR [afg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afg_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afg_oms1]  DEFAULT ('') FOR [afg_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afg_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afg_oms2]  DEFAULT ('') FOR [afg_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__bsbn_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__bsbn_kla]  DEFAULT ('') FOR [bsbn_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__bsbn_kl2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__bsbn_kl2]  DEFAULT ('') FOR [bsbn_kl2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__beg__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__beg__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [beg__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__end__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__end__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [end__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__bst__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__bst__com]  DEFAULT ('') FOR [bst__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__b_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__b_aantal]  DEFAULT ((0)) FOR [b_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__beaantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__beaantal]  DEFAULT ((0)) FOR [beaantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__minbaant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__minbaant]  DEFAULT ((0)) FOR [minbaant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aant_lev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aant_lev]  DEFAULT ((0)) FOR [aant_lev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__prys_srt]  DEFAULT ('7') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__pr_excl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__pr_excl_]  DEFAULT ((0)) FOR [pr_excl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__preexcl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__preexcl_]  DEFAULT ((0)) FOR [preexcl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__pr_incl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__pr_incl_]  DEFAULT ((0)) FOR [pr_incl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__pr_exclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__pr_exclv]  DEFAULT ((0)) FOR [pr_exclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__preexclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__preexclv]  DEFAULT ((0)) FOR [preexclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__pr_inclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__pr_inclv]  DEFAULT ((0)) FOR [pr_inclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__btw__ref]  DEFAULT ('0') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__bedr__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__bedr__bm]  DEFAULT ((0)) FOR [bedr__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__bedr__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__bedr__vm]  DEFAULT ((0)) FOR [bedr__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__fiat___c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__fiat___c]  DEFAULT ('N') FOR [fiat___c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__lyn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__lyn__srt]  DEFAULT ('2') FOR [lyn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__lynsrtso]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__lynsrtso]  DEFAULT ('3') FOR [lynsrtso]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__off1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__off1_ref]  DEFAULT ('') FOR [off1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__prod_off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__prod_off]  DEFAULT ('') FOR [prod_off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aant_dgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aant_dgn]  DEFAULT ((0)) FOR [aant_dgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aantplev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aantplev]  DEFAULT ((0)) FOR [aantplev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__typ_vrsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__typ_vrsp]  DEFAULT ('1') FOR [typ_vrsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__vpakvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__vpakvast]  DEFAULT ('Y') FOR [vpakvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aant__e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aant__e2]  DEFAULT ((0)) FOR [aant__e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aant__e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aant__e3]  DEFAULT ((0)) FOR [aant__e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aant__e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aant__e4]  DEFAULT ((0)) FOR [aant__e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__aant__e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__aant__e5]  DEFAULT ((0)) FOR [aant__e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__trn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__trn__srt]  DEFAULT ('1') FOR [trn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__knplkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__knplkref]  DEFAULT ('') FOR [knplkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__trsp_dgn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__trsp_dgn]  DEFAULT ((0)) FOR [trsp_dgn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__trsp_urn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__trsp_urn]  DEFAULT ('') FOR [trsp_urn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__lev__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__lev__com]  DEFAULT ('') FOR [lev__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__fac__wyz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__fac__wyz]  DEFAULT ('1') FOR [fac__wyz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__fac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__fac__typ]  DEFAULT ('1') FOR [fac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__fac__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__fac__grp]  DEFAULT ('1') FOR [fac__grp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__fac__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__fac__com]  DEFAULT ('') FOR [fac__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__fac_eenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__fac_eenh]  DEFAULT ((1)) FOR [fac_eenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__knpfcref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__knpfcref]  DEFAULT ('') FOR [knpfcref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__wij__dat]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__wij__usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__wij__usr]  DEFAULT ('') FOR [wij__usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afr__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afr__lay]  DEFAULT ('') FOR [afr__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afrlvdet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afrlvdet]  DEFAULT ('0') FOR [afrlvdet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__afrfcdet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__afrfcdet]  DEFAULT ('0') FOR [afrfcdet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__flok_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__flok_ref]  DEFAULT ('') FOR [flok_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_bstafr__flknpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bstafr__] ADD  CONSTRAINT [DF_bstafr__flknpref]  DEFAULT ('') FOR [flknpref]
END

