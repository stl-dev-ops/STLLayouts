SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionProductsPrices]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBP_BrandProjectionProductsPrices](
	[BrandProjectionProductID] [int] IDENTITY(1,1) NOT NULL,
	[BrandProjectionID] [int] NOT NULL,
	[OptionalProductFilter] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[PricePer1000] [float] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlBP_BrandProjectionProductsPrices] PRIMARY KEY CLUSTERED 
(
	[BrandProjectionProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_OptionalProductFilter]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_OptionalProductFilter]  DEFAULT ('') FOR [OptionalProductFilter]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_PricePer1000]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_PricePer1000]  DEFAULT ((0)) FOR [PricePer1000]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_StartDate]  DEFAULT (getdate()) FOR [StartDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsPrices_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsPrices_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlBP_BrandProjectionProductsPrices_stlBP_BrandProjections]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionProductsPrices]'))
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices]  WITH CHECK ADD  CONSTRAINT [FK_stlBP_BrandProjectionProductsPrices_stlBP_BrandProjections] FOREIGN KEY([BrandProjectionID])
REFERENCES [dbo].[stlBP_BrandProjections] ([BrandProjectionID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlBP_BrandProjectionProductsPrices_stlBP_BrandProjections]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionProductsPrices]'))
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsPrices] CHECK CONSTRAINT [FK_stlBP_BrandProjectionProductsPrices_stlBP_BrandProjections]
