SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hakpfi__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hakpfi__](
	[akp__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[faki_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aang_fir] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_7_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_9_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_11] [int] NOT NULL,
	[koloma12] [float] NOT NULL,
	[kolom_13] [float] NOT NULL,
	[gwstintr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[land_productie] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [hakpfii1] PRIMARY KEY CLUSTERED 
(
	[akp__ref] ASC,
	[faki_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__akp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__akp__ref]  DEFAULT ('') FOR [akp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__faki_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__faki_ref]  DEFAULT ('') FOR [faki_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__aang_fir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__aang_fir]  DEFAULT ('') FOR [aang_fir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__kolom_6_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__kolom_6_]  DEFAULT ('') FOR [kolom_6_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__kolom_6a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__kolom_6a]  DEFAULT ('') FOR [kolom_6a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__kolom_7_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__kolom_7_]  DEFAULT ('') FOR [kolom_7_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__kolom_9_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__kolom_9_]  DEFAULT ('') FOR [kolom_9_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__kolom_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__kolom_11]  DEFAULT ((0)) FOR [kolom_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__koloma12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__koloma12]  DEFAULT ((0)) FOR [koloma12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__kolom_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__kolom_13]  DEFAULT ((0)) FOR [kolom_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__gwstintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__gwstintr]  DEFAULT ('') FOR [gwstintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfi__land_productie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfi__] ADD  CONSTRAINT [DF_hakpfi__land_productie]  DEFAULT ('') FOR [land_productie]
END

