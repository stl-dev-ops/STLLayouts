SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wafgfa__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wafgfa__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr_a] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins__dat] [date] NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord_afsl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__rtb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnrfl] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__ref] [nvarchar](32) COLLATE Latin1_General_CI_AS NOT NULL,
	[vfl__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[afpunten] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [wafgfai1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[volgnr_a] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfa__]') AND name = N'wafgfai2')
CREATE NONCLUSTERED INDEX [wafgfai2] ON [dbo].[wafgfa__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfa__]') AND name = N'wafgfai3')
CREATE NONCLUSTERED INDEX [wafgfai3] ON [dbo].[wafgfa__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfa__]') AND name = N'wafgfai4')
CREATE NONCLUSTERED INDEX [wafgfai4] ON [dbo].[wafgfa__]
(
	[bst__ref] ASC,
	[vfl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wafgfa__]') AND name = N'wafgfai5')
CREATE NONCLUSTERED INDEX [wafgfai5] ON [dbo].[wafgfa__]
(
	[volgnrfl] ASC,
	[soort___] ASC,
	[afpunten] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__volgnr_a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__volgnr_a]  DEFAULT ('') FOR [volgnr_a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__ord_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__ord_afsl]  DEFAULT ('') FOR [ord_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__typ__rtb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__typ__rtb]  DEFAULT ('') FOR [typ__rtb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__volgnrfl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__volgnrfl]  DEFAULT ('') FOR [volgnrfl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__bst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__bst__ref]  DEFAULT ('') FOR [bst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__vfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__vfl__ref]  DEFAULT ('') FOR [vfl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__afpunten]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__afpunten]  DEFAULT ('') FOR [afpunten]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wafgfa__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wafgfa__] ADD  CONSTRAINT [DF_wafgfa__omschr__]  DEFAULT ('') FOR [omschr__]
END

