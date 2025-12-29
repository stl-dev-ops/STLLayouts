SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_Quotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_Quotes](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ReferenceAtCustomer] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[QuoteDescription] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ParameterID] [int] NOT NULL,
	[prfm_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[QuoteLetterUnits] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[InvoiceStyleID] [int] NOT NULL,
	[PricingApproved] [tinyint] NOT NULL,
	[NotReplacingProduct] [tinyint] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_Quotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_Quotes]') AND name = N'IX_stlQP_Quotes')
CREATE NONCLUSTERED INDEX [IX_stlQP_Quotes] ON [dbo].[stlQP_Quotes]
(
	[Deleted] ASC,
	[ID] ASC
)
INCLUDE([kla__ref],[knp__ref],[ReferenceAtCustomer],[QuoteDescription],[ParameterID],[Created],[CreatedBy],[Updated],[UpdatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_knp__nam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_knp__nam]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_vrt__ref]  DEFAULT ('300004') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_ReferenceAtCustomer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_ReferenceAtCustomer]  DEFAULT ('') FOR [ReferenceAtCustomer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_ParameterID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_ParameterID]  DEFAULT ((0)) FOR [ParameterID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_prfm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_prfm_ref]  DEFAULT ('') FOR [prfm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_QuoteLetterUnits]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_QuoteLetterUnits]  DEFAULT (N'labels') FOR [QuoteLetterUnits]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_InvoiceStyleID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_InvoiceStyleID]  DEFAULT ((1)) FOR [InvoiceStyleID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_PricingApproved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_PricingApproved]  DEFAULT ((0)) FOR [PricingApproved]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_NotReplacingProduct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_NotReplacingProduct]  DEFAULT ((0)) FOR [NotReplacingProduct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_Quotes_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_Quotes] ADD  CONSTRAINT [DF_stlQP_Quotes_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_Quotes_stlInvoiceStyles]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_Quotes]'))
ALTER TABLE [dbo].[stlQP_Quotes]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_Quotes_stlInvoiceStyles] FOREIGN KEY([InvoiceStyleID])
REFERENCES [dbo].[stlInvoiceStyles] ([InvoiceStyleID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_Quotes_stlInvoiceStyles]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_Quotes]'))
ALTER TABLE [dbo].[stlQP_Quotes] CHECK CONSTRAINT [FK_stlQP_Quotes_stlInvoiceStyles]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_Quotes_stlQP_Parameters]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_Quotes]'))
ALTER TABLE [dbo].[stlQP_Quotes]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_Quotes_stlQP_Parameters] FOREIGN KEY([ParameterID])
REFERENCES [dbo].[stlQP_Parameters] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_Quotes_stlQP_Parameters]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_Quotes]'))
ALTER TABLE [dbo].[stlQP_Quotes] CHECK CONSTRAINT [FK_stlQP_Quotes_stlQP_Parameters]
