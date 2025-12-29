SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSR_ProductSpec]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSR_ProductSpec](
	[stlSR_ProductSpecID] [int] IDENTITY(1,1) NOT NULL,
	[stlSR_SiliconeRecipeID] [int] NOT NULL,
	[product] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[mixturePct] [numeric](7, 4) NOT NULL,
	[tolerancePct] [numeric](7, 4) NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSR_ProductSpec] PRIMARY KEY CLUSTERED 
(
	[stlSR_ProductSpecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_ProductSpec_stlSR_SiliconeRecipeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_ProductSpec] ADD  CONSTRAINT [DF_stlSR_ProductSpec_stlSR_SiliconeRecipeID]  DEFAULT ((0)) FOR [stlSR_SiliconeRecipeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_ProductSpec_product]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_ProductSpec] ADD  CONSTRAINT [DF_stlSR_ProductSpec_product]  DEFAULT ('') FOR [product]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_ProductSpec_mixturePct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_ProductSpec] ADD  CONSTRAINT [DF_stlSR_ProductSpec_mixturePct]  DEFAULT ((0.0)) FOR [mixturePct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_ProductSpec_tolerancePct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_ProductSpec] ADD  CONSTRAINT [DF_stlSR_ProductSpec_tolerancePct]  DEFAULT ((0)) FOR [tolerancePct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_ProductSpec_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_ProductSpec] ADD  CONSTRAINT [DF_stlSR_ProductSpec_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_ProductSpec_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_ProductSpec] ADD  CONSTRAINT [DF_stlSR_ProductSpec_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSR_ProductSpec_stlSR_SiliconeRecipe]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSR_ProductSpec]'))
ALTER TABLE [dbo].[stlSR_ProductSpec]  WITH CHECK ADD  CONSTRAINT [FK_stlSR_ProductSpec_stlSR_SiliconeRecipe] FOREIGN KEY([stlSR_SiliconeRecipeID])
REFERENCES [dbo].[stlSR_SiliconeRecipe] ([stlSR_SiliconeRecipeID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSR_ProductSpec_stlSR_SiliconeRecipe]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSR_ProductSpec]'))
ALTER TABLE [dbo].[stlSR_ProductSpec] CHECK CONSTRAINT [FK_stlSR_ProductSpec_stlSR_SiliconeRecipe]
