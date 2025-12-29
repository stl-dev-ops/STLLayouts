SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3vrs___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3vrs___](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[mpvrsref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla2_oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[afbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_bnl] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[aant_prd] [float] NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_produ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pose____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtvrs_1] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtvrs_2] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtvrs_3] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtvrs_4] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtvrs_5] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtvrs_6] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijs_bm] [float] NOT NULL,
	[prijs_vm] [float] NOT NULL,
	[prijs_om] [float] NOT NULL,
	[vrrkprys] [float] NOT NULL,
	[vrrk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal_f] [float] NOT NULL,
	[tota_fbm] [float] NOT NULL,
	[tota_fvm] [float] NOT NULL,
	[tota_fom] [float] NOT NULL,
	[coff_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gang_pct] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i1_vrs_3] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[vrs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3vrs___]') AND name = N'i2_vrs_3')
CREATE NONCLUSTERED INDEX [i2_vrs_3] ON [dbo].[v3vrs___]
(
	[afg2_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3vrs___]') AND name = N'i3_vrs_3')
CREATE NONCLUSTERED INDEX [i3_vrs_3] ON [dbo].[v3vrs___]
(
	[afg__ref] ASC,
	[in_produ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___mpvrsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___mpvrsref]  DEFAULT ('') FOR [mpvrsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___vrs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___vrs__vnr]  DEFAULT ('') FOR [vrs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___kla__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___kla__oms]  DEFAULT ('') FOR [kla__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___kla2_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___kla2_oms]  DEFAULT ('') FOR [kla2_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___afbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___afbonref]  DEFAULT ('') FOR [afbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___volg_bnl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___volg_bnl]  DEFAULT ('') FOR [volg_bnl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___aant_prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___aant_prd]  DEFAULT ((0)) FOR [aant_prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___lev__tst]  DEFAULT ('') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___in_produ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___in_produ]  DEFAULT ('') FOR [in_produ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___pose____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___pose____]  DEFAULT ('') FOR [pose____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___txt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___txt__ref]  DEFAULT ('') FOR [txt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___txtvrs_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___txtvrs_1]  DEFAULT ('') FOR [txtvrs_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___txtvrs_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___txtvrs_2]  DEFAULT ('') FOR [txtvrs_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___txtvrs_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___txtvrs_3]  DEFAULT ('') FOR [txtvrs_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___txtvrs_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___txtvrs_4]  DEFAULT ('') FOR [txtvrs_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___txtvrs_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___txtvrs_5]  DEFAULT ('') FOR [txtvrs_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___txtvrs_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___txtvrs_6]  DEFAULT ('') FOR [txtvrs_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___prijs_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___prijs_bm]  DEFAULT ((0)) FOR [prijs_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___prijs_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___prijs_vm]  DEFAULT ((0)) FOR [prijs_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___prijs_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___prijs_om]  DEFAULT ((0)) FOR [prijs_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___vrrkprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___vrrkprys]  DEFAULT ((0)) FOR [vrrkprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___vrrk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___vrrk_srt]  DEFAULT ('') FOR [vrrk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___aantal_f]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___aantal_f]  DEFAULT ((0)) FOR [aantal_f]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___tota_fbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___tota_fbm]  DEFAULT ((0)) FOR [tota_fbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___tota_fvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___tota_fvm]  DEFAULT ((0)) FOR [tota_fvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___tota_fom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___tota_fom]  DEFAULT ((0)) FOR [tota_fom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___coff_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___coff_ref]  DEFAULT ('') FOR [coff_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3vrs___gang_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3vrs___] ADD  CONSTRAINT [DF_v3vrs___gang_pct]  DEFAULT ((0)) FOR [gang_pct]
END

