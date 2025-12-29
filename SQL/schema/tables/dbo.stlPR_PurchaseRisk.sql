SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPR_PurchaseRisk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPR_PurchaseRisk](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[QuantityBuying] [float] NOT NULL,
	[PriceUsedForRisk] [float] NOT NULL,
	[OverrideLatestPurchasePrice] [tinyint] NOT NULL,
	[LatestPurchasePrice] [float] NOT NULL,
	[PurchaseOrderValue] [float] NOT NULL,
	[SupplierToDeliverBy] [datetime] NOT NULL,
	[InStockAsOfCreatedDate] [float] NOT NULL,
	[ReservedAsOfCreatedDate] [float] NOT NULL,
	[QuarentineAsOfCreatedDate] [float] NOT NULL,
	[AvailableAsOfCreatedDate] [float] NOT NULL,
	[ToBeDeliveredAsOfCreatedDate] [float] NOT NULL,
	[ExpectedStockBeforeDeliveryEOM] [float] NOT NULL,
	[ExpectedValueBeforeDeliveryEOM] [float] NOT NULL,
	[ExpectedStockAfterDeliveryEOM] [float] NOT NULL,
	[ExpectedValueAfterDeliveryEOM] [float] NOT NULL,
	[FinalStockBeforeDelivery] [float] NOT NULL,
	[FinalValueBeforeDelivery] [float] NOT NULL,
	[FinalStockAfterDelivery] [float] NOT NULL,
	[FinalValueAfterDelivery] [float] NOT NULL,
	[ProjectedBudgetFiscalYearToDeliveryEOM] [float] NOT NULL,
	[ActualBudgetFiscalYearToDeliveryEOM] [float] NOT NULL,
	[InvoicedFiscalYearToDeliveryEOM] [float] NOT NULL,
	[CERM_NotYetInvoicedAsOfCreatedDate] [float] NOT NULL,
	[ProjectedBudgetAvailableAtDeliveryEOM] [float] NOT NULL,
	[ActualBudgetAvailableAtDeliveryEOM] [float] NOT NULL,
	[RiskValueAfterDeliveryEOM] [float] NOT NULL,
	[ProjectedRiskRatioAfterDeliveryEOM] [float] NOT NULL,
	[ActualRiskRatioAfterDeliveryEOM] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPR_PurchaseRisk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPR_PurchaseRisk_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPR_PurchaseRisk] ADD  CONSTRAINT [DF_stlPR_PurchaseRisk_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPR_PurchaseRisk_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPR_PurchaseRisk] ADD  CONSTRAINT [DF_stlPR_PurchaseRisk_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPR_PurchaseRisk_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPR_PurchaseRisk] ADD  CONSTRAINT [DF_stlPR_PurchaseRisk_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

