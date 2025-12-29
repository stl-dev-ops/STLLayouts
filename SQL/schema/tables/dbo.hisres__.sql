SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisres__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisres__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[stock_lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisresi0] PRIMARY KEY CLUSTERED 
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisres__]') AND name = N'hisresi1')
CREATE NONCLUSTERED INDEX [hisresi1] ON [dbo].[hisres__]
(
	[stock_lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisres__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisres__] ADD  CONSTRAINT [DF_hisres__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisres__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisres__] ADD  CONSTRAINT [DF_hisres__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisres__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisres__] ADD  CONSTRAINT [DF_hisres__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisres__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisres__] ADD  CONSTRAINT [DF_hisres__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisres__fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisres__] ADD  CONSTRAINT [DF_hisres__fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisres__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisres__] ADD  CONSTRAINT [DF_hisres__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisres__stock_lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisres__] ADD  CONSTRAINT [DF_hisres__stock_lyn__ref]  DEFAULT ('') FOR [stock_lyn__ref]
END

