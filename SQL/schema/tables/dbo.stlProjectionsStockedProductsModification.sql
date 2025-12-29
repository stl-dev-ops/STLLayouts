SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProductsModification]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsStockedProductsModification](
	[afg__ref] [nchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ModifiedProjection] [int] NOT NULL,
	[mpNotes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[FutureOrder] [int] NOT NULL,
	[foNotes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsStockedProductsModification] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsModification_ModifiedProjection]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsModification] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsModification_ModifiedProjection]  DEFAULT ((0)) FOR [ModifiedProjection]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsModification_mpNotes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsModification] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsModification_mpNotes]  DEFAULT ('') FOR [mpNotes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsModification_FutureOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsModification] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsModification_FutureOrder]  DEFAULT ((0)) FOR [FutureOrder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsModification_mpNotes1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsModification] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsModification_mpNotes1]  DEFAULT ('') FOR [foNotes]
END

