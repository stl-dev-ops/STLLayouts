SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_QuoteNewProductRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[HaveWeRunThis] [tinyint] NULL,
	[Commercialized] [tinyint] NULL,
	[OriginalProductID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ApprovedBy_kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ModOrNewProduct] [int] NULL,
	[ProductID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[FaceChange] [tinyint] NULL,
	[AdhChange] [tinyint] NULL,
	[LinerChange] [tinyint] NULL,
	[InkCoatingChange] [tinyint] NULL,
	[FontGraphicsChange] [tinyint] NULL,
	[BackGraphicsChange] [tinyint] NULL,
	[LaminateChange] [tinyint] NULL,
	[UnwindDirectionChange] [tinyint] NULL,
	[LabelSizeChange] [tinyint] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQPCohesio_QuoteNewProductRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_OriginalProductID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_OriginalProductID]  DEFAULT ('') FOR [OriginalProductID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_ApprovedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_ApprovedBy]  DEFAULT ('') FOR [ApprovedBy_kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_ProductID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_ProductID]  DEFAULT ('') FOR [ProductID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteNewProductRequest_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteNewProductRequest_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_QuoteNewProductRequest_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_QuoteNewProductRequest]'))
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_QuoteNewProductRequest_stlQPCohesio_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQPCohesio_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_QuoteNewProductRequest_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_QuoteNewProductRequest]'))
ALTER TABLE [dbo].[stlQPCohesio_QuoteNewProductRequest] CHECK CONSTRAINT [FK_stlQPCohesio_QuoteNewProductRequest_stlQPCohesio_Quotes]
