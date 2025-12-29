SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_ReplacedSales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_ReplacedSales](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[ReplacedSalesVolumeInitial] [decimal](19, 2) NOT NULL,
	[ReplacedChanceOfObtainingInitial] [int] NOT NULL,
	[ReplacedSalesVolumeAfter1Year] [decimal](19, 2) NOT NULL,
	[ReplacedChanceOfObtainingAfter1Year] [int] NOT NULL,
	[ReplacedSalesVolumeAfter2Year] [decimal](19, 2) NOT NULL,
	[ReplacedChanceOfObtainingAfter2Year] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_ReplacedSales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ReplacedSales_ReplacedSalesVolumeInitial]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ReplacedSales] ADD  CONSTRAINT [DF_stlPDI_ReplacedSales_ReplacedSalesVolumeInitial]  DEFAULT ((0)) FOR [ReplacedSalesVolumeInitial]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ReplacedSales_ReplacedSalesVolumeAfter1Year]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ReplacedSales] ADD  CONSTRAINT [DF_stlPDI_ReplacedSales_ReplacedSalesVolumeAfter1Year]  DEFAULT ((0)) FOR [ReplacedSalesVolumeAfter1Year]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ReplacedSales_ReplacedSalesVolumeAfter2Year]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ReplacedSales] ADD  CONSTRAINT [DF_stlPDI_ReplacedSales_ReplacedSalesVolumeAfter2Year]  DEFAULT ((0)) FOR [ReplacedSalesVolumeAfter2Year]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ReplacedSales_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ReplacedSales] ADD  CONSTRAINT [DF_stlPDI_ReplacedSales_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ReplacedSales_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ReplacedSales] ADD  CONSTRAINT [DF_stlPDI_ReplacedSales_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ReplacedSales_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ReplacedSales] ADD  CONSTRAINT [DF_stlPDI_ReplacedSales_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ReplacedSales_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ReplacedSales]'))
ALTER TABLE [dbo].[stlPDI_ReplacedSales]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_ReplacedSales_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ReplacedSales_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ReplacedSales]'))
ALTER TABLE [dbo].[stlPDI_ReplacedSales] CHECK CONSTRAINT [FK_stlPDI_ReplacedSales_stlPDI_ProductDevelopmentOrImprovement]
