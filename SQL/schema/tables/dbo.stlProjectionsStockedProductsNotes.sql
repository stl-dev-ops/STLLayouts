SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProductsNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsStockedProductsNotes](
	[stlProjectionsStockedProductsID] [int] NOT NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsStockedProductsNotes] PRIMARY KEY CLUSTERED 
(
	[stlProjectionsStockedProductsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsStockedProductsNotes_stlProjectionsStockedProductsNotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProductsNotes]'))
ALTER TABLE [dbo].[stlProjectionsStockedProductsNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsStockedProductsNotes_stlProjectionsStockedProductsNotes] FOREIGN KEY([stlProjectionsStockedProductsID])
REFERENCES [dbo].[stlProjectionsStockedProducts] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsStockedProductsNotes_stlProjectionsStockedProductsNotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProductsNotes]'))
ALTER TABLE [dbo].[stlProjectionsStockedProductsNotes] CHECK CONSTRAINT [FK_stlProjectionsStockedProductsNotes_stlProjectionsStockedProductsNotes]
