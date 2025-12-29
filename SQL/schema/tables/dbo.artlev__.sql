SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artlev__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artlev__](
	[artlvref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__bst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[datl_akp] [date] NOT NULL,
	[l_akp__1] [float] NOT NULL,
	[l_akp__2] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[markt_vm] [float] NOT NULL,
 CONSTRAINT [artlevi1] PRIMARY KEY CLUSTERED 
(
	[artlvref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artlev__]') AND name = N'artlevi2')
CREATE NONCLUSTERED INDEX [artlevi2] ON [dbo].[artlev__]
(
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__artlvref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__artlvref]  DEFAULT ('') FOR [artlvref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__art__bst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__art__bst]  DEFAULT ('') FOR [art__bst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__datl_akp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__datl_akp]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datl_akp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__l_akp__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__l_akp__1]  DEFAULT ((0)) FOR [l_akp__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__l_akp__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__l_akp__2]  DEFAULT ((0)) FOR [l_akp__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artlev__markt_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artlev__] ADD  CONSTRAINT [DF_artlev__markt_vm]  DEFAULT ((0)) FOR [markt_vm]
END

