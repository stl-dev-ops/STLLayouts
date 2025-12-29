SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPKZ_PkgsPerBale]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPKZ_PkgsPerBale](
	[stlPKZ_PkgsPerBaleID] [int] IDENTITY(1,1) NOT NULL,
	[pkg_art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pkgLength] [float] NOT NULL,
	[tiling] [int] NOT NULL,
	[packagingLength] [float] NOT NULL,
	[bale_art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPKZ_BoxesPerBale] PRIMARY KEY CLUSTERED 
(
	[stlPKZ_PkgsPerBaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BoxesPerBale_box_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_PkgsPerBale] ADD  CONSTRAINT [DF_stlPKZ_BoxesPerBale_box_art__ref]  DEFAULT ('') FOR [pkg_art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BoxesPerBale_boxLength]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_PkgsPerBale] ADD  CONSTRAINT [DF_stlPKZ_BoxesPerBale_boxLength]  DEFAULT ((0)) FOR [pkgLength]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BoxesPerBale_tiling]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_PkgsPerBale] ADD  CONSTRAINT [DF_stlPKZ_BoxesPerBale_tiling]  DEFAULT ((0)) FOR [tiling]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BoxesPerBale_packagingLength]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_PkgsPerBale] ADD  CONSTRAINT [DF_stlPKZ_BoxesPerBale_packagingLength]  DEFAULT ((0)) FOR [packagingLength]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_BoxesPerBale_bale_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_PkgsPerBale] ADD  CONSTRAINT [DF_stlPKZ_BoxesPerBale_bale_art__ref]  DEFAULT ('') FOR [bale_art__ref]
END

