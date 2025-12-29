SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Sales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_Sales](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[SourceID] [tinyint] NULL,
	[SalesPrice] [decimal](19, 2) NOT NULL,
	[SalesPriceUnitID] [int] NOT NULL,
	[SalesVolume] [int] NOT NULL,
	[SalesVolumeUnitID] [int] NOT NULL,
	[SalesVolumeInitial] [decimal](19, 2) NOT NULL,
	[ChanceOfObtainingInitial] [int] NOT NULL,
	[SalesVolumeAfter1Year] [decimal](19, 2) NOT NULL,
	[ChanceOfObtainingAfter1Year] [int] NOT NULL,
	[SalesVolumeAfter2Year] [decimal](19, 2) NOT NULL,
	[ChanceOfObtainingAfter2Year] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_Sales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Sales]') AND name = N'IX_stlPDI_Sales')
CREATE NONCLUSTERED INDEX [IX_stlPDI_Sales] ON [dbo].[stlPDI_Sales]
(
	[stlPDI_ID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Sales_SalesPriceUnitID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Sales] ADD  CONSTRAINT [DF_stlPDI_Sales_SalesPriceUnitID]  DEFAULT ((0)) FOR [SalesPriceUnitID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Sales_SalesVolumeUnitID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Sales] ADD  CONSTRAINT [DF_stlPDI_Sales_SalesVolumeUnitID]  DEFAULT ((0)) FOR [SalesVolumeUnitID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Sales_SalesVolumeInitial]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Sales] ADD  CONSTRAINT [DF_stlPDI_Sales_SalesVolumeInitial]  DEFAULT ((0)) FOR [SalesVolumeInitial]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Sales_ChanceOfObtainingInitial]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Sales] ADD  CONSTRAINT [DF_stlPDI_Sales_ChanceOfObtainingInitial]  DEFAULT ((0)) FOR [ChanceOfObtainingInitial]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Sales_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Sales] ADD  CONSTRAINT [DF_stlPDI_Sales_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Sales_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Sales] ADD  CONSTRAINT [DF_stlPDI_Sales_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Sales_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Sales] ADD  CONSTRAINT [DF_stlPDI_Sales_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Sales_stlPDI_Drivers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Sales]'))
ALTER TABLE [dbo].[stlPDI_Sales]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_Sales_stlPDI_Drivers] FOREIGN KEY([SourceID])
REFERENCES [dbo].[stlPDI_Drivers] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Sales_stlPDI_Drivers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Sales]'))
ALTER TABLE [dbo].[stlPDI_Sales] CHECK CONSTRAINT [FK_stlPDI_Sales_stlPDI_Drivers]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Sales_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Sales]'))
ALTER TABLE [dbo].[stlPDI_Sales]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_Sales_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Sales_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Sales]'))
ALTER TABLE [dbo].[stlPDI_Sales] CHECK CONSTRAINT [FK_stlPDI_Sales_stlPDI_ProductDevelopmentOrImprovement]
