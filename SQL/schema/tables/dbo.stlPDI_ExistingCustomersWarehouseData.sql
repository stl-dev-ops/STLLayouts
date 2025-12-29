SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_ExistingCustomersWarehouseData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_ExistingCustomersWarehouseData](
	[stlPDI_ID] [int] NOT NULL,
	[ExistingCustomers] [nvarchar](500) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
 CONSTRAINT [PK_stlPDI_ExistingCustomersWarehouseData] PRIMARY KEY CLUSTERED 
(
	[stlPDI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ExistingCustomersWarehouseData_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ExistingCustomersWarehouseData] ADD  CONSTRAINT [DF_stlPDI_ExistingCustomersWarehouseData_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ExistingCustomersWarehouseData_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ExistingCustomersWarehouseData]'))
ALTER TABLE [dbo].[stlPDI_ExistingCustomersWarehouseData]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_ExistingCustomersWarehouseData_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ExistingCustomersWarehouseData_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ExistingCustomersWarehouseData]'))
ALTER TABLE [dbo].[stlPDI_ExistingCustomersWarehouseData] CHECK CONSTRAINT [FK_stlPDI_ExistingCustomersWarehouseData_stlPDI_ProductDevelopmentOrImprovement]
