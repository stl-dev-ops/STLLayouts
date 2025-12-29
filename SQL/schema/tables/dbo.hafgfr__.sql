SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hafgfr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hafgfr__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr_r] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedr__vm] [float] NOT NULL,
	[bedr__bm] [float] NOT NULL,
	[grtbkcom] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[open____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[deb_cre_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hafgfri1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[volgnr__] ASC,
	[volgnr_r] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hafgfr__]') AND name = N'hafgfri2')
CREATE NONCLUSTERED INDEX [hafgfri2] ON [dbo].[hafgfr__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hafgfr__]') AND name = N'hafgfri3')
CREATE NONCLUSTERED INDEX [hafgfri3] ON [dbo].[hafgfr__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__volgnr_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__volgnr_r]  DEFAULT ('') FOR [volgnr_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__bedr__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__bedr__vm]  DEFAULT ((0)) FOR [bedr__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__bedr__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__bedr__bm]  DEFAULT ((0)) FOR [bedr__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__grtbkcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__grtbkcom]  DEFAULT ('') FOR [grtbkcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__open____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__open____]  DEFAULT ('') FOR [open____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfr__deb_cre_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfr__] ADD  CONSTRAINT [DF_hafgfr__deb_cre_]  DEFAULT ('') FOR [deb_cre_]
END

