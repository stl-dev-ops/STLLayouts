SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisplv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisplv__](
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_dat] [date] NOT NULL,
	[levr_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levrodat] [date] NOT NULL,
	[levrouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr2vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__dat] [date] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[import_location] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[import_permit_number] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [hisplvi0] PRIMARY KEY CLUSTERED 
(
	[levr_vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplv__]') AND name = N'hisplvi1')
CREATE NONCLUSTERED INDEX [hisplvi1] ON [dbo].[hisplv__]
(
	[grbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplv__]') AND name = N'hisplvi2')
CREATE NONCLUSTERED INDEX [hisplvi2] ON [dbo].[hisplv__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplv__]') AND name = N'hisplvi3')
CREATE NONCLUSTERED INDEX [hisplvi3] ON [dbo].[hisplv__]
(
	[import_location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__levr_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__levr_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levr_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__levr_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__levr_uur]  DEFAULT ('') FOR [levr_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__levrodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__levrodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levrodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__levrouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__levrouur]  DEFAULT ('') FOR [levrouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__jobnr2vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__jobnr2vw]  DEFAULT ('') FOR [jobnr2vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__fac__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__fac__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fac__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__import_location]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__import_location]  DEFAULT ('') FOR [import_location]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplv__import_permit_number]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplv__] ADD  CONSTRAINT [DF_hisplv__import_permit_number]  DEFAULT ('') FOR [import_permit_number]
END

