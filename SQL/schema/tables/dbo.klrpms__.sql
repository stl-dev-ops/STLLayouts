SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klrpms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klrpms__](
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsrpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[quadri__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fam_geel] [int] NOT NULL,
	[fam_blau] [int] NOT NULL,
	[wit_zwrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_inkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[color___] [int] NOT NULL,
	[ink01ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink02ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink03ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink04ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink05ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink06ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink07ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink08ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_dl01] [float] NOT NULL,
	[ant_dl02] [float] NOT NULL,
	[ant_dl03] [float] NOT NULL,
	[ant_dl04] [float] NOT NULL,
	[ant_dl05] [float] NOT NULL,
	[ant_dl06] [float] NOT NULL,
	[ant_dl07] [float] NOT NULL,
	[ant_dl08] [float] NOT NULL,
	[antdltot] [float] NOT NULL,
	[kstdpref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstduref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdvref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkrgkpe] [float] NOT NULL,
	[jdfcbook] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfentry] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmyk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[cmykovg_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[srgb____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lab_____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dt__sync] [datetime2](3) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [klrpmsi1] PRIMARY KEY CLUSTERED 
(
	[klpmsref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[klrpms__]') AND name = N'klrpmsi2')
CREATE NONCLUSTERED INDEX [klrpmsi2] ON [dbo].[klrpms__]
(
	[jdfcbook] ASC,
	[jdfentry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__klpmsrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__klpmsrpn]  DEFAULT ('') FOR [klpmsrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__quadri__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__quadri__]  DEFAULT ('') FOR [quadri__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__fam_geel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__fam_geel]  DEFAULT ((0)) FOR [fam_geel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__fam_blau]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__fam_blau]  DEFAULT ((0)) FOR [fam_blau]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__wit_zwrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__wit_zwrt]  DEFAULT ('') FOR [wit_zwrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__srt_inkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__srt_inkt]  DEFAULT ('') FOR [srt_inkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__color___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__color___]  DEFAULT ((0)) FOR [color___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink01ref]  DEFAULT ('') FOR [ink01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink02ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink02ref]  DEFAULT ('') FOR [ink02ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink03ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink03ref]  DEFAULT ('') FOR [ink03ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink04ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink04ref]  DEFAULT ('') FOR [ink04ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink05ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink05ref]  DEFAULT ('') FOR [ink05ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink06ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink06ref]  DEFAULT ('') FOR [ink06ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink07ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink07ref]  DEFAULT ('') FOR [ink07ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ink08ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ink08ref]  DEFAULT ('') FOR [ink08ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl01]  DEFAULT ((0)) FOR [ant_dl01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl02]  DEFAULT ((0)) FOR [ant_dl02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl03]  DEFAULT ((0)) FOR [ant_dl03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl04]  DEFAULT ((0)) FOR [ant_dl04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl05]  DEFAULT ((0)) FOR [ant_dl05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl06]  DEFAULT ((0)) FOR [ant_dl06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl07]  DEFAULT ((0)) FOR [ant_dl07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__ant_dl08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__ant_dl08]  DEFAULT ((0)) FOR [ant_dl08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__antdltot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__antdltot]  DEFAULT ((0)) FOR [antdltot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__kstdpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__kstdpref]  DEFAULT ('') FOR [kstdpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__kstduref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__kstduref]  DEFAULT ('') FOR [kstduref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__kstdrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__kstdrref]  DEFAULT ('') FOR [kstdrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__kstdvref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__kstdvref]  DEFAULT ('') FOR [kstdvref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__inkrgkpe]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__inkrgkpe]  DEFAULT ((0)) FOR [inkrgkpe]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__jdfcbook]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__jdfcbook]  DEFAULT ('') FOR [jdfcbook]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__jdfentry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__jdfentry]  DEFAULT ('') FOR [jdfentry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__cmyk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__cmyk____]  DEFAULT ('') FOR [cmyk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__cmykovg_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__cmykovg_]  DEFAULT ('') FOR [cmykovg_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__srgb____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__srgb____]  DEFAULT ('') FOR [srgb____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__lab_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__lab_____]  DEFAULT ('') FOR [lab_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrpms__dt__sync]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrpms__] ADD  CONSTRAINT [DF_klrpms__dt__sync]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [dt__sync]
END

