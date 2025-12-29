SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wafgfi__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wafgfi__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr_i] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__dat] [date] NOT NULL,
	[aang_fir] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_7_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_9_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_11] [int] NOT NULL,
	[koloma12] [float] NOT NULL,
	[kolom_13] [float] NOT NULL,
	[bedrintr] [float] NOT NULL,
	[gwstintr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[code_mkl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_productie] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_nr_klant] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [wafgfii1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[volgnr_i] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__volgnr_i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__volgnr_i]  DEFAULT ('') FOR [volgnr_i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__vrz__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__vrz__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrz__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__aang_fir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__aang_fir]  DEFAULT ('') FOR [aang_fir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__kolom_6_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__kolom_6_]  DEFAULT ('') FOR [kolom_6_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__kolom_6a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__kolom_6a]  DEFAULT ('') FOR [kolom_6a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__kolom_7_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__kolom_7_]  DEFAULT ('') FOR [kolom_7_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__kolom_9_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__kolom_9_]  DEFAULT ('') FOR [kolom_9_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__kolom_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__kolom_11]  DEFAULT ((0)) FOR [kolom_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__koloma12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__koloma12]  DEFAULT ((0)) FOR [koloma12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__kolom_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__kolom_13]  DEFAULT ((0)) FOR [kolom_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__bedrintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__bedrintr]  DEFAULT ((0)) FOR [bedrintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__gwstintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__gwstintr]  DEFAULT ('') FOR [gwstintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__code_mkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__code_mkl]  DEFAULT ('') FOR [code_mkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__land_productie]  DEFAULT ('') FOR [land_productie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfi__btw_nr_klant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfi__] ADD  CONSTRAINT [DF_wafgfi__btw_nr_klant]  DEFAULT ('') FOR [btw_nr_klant]
END

