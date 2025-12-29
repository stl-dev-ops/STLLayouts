SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Quotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_Quotes](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[Customer] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[QuoteDescription] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProductDescription] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[InvoiceStyleID] [int] NOT NULL,
	[PricingApproved] [tinyint] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCQP_Quotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Quotes]') AND name = N'NonClusteredIndex-20230420-150405')
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20230420-150405] ON [dbo].[stlQPCohesio_Quotes]
(
	[Deleted] ASC,
	[ID] ASC
)
INCLUDE([Customer],[QuoteDescription],[ProductDescription],[Created],[CreatedBy],[Updated],[UpdatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_Quotes_vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlQPCohesio_Quotes_vrt__ref]  DEFAULT ('300004') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_Quotes_InvoiceStyleID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlQPCohesio_Quotes_InvoiceStyleID]  DEFAULT ((1)) FOR [InvoiceStyleID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_Quotes_PricingApproved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlQPCohesio_Quotes_PricingApproved]  DEFAULT ((0)) FOR [PricingApproved]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Quotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlCQP_Quotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Quotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlCQP_Quotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Quotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlCQP_Quotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Quotes_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlCQP_Quotes_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Quotes_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Quotes] ADD  CONSTRAINT [DF_stlCQP_Quotes_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_Quotes_stlInvoiceStyles]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Quotes]'))
ALTER TABLE [dbo].[stlQPCohesio_Quotes]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_Quotes_stlInvoiceStyles] FOREIGN KEY([InvoiceStyleID])
REFERENCES [dbo].[stlInvoiceStyles] ([InvoiceStyleID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_Quotes_stlInvoiceStyles]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Quotes]'))
ALTER TABLE [dbo].[stlQPCohesio_Quotes] CHECK CONSTRAINT [FK_stlQPCohesio_Quotes_stlInvoiceStyles]
