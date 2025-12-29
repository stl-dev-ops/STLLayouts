SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionProductsMonthlyQuantities]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities](
	[BrandProjectionProductsMonthlyQuantityID] [int] IDENTITY(1,1) NOT NULL,
	[BrandProjectionProductID] [int] NOT NULL,
	[YearID] [int] NOT NULL,
	[MonthID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlBP_BrandProjectionProductsMonthlyQuantities] PRIMARY KEY CLUSTERED 
(
	[BrandProjectionProductsMonthlyQuantityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_YearID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_YearID]  DEFAULT (datepart(year,getdate())) FOR [YearID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_MonthID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_MonthID]  DEFAULT (datepart(month,getdate())) FOR [MonthID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_Quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_Quantity]  DEFAULT ((0)) FOR [Quantity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionProductsMonthlyQuantities_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] ADD  CONSTRAINT [DF_stlBP_BrandProjectionProductsMonthlyQuantities_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlBP_BrandProjectionProductsMonthlyQuantities_stlBP_BrandProjectionProductsPrices]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionProductsMonthlyQuantities]'))
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities]  WITH CHECK ADD  CONSTRAINT [FK_stlBP_BrandProjectionProductsMonthlyQuantities_stlBP_BrandProjectionProductsPrices] FOREIGN KEY([BrandProjectionProductID])
REFERENCES [dbo].[stlBP_BrandProjectionProductsPrices] ([BrandProjectionProductID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlBP_BrandProjectionProductsMonthlyQuantities_stlBP_BrandProjectionProductsPrices]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionProductsMonthlyQuantities]'))
ALTER TABLE [dbo].[stlBP_BrandProjectionProductsMonthlyQuantities] CHECK CONSTRAINT [FK_stlBP_BrandProjectionProductsMonthlyQuantities_stlBP_BrandProjectionProductsPrices]
