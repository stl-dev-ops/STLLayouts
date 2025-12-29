SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSR_SiliconeRecipe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSR_SiliconeRecipe](
	[stlSR_SiliconeRecipeID] [int] IDENTITY(1,1) NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[description] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[note] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSR_SiliconeRecipe] PRIMARY KEY CLUSTERED 
(
	[stlSR_SiliconeRecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_SiliconeRecipe_klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_SiliconeRecipe] ADD  CONSTRAINT [DF_stlSR_SiliconeRecipe_klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_SiliconeRecipe_description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_SiliconeRecipe] ADD  CONSTRAINT [DF_stlSR_SiliconeRecipe_description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_SiliconeRecipe_note]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_SiliconeRecipe] ADD  CONSTRAINT [DF_stlSR_SiliconeRecipe_note]  DEFAULT ('') FOR [note]
END

