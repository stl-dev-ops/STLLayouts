SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[anaboe__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[anaboe__](
	[ab___ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[grtb_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedragbm] [float] NOT NULL,
	[bedragvm] [float] NOT NULL,
	[bedragom] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koers___] [float] NOT NULL,
	[aant_dec] [int] NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[debcre__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[fin__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[div__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[abal_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_ab__] PRIMARY KEY CLUSTERED 
(
	[ab___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[anaboe__]') AND name = N'idx_ab_1')
CREATE NONCLUSTERED INDEX [idx_ab_1] ON [dbo].[anaboe__]
(
	[kla__ref] ASC,
	[munt_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[anaboe__]') AND name = N'idx_ab_2')
CREATE NONCLUSTERED INDEX [idx_ab_2] ON [dbo].[anaboe__]
(
	[lev__ref] ASC,
	[munt_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[anaboe__]') AND name = N'idx_ab_3')
CREATE NONCLUSTERED INDEX [idx_ab_3] ON [dbo].[anaboe__]
(
	[bkj__ref] ASC,
	[peri_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__ab___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__ab___ref]  DEFAULT ('') FOR [ab___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__grtb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__grtb_ref]  DEFAULT ('') FOR [grtb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__bedragbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__bedragbm]  DEFAULT ((0)) FOR [bedragbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__bedragvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__bedragvm]  DEFAULT ((0)) FOR [bedragvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__bedragom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__bedragom]  DEFAULT ((0)) FOR [bedragom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__debcre__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__debcre__]  DEFAULT ('') FOR [debcre__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__fin__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__fin__ref]  DEFAULT ('') FOR [fin__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__div__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__div__ref]  DEFAULT ('') FOR [div__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_anaboe__abal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[anaboe__] ADD  CONSTRAINT [DF_anaboe__abal_ref]  DEFAULT ('') FOR [abal_ref]
END

