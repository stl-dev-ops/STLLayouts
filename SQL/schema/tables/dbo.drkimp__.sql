SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkimp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkimp__](
	[imp__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[imp__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[imp__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plano___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rotatie_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[value__x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[value__y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[image__x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[image__y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[druktype] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx__imp] PRIMARY KEY CLUSTERED 
(
	[imp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__imp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__imp__ref]  DEFAULT ('') FOR [imp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__imp__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__imp__rpn]  DEFAULT ('') FOR [imp__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__imp__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__imp__oms]  DEFAULT ('') FOR [imp__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__plano___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__plano___]  DEFAULT ('Y') FOR [plano___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__rotatie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__rotatie_]  DEFAULT ('Y') FOR [rotatie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__value__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__value__x]  DEFAULT ('') FOR [value__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__value__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__value__y]  DEFAULT ('') FOR [value__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__image__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__image__x]  DEFAULT ('') FOR [image__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__image__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__image__y]  DEFAULT ('') FOR [image__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkimp__druktype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkimp__] ADD  CONSTRAINT [DF_drkimp__druktype]  DEFAULT ('1') FOR [druktype]
END

