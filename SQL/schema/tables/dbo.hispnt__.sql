SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hispnt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hispnt__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[werkzone] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[identify] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[doss_ord] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[doss_kst] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[starten_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stoppen_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs_refs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kmnt_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[antw__01] [float] NOT NULL,
	[antw__02] [float] NOT NULL,
	[antw__03] [float] NOT NULL,
	[antw__04] [float] NOT NULL,
	[antw__05] [float] NOT NULL,
	[antw__06] [float] NOT NULL,
	[antw__07] [float] NOT NULL,
	[antw__08] [float] NOT NULL,
	[antw__09] [float] NOT NULL,
	[antw__10] [float] NOT NULL,
	[wn_loon_] [float] NOT NULL,
	[kostprys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[loon_bud] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stukprys] [float] NOT NULL,
	[vastprys] [float] NOT NULL,
	[loon__tn] [float] NOT NULL,
	[mach__tn] [float] NOT NULL,
	[overh_tn] [float] NOT NULL,
	[prc_____] [float] NOT NULL,
	[loon____] [float] NOT NULL,
	[machines] [float] NOT NULL,
	[overhead] [float] NOT NULL,
	[wn___rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prft_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[idf_prft] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pnt2_id1] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispnt__]') AND name = N'hispnti10')
CREATE NONCLUSTERED INDEX [hispnti10] ON [dbo].[hispnt__]
(
	[wp___ref] ASC,
	[akt__ref] ASC,
	[production_flow_id] ASC,
	[workstep_id] ASC,
	[run_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispnt__]') AND name = N'hispnti9')
CREATE NONCLUSTERED INDEX [hispnti9] ON [dbo].[hispnt__]
(
	[wp___ref] ASC,
	[akt__ref] ASC,
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispnt__]') AND name = N'pnt2_id2')
CREATE NONCLUSTERED INDEX [pnt2_id2] ON [dbo].[hispnt__]
(
	[wn___ref] ASC,
	[datum___] ASC,
	[wp___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispnt__]') AND name = N'pnt2_id3')
CREATE NONCLUSTERED INDEX [pnt2_id3] ON [dbo].[hispnt__]
(
	[datum___] ASC,
	[wp___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispnt__]') AND name = N'pnt2_id4')
CREATE NONCLUSTERED INDEX [pnt2_id4] ON [dbo].[hispnt__]
(
	[ord__ref] ASC,
	[wp___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__werkzone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__werkzone]  DEFAULT ('') FOR [werkzone]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__identify]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__identify]  DEFAULT ('') FOR [identify]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__doss_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__doss_ord]  DEFAULT ('') FOR [doss_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__doss_kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__doss_kst]  DEFAULT ('') FOR [doss_kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__starten_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__starten_]  DEFAULT ('') FOR [starten_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__stoppen_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__stoppen_]  DEFAULT ('') FOR [stoppen_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__kmnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__kmnt_ref]  DEFAULT ('') FOR [kmnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__01]  DEFAULT ((0)) FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__02]  DEFAULT ((0)) FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__03]  DEFAULT ((0)) FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__04]  DEFAULT ((0)) FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__05]  DEFAULT ((0)) FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__06]  DEFAULT ((0)) FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__07]  DEFAULT ((0)) FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__08]  DEFAULT ((0)) FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__09]  DEFAULT ((0)) FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__antw__10]  DEFAULT ((0)) FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__wn_loon_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__wn_loon_]  DEFAULT ((0)) FOR [wn_loon_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__kostprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__kostprys]  DEFAULT ('') FOR [kostprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__loon_bud]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__loon_bud]  DEFAULT ('') FOR [loon_bud]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__stukprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__stukprys]  DEFAULT ((0)) FOR [stukprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__vastprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__vastprys]  DEFAULT ((0)) FOR [vastprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__loon__tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__loon__tn]  DEFAULT ((0)) FOR [loon__tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__mach__tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__mach__tn]  DEFAULT ((0)) FOR [mach__tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__overh_tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__overh_tn]  DEFAULT ((0)) FOR [overh_tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__prc_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__prc_____]  DEFAULT ((0)) FOR [prc_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__loon____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__loon____]  DEFAULT ((0)) FOR [loon____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__machines]  DEFAULT ((0)) FOR [machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__overhead]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__overhead]  DEFAULT ((0)) FOR [overhead]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__wn___rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__wn___rpn]  DEFAULT ('') FOR [wn___rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__duur____]  DEFAULT ('') FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__prft_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__prft_ref]  DEFAULT ('') FOR [prft_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispnt__idf_prft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispnt__] ADD  CONSTRAINT [DF_hispnt__idf_prft]  DEFAULT ('') FOR [idf_prft]
END

