SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_GraduatedCalculations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_GraduatedCalculations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[RunQuantity] [int] NOT NULL,
	[Copies] [int] NOT NULL,
	[Margin_Percent] [float] NOT NULL,
	[MarkUp_Percent] [float] NOT NULL,
	[COG_Percent] [float] NOT NULL,
	[BaseRunFeet] [float] NOT NULL,
	[BaseRunWasteFeet] [float] NOT NULL,
	[OfflineFinishingMakeReadyFeet] [float] NOT NULL,
	[OfflineFinishingWasteFeet] [float] NOT NULL,
	[InlineMakeReadyTime] [float] NOT NULL,
	[InlineFinishingWasteFeet] [float] NOT NULL,
	[TotalShiftChangesFeet] [float] NOT NULL,
	[TotalJobFeet] [float] NOT NULL,
	[BaseRunTime] [float] NOT NULL,
	[RollChangesTime] [float] NOT NULL,
	[ExpectedShiftChanges] [float] NOT NULL,
	[ShiftStartupsTime] [float] NOT NULL,
	[TotalJobTime] [float] NOT NULL,
	[TotalPDD] [float] NOT NULL,
	[TotalINK_Cost] [float] NOT NULL,
	[TotalMaterialCost] [float] NOT NULL,
	[TotalCOG] [float] NOT NULL,
	[AdminCost] [float] NOT NULL,
	[BaseCost] [float] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[PricePer1000] [float] NOT NULL,
	[PriceLockID] [int] NOT NULL,
	[ShowOnQuoteLetter] [tinyint] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_GraduatedCalculations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_GraduatedCalculations]') AND name = N'IX_stlQP_GraduatedCalculations')
CREATE NONCLUSTERED INDEX [IX_stlQP_GraduatedCalculations] ON [dbo].[stlQP_GraduatedCalculations]
(
	[QuoteID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_GraduatedCalculations_PriceLockID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_GraduatedCalculations] ADD  CONSTRAINT [DF_stlQP_GraduatedCalculations_PriceLockID]  DEFAULT ((1)) FOR [PriceLockID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_GraduatedCalculations_ShowOnQuotedLetter]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_GraduatedCalculations] ADD  CONSTRAINT [DF_stlQP_GraduatedCalculations_ShowOnQuotedLetter]  DEFAULT ((1)) FOR [ShowOnQuoteLetter]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_GraduatedCalculations_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_GraduatedCalculations] ADD  CONSTRAINT [DF_stlQP_GraduatedCalculations_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_GraduatedCalculations_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_GraduatedCalculations] ADD  CONSTRAINT [DF_stlQP_GraduatedCalculations_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_GraduatedCalculations_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_GraduatedCalculations] ADD  CONSTRAINT [DF_stlQP_GraduatedCalculations_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_GraduatedCalculations_stlQP_PriceLock]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_GraduatedCalculations]'))
ALTER TABLE [dbo].[stlQP_GraduatedCalculations]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_GraduatedCalculations_stlQP_PriceLock] FOREIGN KEY([PriceLockID])
REFERENCES [dbo].[stlQP_PriceLock] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_GraduatedCalculations_stlQP_PriceLock]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_GraduatedCalculations]'))
ALTER TABLE [dbo].[stlQP_GraduatedCalculations] CHECK CONSTRAINT [FK_stlQP_GraduatedCalculations_stlQP_PriceLock]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_GraduatedCalculations_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_GraduatedCalculations]'))
ALTER TABLE [dbo].[stlQP_GraduatedCalculations]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_GraduatedCalculations_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_GraduatedCalculations_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_GraduatedCalculations]'))
ALTER TABLE [dbo].[stlQP_GraduatedCalculations] CHECK CONSTRAINT [FK_stlQP_GraduatedCalculations_stlQP_Quotes]
