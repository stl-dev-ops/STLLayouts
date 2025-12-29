SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisatl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisatl__](
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[starten_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stoppen_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[rollen__] [float] NOT NULL,
	[andro_kg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papr_kgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__vrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
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
 CONSTRAINT [hatl_id0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisatl__]') AND name = N'hatl_id1')
CREATE NONCLUSTERED INDEX [hatl_id1] ON [dbo].[hisatl__]
(
	[ord__ref] ASC,
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisatl__]') AND name = N'hatl_id2')
CREATE NONCLUSTERED INDEX [hatl_id2] ON [dbo].[hisatl__]
(
	[wp___ref] ASC,
	[soort___] ASC,
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisatl__]') AND name = N'hatl_id3')
CREATE NONCLUSTERED INDEX [hatl_id3] ON [dbo].[hisatl__]
(
	[wn___ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__starten_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__starten_]  DEFAULT ('') FOR [starten_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__stoppen_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__stoppen_]  DEFAULT ('') FOR [stoppen_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__andro_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__andro_kg]  DEFAULT ('') FOR [andro_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__papr_kgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__papr_kgm]  DEFAULT ('') FOR [papr_kgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__art__vrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__art__vrd]  DEFAULT ('') FOR [art__vrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisatl__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisatl__] ADD  CONSTRAINT [DF_hisatl__komment_]  DEFAULT ('') FOR [komment_]
END

