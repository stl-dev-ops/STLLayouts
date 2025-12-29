SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCJ_ProductMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCJ_ProductMaterial](
	[stlCJ_ProductMaterialID] [int] IDENTITY(1,1) NOT NULL,
	[stlCJ_ProductID] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[passNo] [int] NOT NULL,
	[faceSheet] [bit] NOT NULL,
	[syncError] [bit] NOT NULL,
 CONSTRAINT [PK_stlCJ_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[stlCJ_ProductMaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductMaterial_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductMaterial] ADD  CONSTRAINT [DF_stlCJ_ProductMaterial_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductMaterial_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductMaterial] ADD  CONSTRAINT [DF_stlCJ_ProductMaterial_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductMaterial_passNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductMaterial] ADD  CONSTRAINT [DF_stlCJ_ProductMaterial_passNo]  DEFAULT ((1)) FOR [passNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductMaterial_faceSheet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductMaterial] ADD  CONSTRAINT [DF_stlCJ_ProductMaterial_faceSheet]  DEFAULT ((0)) FOR [faceSheet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_ProductMaterial_syncStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_ProductMaterial] ADD  CONSTRAINT [DF_stlCJ_ProductMaterial_syncStatus]  DEFAULT ((0)) FOR [syncError]
END

