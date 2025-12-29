SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hakpfr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hakpfr__](
	[akp__ref] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fakl_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fakr_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedr__vm] [float] NOT NULL,
	[bedr__bm] [float] NOT NULL,
	[grtbkcom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pfakrref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwlnkrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_def_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwa_pct] [float] NOT NULL,
	[btwa__vm] [float] NOT NULL,
	[btwa__bm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hakpfri1] PRIMARY KEY CLUSTERED 
(
	[akp__ref] ASC,
	[fakl_ref] ASC,
	[fakr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__akp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__akp__ref]  DEFAULT ('') FOR [akp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__fakl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__fakl_ref]  DEFAULT ('') FOR [fakl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__fakr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__fakr_ref]  DEFAULT ('') FOR [fakr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__bedr__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__bedr__vm]  DEFAULT ((0)) FOR [bedr__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__bedr__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__bedr__bm]  DEFAULT ((0)) FOR [bedr__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__grtbkcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__grtbkcom]  DEFAULT ('') FOR [grtbkcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__pfakrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__pfakrref]  DEFAULT ('') FOR [pfakrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__btwlnkrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__btwlnkrf]  DEFAULT ('') FOR [btwlnkrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__btw_def_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__btw_def_]  DEFAULT ('') FOR [btw_def_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__btwa_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__btwa_pct]  DEFAULT ((0)) FOR [btwa_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__btwa__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__btwa__vm]  DEFAULT ((0)) FOR [btwa__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hakpfr__btwa__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hakpfr__] ADD  CONSTRAINT [DF_hakpfr__btwa__bm]  DEFAULT ((0)) FOR [btwa__bm]
END

