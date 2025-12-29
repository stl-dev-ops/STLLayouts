SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_atl2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_atl2__](
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[starten_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stoppen_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[plg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[rollen__] [float] NOT NULL,
	[andro_kg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papr_kgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__vrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vtrf_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[formt__1] [float] NOT NULL,
	[formt__2] [float] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs_refs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_atl2i0] PRIMARY KEY CLUSTERED 
(
	[wn___ref] ASC,
	[soort___] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_atl2__]') AND name = N'w_atl2i1')
CREATE NONCLUSTERED INDEX [w_atl2i1] ON [dbo].[w_atl2__]
(
	[wp___ref] ASC,
	[akt__ref] ASC,
	[soort___] ASC,
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_atl2__]') AND name = N'w_atl2i2')
CREATE NONCLUSTERED INDEX [w_atl2i2] ON [dbo].[w_atl2__]
(
	[ord__ref] ASC,
	[produktf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__starten_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__starten_]  DEFAULT ('') FOR [starten_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__stoppen_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__stoppen_]  DEFAULT ('') FOR [stoppen_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__plg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__plg__ref]  DEFAULT ('') FOR [plg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__01]  DEFAULT ((0)) FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__02]  DEFAULT ((0)) FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__03]  DEFAULT ((0)) FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__04]  DEFAULT ((0)) FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__05]  DEFAULT ((0)) FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__06]  DEFAULT ((0)) FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__07]  DEFAULT ((0)) FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__08]  DEFAULT ((0)) FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__09]  DEFAULT ((0)) FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__antw__10]  DEFAULT ((0)) FOR [antw__10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__andro_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__andro_kg]  DEFAULT ('') FOR [andro_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__papr_kgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__papr_kgm]  DEFAULT ('') FOR [papr_kgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__art__vrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__art__vrd]  DEFAULT ('') FOR [art__vrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__vtrf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__vtrf_ref]  DEFAULT ('') FOR [vtrf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__formt__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__formt__1]  DEFAULT ((0)) FOR [formt__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__formt__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__formt__2]  DEFAULT ((0)) FOR [formt__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_atl2__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_atl2__] ADD  CONSTRAINT [DF_w_atl2__komment_]  DEFAULT ('') FOR [komment_]
END

