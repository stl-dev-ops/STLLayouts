SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgvrd__](
	[afgvkref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr2vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__dat] [date] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs2_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub2_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[etik_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[deelbaar] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrrkprys] [float] NOT NULL,
	[omzet_bm] [float] NOT NULL,
	[kostprys] [float] NOT NULL,
	[kostprin] [float] NOT NULL,
	[omz__ord] [float] NOT NULL,
	[kosttrsp] [float] NOT NULL,
	[aant__in] [float] NOT NULL,
	[aant_uit] [float] NOT NULL,
	[vpak1_id] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant1_in] [float] NOT NULL,
	[aant1uit] [float] NOT NULL,
	[aant1per] [float] NOT NULL,
	[max1_per] [float] NOT NULL,
	[vpak2_id] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant2_in] [float] NOT NULL,
	[aant2uit] [float] NOT NULL,
	[aant2per] [float] NOT NULL,
	[max2_per] [float] NOT NULL,
	[vpak3_id] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant3_in] [float] NOT NULL,
	[aant3uit] [float] NOT NULL,
	[aant3per] [float] NOT NULL,
	[max3_per] [float] NOT NULL,
	[vpak4_id] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant4_in] [float] NOT NULL,
	[aant4uit] [float] NOT NULL,
	[aant4per] [float] NOT NULL,
	[max4_per] [float] NOT NULL,
	[vpak5_id] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant5_in] [float] NOT NULL,
	[aant5uit] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgvrdi0] PRIMARY KEY CLUSTERED 
(
	[afgvkref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi1')
CREATE NONCLUSTERED INDEX [afgvrdi1] ON [dbo].[afgvrd__]
(
	[soort___] ASC,
	[ord__ref] ASC,
	[vrs__ref] ASC,
	[levr_vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi2')
CREATE NONCLUSTERED INDEX [afgvrdi2] ON [dbo].[afgvrd__]
(
	[vak__ref] ASC,
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi3')
CREATE NONCLUSTERED INDEX [afgvrdi3] ON [dbo].[afgvrd__]
(
	[afg__ref] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi4')
CREATE NONCLUSTERED INDEX [afgvrdi4] ON [dbo].[afgvrd__]
(
	[lyn__ref] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi5')
CREATE NONCLUSTERED INDEX [afgvrdi5] ON [dbo].[afgvrd__]
(
	[levr_vnr] ASC,
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi6')
CREATE NONCLUSTERED INDEX [afgvrdi6] ON [dbo].[afgvrd__]
(
	[vpak1_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi7')
CREATE NONCLUSTERED INDEX [afgvrdi7] ON [dbo].[afgvrd__]
(
	[vpak2_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi8')
CREATE NONCLUSTERED INDEX [afgvrdi8] ON [dbo].[afgvrd__]
(
	[vpak3_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdi9')
CREATE NONCLUSTERED INDEX [afgvrdi9] ON [dbo].[afgvrd__]
(
	[vpak4_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdia')
CREATE NONCLUSTERED INDEX [afgvrdia] ON [dbo].[afgvrd__]
(
	[vpak5_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgvrd__]') AND name = N'afgvrdib')
CREATE NONCLUSTERED INDEX [afgvrdib] ON [dbo].[afgvrd__]
(
	[ord__ref] ASC,
	[vrs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__afgvkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__afgvkref]  DEFAULT ('') FOR [afgvkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__jobnr2vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__jobnr2vw]  DEFAULT ('') FOR [jobnr2vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__fac__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__fac__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fac__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__ord2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__ord2_ref]  DEFAULT ('') FOR [ord2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vrs2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vrs2_ref]  DEFAULT ('') FOR [vrs2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__sub2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__sub2_ref]  DEFAULT ('') FOR [sub2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__lyn2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__lyn2_ref]  DEFAULT ('') FOR [lyn2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__etik_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__etik_ref]  DEFAULT ('') FOR [etik_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vpk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vpk__ref]  DEFAULT ('') FOR [vpk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__deelbaar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__deelbaar]  DEFAULT ('') FOR [deelbaar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vrrkprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vrrkprys]  DEFAULT ((0)) FOR [vrrkprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__kostprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__kostprys]  DEFAULT ((0)) FOR [kostprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__kostprin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__kostprin]  DEFAULT ((0)) FOR [kostprin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__omz__ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__omz__ord]  DEFAULT ((0)) FOR [omz__ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__kosttrsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__kosttrsp]  DEFAULT ((0)) FOR [kosttrsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant__in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant__in]  DEFAULT ((0)) FOR [aant__in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant_uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant_uit]  DEFAULT ((0)) FOR [aant_uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vpak1_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vpak1_id]  DEFAULT ('') FOR [vpak1_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant1_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant1_in]  DEFAULT ((0)) FOR [aant1_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant1uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant1uit]  DEFAULT ((0)) FOR [aant1uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant1per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant1per]  DEFAULT ((0)) FOR [aant1per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__max1_per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__max1_per]  DEFAULT ((0)) FOR [max1_per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vpak2_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vpak2_id]  DEFAULT ('') FOR [vpak2_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant2_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant2_in]  DEFAULT ((0)) FOR [aant2_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant2uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant2uit]  DEFAULT ((0)) FOR [aant2uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant2per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant2per]  DEFAULT ((0)) FOR [aant2per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__max2_per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__max2_per]  DEFAULT ((0)) FOR [max2_per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vpak3_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vpak3_id]  DEFAULT ('') FOR [vpak3_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant3_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant3_in]  DEFAULT ((0)) FOR [aant3_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant3uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant3uit]  DEFAULT ((0)) FOR [aant3uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant3per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant3per]  DEFAULT ((0)) FOR [aant3per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__max3_per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__max3_per]  DEFAULT ((0)) FOR [max3_per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vpak4_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vpak4_id]  DEFAULT ('') FOR [vpak4_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant4_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant4_in]  DEFAULT ((0)) FOR [aant4_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant4uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant4uit]  DEFAULT ((0)) FOR [aant4uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant4per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant4per]  DEFAULT ((0)) FOR [aant4per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__max4_per]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__max4_per]  DEFAULT ((0)) FOR [max4_per]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__vpak5_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__vpak5_id]  DEFAULT ('') FOR [vpak5_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant5_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant5_in]  DEFAULT ((0)) FOR [aant5_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgvrd__aant5uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgvrd__] ADD  CONSTRAINT [DF_afgvrd__aant5uit]  DEFAULT ((0)) FOR [aant5uit]
END

