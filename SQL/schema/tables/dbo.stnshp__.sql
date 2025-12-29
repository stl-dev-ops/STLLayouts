SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stnshp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stnshp__](
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rol____b] [float] NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[row__vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stnshpi0] PRIMARY KEY CLUSTERED 
(
	[stns_ref] ASC,
	[shp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnshp__stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnshp__] ADD  CONSTRAINT [DF_stnshp__stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnshp__shp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnshp__] ADD  CONSTRAINT [DF_stnshp__shp__ref]  DEFAULT ('') FOR [shp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnshp__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnshp__] ADD  CONSTRAINT [DF_stnshp__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnshp__rol____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnshp__] ADD  CONSTRAINT [DF_stnshp__rol____b]  DEFAULT ((0)) FOR [rol____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnshp__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnshp__] ADD  CONSTRAINT [DF_stnshp__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnshp__row__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnshp__] ADD  CONSTRAINT [DF_stnshp__row__vnr]  DEFAULT ('') FOR [row__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnshp__tssnaf_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnshp__] ADD  CONSTRAINT [DF_stnshp__tssnaf_h]  DEFAULT ((0)) FOR [tssnaf_h]
END

