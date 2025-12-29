SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[skubew__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[skubew__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[box__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rmalynrf] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__ex] [float] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [skubewi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[skubew__]') AND name = N'skubewi1')
CREATE NONCLUSTERED INDEX [skubewi1] ON [dbo].[skubew__]
(
	[lyn__ref] ASC,
	[toestand] ASC,
	[afg__ref] ASC,
	[jobnr_vw] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[skubew__]') AND name = N'skubewi2')
CREATE NONCLUSTERED INDEX [skubewi2] ON [dbo].[skubew__]
(
	[rmalynrf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[skubew__]') AND name = N'skubewi3')
CREATE NONCLUSTERED INDEX [skubewi3] ON [dbo].[skubew__]
(
	[sku__ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__box__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__box__ref]  DEFAULT ('') FOR [box__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__rmalynrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__rmalynrf]  DEFAULT ('') FOR [rmalynrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__aant__ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__aant__ex]  DEFAULT ((0)) FOR [aant__ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_skubew__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[skubew__] ADD  CONSTRAINT [DF_skubew__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

