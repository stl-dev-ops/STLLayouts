SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkvls__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkvls__](
	[vls__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vls__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vls__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[value__x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[value__y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[schoonsn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfbside] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_bord] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfbtype] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfbleed] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[sec_sort] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[secrange] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx__vls] PRIMARY KEY CLUSTERED 
(
	[vls__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__vls__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__vls__ref]  DEFAULT ('') FOR [vls__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__vls__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__vls__oms]  DEFAULT ('') FOR [vls__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__vls__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__vls__rpn]  DEFAULT ('') FOR [vls__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__value__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__value__x]  DEFAULT ('') FOR [value__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__value__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__value__y]  DEFAULT ('') FOR [value__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__schoonsn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__schoonsn]  DEFAULT ('') FOR [schoonsn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__jdfbside]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__jdfbside]  DEFAULT ('') FOR [jdfbside]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__jdf_bord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__jdf_bord]  DEFAULT ('') FOR [jdf_bord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__jdfbtype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__jdfbtype]  DEFAULT ('') FOR [jdfbtype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__jdfbleed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__jdfbleed]  DEFAULT ('') FOR [jdfbleed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__sec_sort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__sec_sort]  DEFAULT ('') FOR [sec_sort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__secrange]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__secrange]  DEFAULT ('') FOR [secrange]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvls__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvls__] ADD  CONSTRAINT [DF_drkvls__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

