SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[algrek__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[algrek__](
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[arekfoms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tax__key] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bal_wv__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_atab_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[go_in_di] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fin___op] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[abal_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_gbk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[liquid__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ab_saari] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_arek] PRIMARY KEY CLUSTERED 
(
	[arek_srt] ASC,
	[arek_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[algrek__]') AND name = N'algreki0')
CREATE NONCLUSTERED INDEX [algreki0] ON [dbo].[algrek__]
(
	[arek_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__arek_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__arek_srt]  DEFAULT ('5') FOR [arek_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__arek_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__arek_rpn]  DEFAULT ('') FOR [arek_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__arek_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__arek_oms]  DEFAULT ('') FOR [arek_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__arekfoms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__arekfoms]  DEFAULT ('') FOR [arekfoms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__tax__key]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__tax__key]  DEFAULT ('') FOR [tax__key]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__bal_wv__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__bal_wv__]  DEFAULT ('2') FOR [bal_wv__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__in_atab_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__in_atab_]  DEFAULT ('0') FOR [in_atab_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__go_in_di]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__go_in_di]  DEFAULT ('1') FOR [go_in_di]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__fin___op]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__fin___op]  DEFAULT (' ') FOR [fin___op]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__abal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__abal_ref]  DEFAULT ('') FOR [abal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__arek_gbk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__arek_gbk]  DEFAULT ('') FOR [arek_gbk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__liquid__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__liquid__]  DEFAULT ('') FOR [liquid__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__ab_saari]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__ab_saari]  DEFAULT ('N') FOR [ab_saari]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_algrek__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[algrek__] ADD  CONSTRAINT [DF_algrek__comment_]  DEFAULT ('') FOR [comment_]
END

