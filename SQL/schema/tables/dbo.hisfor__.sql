SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisfor__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisfor__](
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__om] [float] NOT NULL,
	[btw___bm] [float] NOT NULL,
	[btw___vm] [float] NOT NULL,
	[btw___om] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisfori3] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[dok__srt] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisfor__]') AND name = N'hisfori2')
CREATE NONCLUSTERED INDEX [hisfori2] ON [dbo].[hisfor__]
(
	[dgbk_srt] ASC,
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[arek_ref] ASC,
	[btw_____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__arek_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__arek_srt]  DEFAULT ('') FOR [arek_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__tota__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__tota__om]  DEFAULT ((0)) FOR [tota__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__btw___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__btw___bm]  DEFAULT ((0)) FOR [btw___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__btw___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__btw___vm]  DEFAULT ((0)) FOR [btw___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfor__btw___om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfor__] ADD  CONSTRAINT [DF_hisfor__btw___om]  DEFAULT ((0)) FOR [btw___om]
END

