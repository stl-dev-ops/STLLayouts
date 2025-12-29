SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPP_FlatRollMaterial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPP_FlatRollMaterial](
	[stlPP_FlatRollMaterialID] [int] IDENTITY(1,1) NOT NULL,
	[stlPP_PackingMaterialTypeID] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_FlatRollMaterial_stlPP_PackingMaterialTypeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_FlatRollMaterial] ADD  CONSTRAINT [DF_stlPP_FlatRollMaterial_stlPP_PackingMaterialTypeID]  DEFAULT ((0)) FOR [stlPP_PackingMaterialTypeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_FlatRollMaterial_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_FlatRollMaterial] ADD  CONSTRAINT [DF_stlPP_FlatRollMaterial_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_FlatRollMaterial_art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_FlatRollMaterial] ADD  CONSTRAINT [DF_stlPP_FlatRollMaterial_art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_FlatRollMaterial_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_FlatRollMaterial] ADD  CONSTRAINT [DF_stlPP_FlatRollMaterial_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

