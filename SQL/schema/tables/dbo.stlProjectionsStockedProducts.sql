SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProducts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsStockedProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[afg__ref] [nchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nchar](6) COLLATE Latin1_General_CI_AS NULL,
	[PeriodID] [int] NOT NULL,
	[ProjectedRollQuantity] [int] NOT NULL,
 CONSTRAINT [PK_stlProjectionsStockedProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsStockedProducts_stlProjectionPeriods]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProducts]'))
ALTER TABLE [dbo].[stlProjectionsStockedProducts]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsStockedProducts_stlProjectionPeriods] FOREIGN KEY([PeriodID])
REFERENCES [dbo].[stlProjectionPeriods] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsStockedProducts_stlProjectionPeriods]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProducts]'))
ALTER TABLE [dbo].[stlProjectionsStockedProducts] CHECK CONSTRAINT [FK_stlProjectionsStockedProducts_stlProjectionPeriods]
