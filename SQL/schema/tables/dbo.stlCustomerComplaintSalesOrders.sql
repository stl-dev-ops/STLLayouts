SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintSalesOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCustomerComplaintSalesOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlCustomerComplaintID] [int] NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCustomerComplaintSalesOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintSalesOrders_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintSalesOrders] ADD  CONSTRAINT [DF_stlCustomerComplaintSalesOrders_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintSalesOrders_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintSalesOrders] ADD  CONSTRAINT [DF_stlCustomerComplaintSalesOrders_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCustomerComplaintSalesOrders_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCustomerComplaintSalesOrders] ADD  CONSTRAINT [DF_stlCustomerComplaintSalesOrders_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintSalesOrders_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintSalesOrders]'))
ALTER TABLE [dbo].[stlCustomerComplaintSalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_stlCustomerComplaintSalesOrders_stlCustomerComplaints] FOREIGN KEY([stlCustomerComplaintID])
REFERENCES [dbo].[stlCustomerComplaints] ([stlCustomerComplaintID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCustomerComplaintSalesOrders_stlCustomerComplaints]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintSalesOrders]'))
ALTER TABLE [dbo].[stlCustomerComplaintSalesOrders] CHECK CONSTRAINT [FK_stlCustomerComplaintSalesOrders_stlCustomerComplaints]
