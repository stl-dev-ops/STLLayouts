SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_bglv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_bglv__](
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokatie_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_dat] [date] NOT NULL,
	[levr_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[aantal_2] [float] NOT NULL,
	[rollen__] [float] NOT NULL,
	[aant__kg] [float] NOT NULL,
	[papr_kgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[andro_kg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etik_drk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vochtpct] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[import_location] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[import_permit_number] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [wbgl_id1] PRIMARY KEY CLUSTERED 
(
	[levr_vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_bglv__]') AND name = N'w_bglvi2')
CREATE NONCLUSTERED INDEX [w_bglvi2] ON [dbo].[w_bglv__]
(
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_bglv__]') AND name = N'w_bglvi3')
CREATE NONCLUSTERED INDEX [w_bglvi3] ON [dbo].[w_bglv__]
(
	[import_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__lokatie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__lokatie_]  DEFAULT ('') FOR [lokatie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__levr_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__levr_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levr_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__levr_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__levr_uur]  DEFAULT ('') FOR [levr_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__aantal_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__aantal_2]  DEFAULT ((0)) FOR [aantal_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__aant__kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__aant__kg]  DEFAULT ((0)) FOR [aant__kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__papr_kgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__papr_kgm]  DEFAULT ('') FOR [papr_kgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__andro_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__andro_kg]  DEFAULT ('') FOR [andro_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__etik_drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__etik_drk]  DEFAULT ('') FOR [etik_drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__vochtpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__vochtpct]  DEFAULT ((0)) FOR [vochtpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__import_location]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__import_location]  DEFAULT ('') FOR [import_location]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bglv__import_permit_number]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bglv__] ADD  CONSTRAINT [DF_w_bglv__import_permit_number]  DEFAULT ('') FOR [import_permit_number]
END

