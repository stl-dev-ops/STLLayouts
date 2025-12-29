SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_InvoiceLineItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_InvoiceLineItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt11] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Comment] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_InvoiceLineItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_InvoiceLineItems]') AND name = N'IX_stlQP_InvoiceLineItems')
CREATE NONCLUSTERED INDEX [IX_stlQP_InvoiceLineItems] ON [dbo].[stlQP_InvoiceLineItems]
(
	[QuoteID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_InvoiceLineItems_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_InvoiceLineItems] ADD  CONSTRAINT [DF_stlQP_InvoiceLineItems_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_InvoiceLineItems_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_InvoiceLineItems] ADD  CONSTRAINT [DF_stlQP_InvoiceLineItems_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_InvoiceLineItems_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_InvoiceLineItems] ADD  CONSTRAINT [DF_stlQP_InvoiceLineItems_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_InvoiceLineItems_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_InvoiceLineItems]'))
ALTER TABLE [dbo].[stlQP_InvoiceLineItems]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_InvoiceLineItems_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_InvoiceLineItems_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_InvoiceLineItems]'))
ALTER TABLE [dbo].[stlQP_InvoiceLineItems] CHECK CONSTRAINT [FK_stlQP_InvoiceLineItems_stlQP_Quotes]
