SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSNH_StockAndHold](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[HoldTime] [int] NULL,
	[HoldTimeUnitID] [int] NULL,
	[ManufacturingTime] [int] NULL,
	[ManufacturingTimeUnitID] [int] NULL,
	[TransitTime] [int] NULL,
	[TransitTimeUnitID] [int] NULL,
	[MinReleaseNotes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[PalletQuantity] [int] NULL,
	[PalletUnitID] [int] NULL,
	[WarehouseMax] [int] NULL,
	[ReorderSoonPercent] [int] NULL,
	[ReorderNowPercent] [int] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSNH_StockAndHold] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]') AND name = N'IX_stlSNH_StockAndHold')
CREATE NONCLUSTERED INDEX [IX_stlSNH_StockAndHold] ON [dbo].[stlSNH_StockAndHold]
(
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_StockAndHold_PalletQuantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_StockAndHold] ADD  CONSTRAINT [DF_stlSNH_StockAndHold_PalletQuantity]  DEFAULT ((0)) FOR [PalletQuantity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_StockAndHold_PalletUnitID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_StockAndHold] ADD  CONSTRAINT [DF_stlSNH_StockAndHold_PalletUnitID]  DEFAULT ((1)) FOR [PalletUnitID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_StockAndHold_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_StockAndHold] ADD  CONSTRAINT [DF_stlSNH_StockAndHold_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_StockAndHold_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_StockAndHold] ADD  CONSTRAINT [DF_stlSNH_StockAndHold_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_StockAndHold_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_StockAndHold] ADD  CONSTRAINT [DF_stlSNH_StockAndHold_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_StockAndHold_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_StockAndHold] ADD  CONSTRAINT [DF_stlSNH_StockAndHold_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_StockAndHold_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_StockAndHold] ADD  CONSTRAINT [DF_stlSNH_StockAndHold_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_HoldTime_stlSNH_TimeUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold]  WITH CHECK ADD  CONSTRAINT [FK_stlSNH_StockAndHold_HoldTime_stlSNH_TimeUnit] FOREIGN KEY([HoldTimeUnitID])
REFERENCES [dbo].[stlSNH_TimeUnit] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_HoldTime_stlSNH_TimeUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold] CHECK CONSTRAINT [FK_stlSNH_StockAndHold_HoldTime_stlSNH_TimeUnit]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_ManufacturingTime_stlSNH_TimeUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold]  WITH CHECK ADD  CONSTRAINT [FK_stlSNH_StockAndHold_ManufacturingTime_stlSNH_TimeUnit] FOREIGN KEY([ManufacturingTimeUnitID])
REFERENCES [dbo].[stlSNH_TimeUnit] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_ManufacturingTime_stlSNH_TimeUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold] CHECK CONSTRAINT [FK_stlSNH_StockAndHold_ManufacturingTime_stlSNH_TimeUnit]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_stlSNH_QuantityUnits]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold]  WITH CHECK ADD  CONSTRAINT [FK_stlSNH_StockAndHold_stlSNH_QuantityUnits] FOREIGN KEY([PalletUnitID])
REFERENCES [dbo].[stlSNH_QuantityUnits] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_stlSNH_QuantityUnits]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold] CHECK CONSTRAINT [FK_stlSNH_StockAndHold_stlSNH_QuantityUnits]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_TransitTime_stlSNH_TimeUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold]  WITH CHECK ADD  CONSTRAINT [FK_stlSNH_StockAndHold_TransitTime_stlSNH_TimeUnit] FOREIGN KEY([TransitTimeUnitID])
REFERENCES [dbo].[stlSNH_TimeUnit] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_StockAndHold_TransitTime_stlSNH_TimeUnit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_StockAndHold]'))
ALTER TABLE [dbo].[stlSNH_StockAndHold] CHECK CONSTRAINT [FK_stlSNH_StockAndHold_TransitTime_stlSNH_TimeUnit]
