SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisint__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisint__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins__dat] [date] NOT NULL,
	[datum___] [date] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[totaf_bm] [float] NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[origin__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aang_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aang_fir] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6b] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_7_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_8_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_9_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_11] [int] NOT NULL,
	[koloma12] [float] NOT NULL,
	[kolom_13] [float] NOT NULL,
	[bedrintr] [float] NOT NULL,
	[gwstintr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[code_mkl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jaar____] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kwartaal] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_productie] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_nr_klant] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisinti3] PRIMARY KEY CLUSTERED 
(
	[lyn__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisint__]') AND name = N'hisinti1')
CREATE NONCLUSTERED INDEX [hisinti1] ON [dbo].[hisint__]
(
	[lbn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisint__]') AND name = N'hisinti2')
CREATE NONCLUSTERED INDEX [hisinti2] ON [dbo].[hisint__]
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__totaf_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__totaf_bm]  DEFAULT ((0)) FOR [totaf_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__origin__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__origin__]  DEFAULT ('') FOR [origin__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__aang_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__aang_srt]  DEFAULT ('') FOR [aang_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__aang_fir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__aang_fir]  DEFAULT ('') FOR [aang_fir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_6_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_6_]  DEFAULT ('') FOR [kolom_6_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_6a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_6a]  DEFAULT ('') FOR [kolom_6a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_6b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_6b]  DEFAULT ('') FOR [kolom_6b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_7_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_7_]  DEFAULT ('') FOR [kolom_7_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_8_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_8_]  DEFAULT ('') FOR [kolom_8_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_9_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_9_]  DEFAULT ('') FOR [kolom_9_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_11]  DEFAULT ((0)) FOR [kolom_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__koloma12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__koloma12]  DEFAULT ((0)) FOR [koloma12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kolom_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kolom_13]  DEFAULT ((0)) FOR [kolom_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__bedrintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__bedrintr]  DEFAULT ((0)) FOR [bedrintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__gwstintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__gwstintr]  DEFAULT ('') FOR [gwstintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__code_mkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__code_mkl]  DEFAULT ('') FOR [code_mkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__jaar____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__jaar____]  DEFAULT ('') FOR [jaar____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__kwartaal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__kwartaal]  DEFAULT ('') FOR [kwartaal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__land_productie]  DEFAULT ('') FOR [land_productie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisint__btw_nr_klant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisint__] ADD  CONSTRAINT [DF_hisint__btw_nr_klant]  DEFAULT ('') FOR [btw_nr_klant]
END

