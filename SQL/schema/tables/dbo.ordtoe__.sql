SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordtoe__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ordtoe__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[toe__vlg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tota__bm] [float] NOT NULL,
	[lbn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[geg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id_toe_0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordtoe__]') AND name = N'id_toe_1')
CREATE NONCLUSTERED INDEX [id_toe_1] ON [dbo].[ordtoe__]
(
	[ord__ref] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__toe__vlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__toe__vlg]  DEFAULT ('') FOR [toe__vlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__geg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__geg__ref]  DEFAULT ('') FOR [geg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordtoe__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordtoe__] ADD  CONSTRAINT [DF_ordtoe__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

