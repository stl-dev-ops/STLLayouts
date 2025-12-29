SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPR_PurchaseRiskMovementsAsOfCreation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPR_PurchaseRiskMovementsAsOfCreation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseRiskID] [int] NOT NULL,
	[AsOf] [datetime] NOT NULL,
	[Quantity] [float] NOT NULL,
	[RunningTotal] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPR_PurchaseRiskMovementsAsOfCreation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPR_PurchaseRiskMovementsAsOfCreation_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPR_PurchaseRiskMovementsAsOfCreation] ADD  CONSTRAINT [DF_stlPR_PurchaseRiskMovementsAsOfCreation_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPR_PurchaseRiskMovementsAsOfCreation_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPR_PurchaseRiskMovementsAsOfCreation] ADD  CONSTRAINT [DF_stlPR_PurchaseRiskMovementsAsOfCreation_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPR_PurchaseRiskMovementsAsOfCreation_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPR_PurchaseRiskMovementsAsOfCreation] ADD  CONSTRAINT [DF_stlPR_PurchaseRiskMovementsAsOfCreation_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPR_PurchaseRiskMovementsAsOfCreation_stlPR_PurchaseRisk]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPR_PurchaseRiskMovementsAsOfCreation]'))
ALTER TABLE [dbo].[stlPR_PurchaseRiskMovementsAsOfCreation]  WITH CHECK ADD  CONSTRAINT [FK_stlPR_PurchaseRiskMovementsAsOfCreation_stlPR_PurchaseRisk] FOREIGN KEY([PurchaseRiskID])
REFERENCES [dbo].[stlPR_PurchaseRisk] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPR_PurchaseRiskMovementsAsOfCreation_stlPR_PurchaseRisk]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPR_PurchaseRiskMovementsAsOfCreation]'))
ALTER TABLE [dbo].[stlPR_PurchaseRiskMovementsAsOfCreation] CHECK CONSTRAINT [FK_stlPR_PurchaseRiskMovementsAsOfCreation_stlPR_PurchaseRisk]
