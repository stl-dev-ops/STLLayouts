SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stobew__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[identify] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[rollen__] [float] NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kmnt_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijs___] [float] NOT NULL,
	[markt___] [float] NOT NULL,
	[kost____] [float] NOT NULL,
	[toeslag_] [float] NOT NULL,
	[doss_ord] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[doss_kst] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[mat__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkgr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[production_ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [stbw_id0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND name = N'stbw_id1')
CREATE NONCLUSTERED INDEX [stbw_id1] ON [dbo].[stobew__]
(
	[art__ref] ASC,
	[datum___] ASC,
	[uur_____] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND name = N'stbw_id2')
CREATE NONCLUSTERED INDEX [stbw_id2] ON [dbo].[stobew__]
(
	[ord__ref] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND name = N'stbw_id3')
CREATE NONCLUSTERED INDEX [stbw_id3] ON [dbo].[stobew__]
(
	[soort___] ASC,
	[identify] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND name = N'stbw_id4')
CREATE NONCLUSTERED INDEX [stbw_id4] ON [dbo].[stobew__]
(
	[kpn__ref] ASC,
	[art__srt] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND name = N'stbw_id5')
CREATE NONCLUSTERED INDEX [stbw_id5] ON [dbo].[stobew__]
(
	[artd_ref] ASC,
	[datum___] ASC,
	[uur_____] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND name = N'stbw_id6')
CREATE NONCLUSTERED INDEX [stbw_id6] ON [dbo].[stobew__]
(
	[grs__vnr] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stobew__]') AND name = N'stobewi7')
CREATE NONCLUSTERED INDEX [stobewi7] ON [dbo].[stobew__]
(
	[production_ord__ref] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__identify]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__identify]  DEFAULT ('') FOR [identify]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__kmnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__kmnt_ref]  DEFAULT ('') FOR [kmnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__prijs___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__prijs___]  DEFAULT ((0)) FOR [prijs___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__markt___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__markt___]  DEFAULT ((0)) FOR [markt___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__kost____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__kost____]  DEFAULT ((0)) FOR [kost____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__toeslag_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__toeslag_]  DEFAULT ((0)) FOR [toeslag_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__doss_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__doss_ord]  DEFAULT ('') FOR [doss_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__doss_kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__doss_kst]  DEFAULT ('') FOR [doss_kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__mat__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__mat__ref]  DEFAULT ('') FOR [mat__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__fkgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__fkgr_ref]  DEFAULT ('') FOR [fkgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__res__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__res__ref]  DEFAULT ('') FOR [res__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stobew__production_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stobew__] ADD  CONSTRAINT [DF_stobew__production_ord__ref]  DEFAULT ('') FOR [production_ord__ref]
END

