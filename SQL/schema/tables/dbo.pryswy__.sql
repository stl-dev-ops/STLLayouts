SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pryswy__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pryswy__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[identify] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum_wy] [date] NOT NULL,
	[uur___wy] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[l_akp_vl] [float] NOT NULL,
	[l_akp_kg] [float] NOT NULL,
	[g_akp_vl] [float] NOT NULL,
	[g_akp_kg] [float] NOT NULL,
	[nakprijs] [float] NOT NULL,
	[nakprold] [float] NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pryswy_0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pryswy__]') AND name = N'pryswy_1')
CREATE NONCLUSTERED INDEX [pryswy_1] ON [dbo].[pryswy__]
(
	[art__ref] ASC,
	[datum_wy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pryswy__]') AND name = N'pryswy_2')
CREATE NONCLUSTERED INDEX [pryswy_2] ON [dbo].[pryswy__]
(
	[grs__vnr] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__identify]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__identify]  DEFAULT ('') FOR [identify]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__datum_wy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__datum_wy]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum_wy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__uur___wy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__uur___wy]  DEFAULT ('') FOR [uur___wy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__l_akp_vl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__l_akp_vl]  DEFAULT ((0)) FOR [l_akp_vl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__l_akp_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__l_akp_kg]  DEFAULT ((0)) FOR [l_akp_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__g_akp_vl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__g_akp_vl]  DEFAULT ((0)) FOR [g_akp_vl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__g_akp_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__g_akp_kg]  DEFAULT ((0)) FOR [g_akp_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__nakprijs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__nakprijs]  DEFAULT ((0)) FOR [nakprijs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__nakprold]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__nakprold]  DEFAULT ((0)) FOR [nakprold]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pryswy__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pryswy__] ADD  CONSTRAINT [DF_pryswy__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

