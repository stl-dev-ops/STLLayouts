SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkafp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkafp__](
	[afwp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__1] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__2] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__3] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__4] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__5] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__6] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__7] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__8] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brief__9] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[line____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mxfmt__x] [float] NOT NULL,
	[mxfmt__y] [float] NOT NULL,
	[mnfmt__x] [float] NOT NULL,
	[mnfmt__y] [float] NOT NULL,
	[mxpag__x] [float] NOT NULL,
	[mxpag__y] [float] NOT NULL,
	[mnpag__x] [float] NOT NULL,
	[mnpag__y] [float] NOT NULL,
	[mxopp___] [float] NOT NULL,
	[mnopp___] [float] NOT NULL,
	[mxopptot] [float] NOT NULL,
	[mnopptot] [float] NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[diktevan] [float] NOT NULL,
	[diktetot] [float] NOT NULL,
	[grm__min] [float] NOT NULL,
	[grm__max] [float] NOT NULL,
	[opl__min] [int] NOT NULL,
	[opl__max] [int] NOT NULL,
	[pos__min] [int] NOT NULL,
	[pos__max] [int] NOT NULL,
	[tyd1__vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins1mach] [float] NOT NULL,
	[ins_mach] [float] NOT NULL,
	[ins__pct] [float] NOT NULL,
	[tyd1g_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_g_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing1mach] [float] NOT NULL,
	[ing_mach] [float] NOT NULL,
	[ing__pct] [float] NOT NULL,
	[tyd1m_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd_m_vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inm1mach] [float] NOT NULL,
	[inm_mach] [float] NOT NULL,
	[inm__pct] [float] NOT NULL,
	[pak_type] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__def] [float] NOT NULL,
	[vouw_gap] [float] NOT NULL,
	[vouwzyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grijpers] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sny_pose] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sny_type] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[snyintyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sny__tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sny_lift] [float] NOT NULL,
	[sny_fact] [float] NOT NULL,
	[aant__01] [int] NOT NULL,
	[aant__11] [int] NOT NULL,
	[aant__12] [int] NOT NULL,
	[aant__21] [int] NOT NULL,
	[aant__22] [int] NOT NULL,
	[aant__31] [int] NOT NULL,
	[aant__32] [int] NOT NULL,
	[aant__41] [int] NOT NULL,
	[aant__42] [int] NOT NULL,
	[aant__51] [int] NOT NULL,
	[aant__52] [int] NOT NULL,
	[aant__61] [int] NOT NULL,
	[aant__62] [int] NOT NULL,
	[aant__71] [int] NOT NULL,
	[aant__72] [int] NOT NULL,
	[aant__81] [int] NOT NULL,
	[aant__82] [int] NOT NULL,
	[aant__91] [int] NOT NULL,
	[aant__92] [int] NOT NULL,
	[tyd1__01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__31] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__32] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__41] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__42] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__51] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__52] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__61] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__62] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__71] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__72] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__81] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__82] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__91] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd1__92] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__31] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__32] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__41] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__42] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__51] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__52] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__61] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__62] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__71] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__72] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__81] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__82] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__91] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd2__92] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sp___typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sp_basis] [float] NOT NULL,
	[spgbasis] [float] NOT NULL,
	[spmbasis] [float] NOT NULL,
	[kstdvref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdpref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tarieven] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[machine_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_fcat] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_type] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkafpi1] PRIMARY KEY CLUSTERED 
(
	[afwp_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[drkafp__]') AND name = N'drkafpi2')
CREATE NONCLUSTERED INDEX [drkafpi2] ON [dbo].[drkafp__]
(
	[geblokk_] ASC,
	[line____] ASC,
	[afws_ref] ASC,
	[vwm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__afwp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__afwp_ref]  DEFAULT ('') FOR [afwp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__afwp_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__afwp_rpn]  DEFAULT ('') FOR [afwp_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__afwp_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__afwp_oms]  DEFAULT ('') FOR [afwp_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__res__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__res__oms]  DEFAULT ('') FOR [res__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__prd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__prd__oms]  DEFAULT ('') FOR [prd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__1]  DEFAULT ('') FOR [brief__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__2]  DEFAULT ('') FOR [brief__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__3]  DEFAULT ('') FOR [brief__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__4]  DEFAULT ('') FOR [brief__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__5]  DEFAULT ('') FOR [brief__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__6]  DEFAULT ('') FOR [brief__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__7]  DEFAULT ('') FOR [brief__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__8]  DEFAULT ('') FOR [brief__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__brief__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__brief__9]  DEFAULT ('') FOR [brief__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__afwp_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__afwp_srt]  DEFAULT ('') FOR [afwp_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__line____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__line____]  DEFAULT ('') FOR [line____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__reken___]  DEFAULT ('') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mxfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mxfmt__x]  DEFAULT ((0)) FOR [mxfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mxfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mxfmt__y]  DEFAULT ((0)) FOR [mxfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mnfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mnfmt__x]  DEFAULT ((0)) FOR [mnfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mnfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mnfmt__y]  DEFAULT ((0)) FOR [mnfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mxpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mxpag__x]  DEFAULT ((0)) FOR [mxpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mxpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mxpag__y]  DEFAULT ((0)) FOR [mxpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mnpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mnpag__x]  DEFAULT ((0)) FOR [mnpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mnpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mnpag__y]  DEFAULT ((0)) FOR [mnpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mxopp___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mxopp___]  DEFAULT ((0)) FOR [mxopp___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mnopp___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mnopp___]  DEFAULT ((0)) FOR [mnopp___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mxopptot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mxopptot]  DEFAULT ((0)) FOR [mxopptot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__mnopptot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__mnopptot]  DEFAULT ((0)) FOR [mnopptot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__diktevan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__diktevan]  DEFAULT ((0)) FOR [diktevan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__diktetot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__diktetot]  DEFAULT ((0)) FOR [diktetot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__grm__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__grm__min]  DEFAULT ((0)) FOR [grm__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__grm__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__grm__max]  DEFAULT ((0)) FOR [grm__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__opl__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__opl__min]  DEFAULT ((0)) FOR [opl__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__opl__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__opl__max]  DEFAULT ((0)) FOR [opl__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__pos__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__pos__min]  DEFAULT ((0)) FOR [pos__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__pos__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__pos__max]  DEFAULT ((0)) FOR [pos__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__vb]  DEFAULT ('') FOR [tyd1__vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd___vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd___vb]  DEFAULT ('') FOR [tyd___vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__ins1mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__ins1mach]  DEFAULT ((0)) FOR [ins1mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__ins_mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__ins_mach]  DEFAULT ((0)) FOR [ins_mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__ins__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__ins__pct]  DEFAULT ((0)) FOR [ins__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1g_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1g_vb]  DEFAULT ('') FOR [tyd1g_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd_g_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd_g_vb]  DEFAULT ('') FOR [tyd_g_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__ing1mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__ing1mach]  DEFAULT ((0)) FOR [ing1mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__ing_mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__ing_mach]  DEFAULT ((0)) FOR [ing_mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__ing__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__ing__pct]  DEFAULT ((0)) FOR [ing__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1m_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1m_vb]  DEFAULT ('') FOR [tyd1m_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd_m_vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd_m_vb]  DEFAULT ('') FOR [tyd_m_vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__inm1mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__inm1mach]  DEFAULT ((0)) FOR [inm1mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__inm_mach]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__inm_mach]  DEFAULT ((0)) FOR [inm_mach]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__inm__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__inm__pct]  DEFAULT ((0)) FOR [inm__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__pak_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__pak_type]  DEFAULT ('') FOR [pak_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__pak__def]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__pak__def]  DEFAULT ((0)) FOR [pak__def]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__vouw_gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__vouw_gap]  DEFAULT ((0)) FOR [vouw_gap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__vouwzyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__vouwzyde]  DEFAULT ('') FOR [vouwzyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__grijpers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__grijpers]  DEFAULT ('') FOR [grijpers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__sny_pose]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__sny_pose]  DEFAULT ('') FOR [sny_pose]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__sny_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__sny_type]  DEFAULT ('') FOR [sny_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__snyintyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__snyintyd]  DEFAULT ('') FOR [snyintyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__sny__tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__sny__tyd]  DEFAULT ('') FOR [sny__tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__sny_lift]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__sny_lift]  DEFAULT ((0)) FOR [sny_lift]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__sny_fact]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__sny_fact]  DEFAULT ((0)) FOR [sny_fact]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__01]  DEFAULT ((0)) FOR [aant__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__11]  DEFAULT ((0)) FOR [aant__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__12]  DEFAULT ((0)) FOR [aant__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__21]  DEFAULT ((0)) FOR [aant__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__22]  DEFAULT ((0)) FOR [aant__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__31]  DEFAULT ((0)) FOR [aant__31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__32]  DEFAULT ((0)) FOR [aant__32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__41]  DEFAULT ((0)) FOR [aant__41]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__42]  DEFAULT ((0)) FOR [aant__42]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__51]  DEFAULT ((0)) FOR [aant__51]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__52]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__52]  DEFAULT ((0)) FOR [aant__52]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__61]  DEFAULT ((0)) FOR [aant__61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__62]  DEFAULT ((0)) FOR [aant__62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__71]  DEFAULT ((0)) FOR [aant__71]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__72]  DEFAULT ((0)) FOR [aant__72]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__81]  DEFAULT ((0)) FOR [aant__81]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__82]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__82]  DEFAULT ((0)) FOR [aant__82]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__91]  DEFAULT ((0)) FOR [aant__91]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__aant__92]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__aant__92]  DEFAULT ((0)) FOR [aant__92]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__01]  DEFAULT ('') FOR [tyd1__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__11]  DEFAULT ('') FOR [tyd1__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__12]  DEFAULT ('') FOR [tyd1__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__21]  DEFAULT ('') FOR [tyd1__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__22]  DEFAULT ('') FOR [tyd1__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__31]  DEFAULT ('') FOR [tyd1__31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__32]  DEFAULT ('') FOR [tyd1__32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__41]  DEFAULT ('') FOR [tyd1__41]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__42]  DEFAULT ('') FOR [tyd1__42]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__51]  DEFAULT ('') FOR [tyd1__51]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__52]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__52]  DEFAULT ('') FOR [tyd1__52]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__61]  DEFAULT ('') FOR [tyd1__61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__62]  DEFAULT ('') FOR [tyd1__62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__71]  DEFAULT ('') FOR [tyd1__71]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__72]  DEFAULT ('') FOR [tyd1__72]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__81]  DEFAULT ('') FOR [tyd1__81]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__82]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__82]  DEFAULT ('') FOR [tyd1__82]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__91]  DEFAULT ('') FOR [tyd1__91]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd1__92]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd1__92]  DEFAULT ('') FOR [tyd1__92]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__01]  DEFAULT ('') FOR [tyd2__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__11]  DEFAULT ('') FOR [tyd2__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__12]  DEFAULT ('') FOR [tyd2__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__21]  DEFAULT ('') FOR [tyd2__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__22]  DEFAULT ('') FOR [tyd2__22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__31]  DEFAULT ('') FOR [tyd2__31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__32]  DEFAULT ('') FOR [tyd2__32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__41]  DEFAULT ('') FOR [tyd2__41]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__42]  DEFAULT ('') FOR [tyd2__42]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__51]  DEFAULT ('') FOR [tyd2__51]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__52]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__52]  DEFAULT ('') FOR [tyd2__52]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__61]  DEFAULT ('') FOR [tyd2__61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__62]  DEFAULT ('') FOR [tyd2__62]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__71]  DEFAULT ('') FOR [tyd2__71]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__72]  DEFAULT ('') FOR [tyd2__72]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__81]  DEFAULT ('') FOR [tyd2__81]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__82]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__82]  DEFAULT ('') FOR [tyd2__82]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__91]  DEFAULT ('') FOR [tyd2__91]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tyd2__92]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tyd2__92]  DEFAULT ('') FOR [tyd2__92]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__sp___typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__sp___typ]  DEFAULT ('') FOR [sp___typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__sp_basis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__sp_basis]  DEFAULT ((0)) FOR [sp_basis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__spgbasis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__spgbasis]  DEFAULT ((0)) FOR [spgbasis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__spmbasis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__spmbasis]  DEFAULT ((0)) FOR [spmbasis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__kstdvref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__kstdvref]  DEFAULT ('') FOR [kstdvref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__kstdpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__kstdpref]  DEFAULT ('') FOR [kstdpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__rbkvrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__rbkvrref]  DEFAULT ('') FOR [rbkvrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__tarieven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__tarieven]  DEFAULT ('') FOR [tarieven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__machine_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__machine_]  DEFAULT ('') FOR [machine_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__jdf_fcat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__jdf_fcat]  DEFAULT ('') FOR [jdf_fcat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__jdf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__jdf__oms]  DEFAULT ('') FOR [jdf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__jdf_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__jdf_type]  DEFAULT ('') FOR [jdf_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafp__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafp__] ADD  CONSTRAINT [DF_drkafp__dossier_]  DEFAULT ('') FOR [dossier_]
END

