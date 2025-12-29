SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisglv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisglv__](
	[his__vnr] [int] NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_dat] [date] NOT NULL,
	[levr_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levrodat] [date] NOT NULL,
	[levrouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr2vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[jobnrlev] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vochtpct] [float] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lokatie_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__dat] [date] NOT NULL,
	[teofk_bm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[import_location] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[import_permit_number] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[eudr_dds_reference_number] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[eudr_dds_verification_number] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [hisglvi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisglv__]') AND name = N'hglv_id1')
CREATE NONCLUSTERED INDEX [hglv_id1] ON [dbo].[hisglv__]
(
	[grbonref] ASC,
	[grs__vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisglv__]') AND name = N'hisglvi1')
CREATE NONCLUSTERED INDEX [hisglvi1] ON [dbo].[hisglv__]
(
	[grs__vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisglv__]') AND name = N'hisglvi2')
CREATE NONCLUSTERED INDEX [hisglvi2] ON [dbo].[hisglv__]
(
	[levr_vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisglv__]') AND name = N'hisglvi3')
CREATE NONCLUSTERED INDEX [hisglvi3] ON [dbo].[hisglv__]
(
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisglv__]') AND name = N'hisglvi5')
CREATE NONCLUSTERED INDEX [hisglvi5] ON [dbo].[hisglv__]
(
	[import_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__his__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__his__vnr]  DEFAULT ((0)) FOR [his__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__levr_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__levr_typ]  DEFAULT ('') FOR [levr_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__levr_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__levr_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levr_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__levr_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__levr_uur]  DEFAULT ('') FOR [levr_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__levrodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__levrodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levrodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__levrouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__levrouur]  DEFAULT ('') FOR [levrouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__jobnr2vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__jobnr2vw]  DEFAULT ('') FOR [jobnr2vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__vochtpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__vochtpct]  DEFAULT ((0)) FOR [vochtpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__lokatie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__lokatie_]  DEFAULT ('') FOR [lokatie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__fac__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__fac__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fac__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__teofk_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__teofk_bm]  DEFAULT ((0)) FOR [teofk_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__import_location]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__import_location]  DEFAULT ('') FOR [import_location]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__import_permit_number]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__import_permit_number]  DEFAULT ('') FOR [import_permit_number]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__eudr_dds_reference_number]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__eudr_dds_reference_number]  DEFAULT ('') FOR [eudr_dds_reference_number]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisglv__eudr_dds_verification_number]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisglv__] ADD  CONSTRAINT [DF_hisglv__eudr_dds_verification_number]  DEFAULT ('') FOR [eudr_dds_verification_number]
END

