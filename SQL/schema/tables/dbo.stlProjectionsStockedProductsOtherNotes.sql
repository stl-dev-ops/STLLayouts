SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProductsOtherNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsStockedProductsOtherNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kla__ref] [nchar](6) COLLATE Latin1_General_CI_AS NULL,
	[afg__ref] [nchar](6) COLLATE Latin1_General_CI_AS NULL,
	[Notes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsStockedProductsOtherNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsOtherNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsOtherNotes] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsOtherNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsOtherNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsOtherNotes] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsOtherNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsOtherNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsOtherNotes] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsOtherNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsOtherNotes_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsOtherNotes] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsOtherNotes_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsStockedProductsOtherNotes_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsStockedProductsOtherNotes] ADD  CONSTRAINT [DF_stlProjectionsStockedProductsOtherNotes_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

