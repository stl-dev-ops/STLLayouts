SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dagbkn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dagbkn__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[vlgnrfac] [int] NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_kons_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnttouse] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vtbb_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ckla_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[abaf_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[abmk_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ainc_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[clev_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rnd__rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cnty_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[city_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[spld_rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_rek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bankrek_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[autbet__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[filnam__] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[delimit_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[journal_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[doorst__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_exa] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_exg] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_act] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[soortoms] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwtouse] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_0] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omlafd_9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[online_betaling] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [idx_dgbk] PRIMARY KEY CLUSTERED 
(
	[dgbk_srt] ASC,
	[dgbk_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__dgbk_srt]  DEFAULT ('0') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__dgbk_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__dgbk_oms]  DEFAULT ('') FOR [dgbk_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__vlgnrfac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__vlgnrfac]  DEFAULT ((0)) FOR [vlgnrfac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__in_kons_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__in_kons_]  DEFAULT ('') FOR [in_kons_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__btw__ref]  DEFAULT ('') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__mnttouse]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__mnttouse]  DEFAULT ('') FOR [mnttouse]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__vtbb_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__vtbb_rek]  DEFAULT ('') FOR [vtbb_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__ckla_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__ckla_rek]  DEFAULT ('') FOR [ckla_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__abaf_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__abaf_rek]  DEFAULT ('') FOR [abaf_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__abmk_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__abmk_rek]  DEFAULT ('') FOR [abmk_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__ainc_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__ainc_rek]  DEFAULT ('') FOR [ainc_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__aniv_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__aniv_rek]  DEFAULT ('') FOR [aniv_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__clev_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__clev_rek]  DEFAULT ('') FOR [clev_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__rnd__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__rnd__rek]  DEFAULT ('') FOR [rnd__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__stat_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__stat_rek]  DEFAULT ('') FOR [stat_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__cnty_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__cnty_rek]  DEFAULT ('') FOR [cnty_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__city_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__city_rek]  DEFAULT ('') FOR [city_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__spld_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__spld_rek]  DEFAULT ('') FOR [spld_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__land_rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__land_rek]  DEFAULT ('') FOR [land_rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__bankrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__bankrek_]  DEFAULT ('') FOR [bankrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__autbet__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__autbet__]  DEFAULT ('') FOR [autbet__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__filnam__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__filnam__]  DEFAULT ('') FOR [filnam__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__delimit_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__delimit_]  DEFAULT ('') FOR [delimit_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__journal_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__journal_]  DEFAULT ('') FOR [journal_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__doorst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__doorst__]  DEFAULT ('') FOR [doorst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__dgbk_exa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__dgbk_exa]  DEFAULT ('') FOR [dgbk_exa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__dgbk_exg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__dgbk_exg]  DEFAULT ('') FOR [dgbk_exg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__dgbk_act]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__dgbk_act]  DEFAULT ('') FOR [dgbk_act]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__soortoms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__soortoms]  DEFAULT ('') FOR [soortoms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__btwtouse]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__btwtouse]  DEFAULT ('') FOR [btwtouse]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_0]  DEFAULT ('') FOR [omlafd_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_1]  DEFAULT ('') FOR [omlafd_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_2]  DEFAULT ('') FOR [omlafd_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_3]  DEFAULT ('') FOR [omlafd_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_4]  DEFAULT ('') FOR [omlafd_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_5]  DEFAULT ('') FOR [omlafd_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_6]  DEFAULT ('') FOR [omlafd_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_7]  DEFAULT ('') FOR [omlafd_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_8]  DEFAULT ('') FOR [omlafd_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__omlafd_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__omlafd_9]  DEFAULT ('') FOR [omlafd_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dagbkn__online_betaling]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dagbkn__] ADD  CONSTRAINT [DF_dagbkn__online_betaling]  DEFAULT ('N') FOR [online_betaling]
END

