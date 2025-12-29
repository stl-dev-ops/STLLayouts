SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_GraduatedCalculations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_GraduatedCalculations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[AdminCost] [float] NOT NULL,
	[MaterialCost] [float] NOT NULL,
	[InkCost] [float] NOT NULL,
	[TotalCOG] [float] NOT NULL,
	[PDD_Cost] [float] NOT NULL,
	[TotalCost] [float] NOT NULL,
	[NumberOfRolls] [float] NOT NULL,
	[PricePer1000] [float] NOT NULL,
	[PricePerRoll] [float] NOT NULL,
	[TotalSale] [float] NOT NULL,
	[MarginPercent] [float] NOT NULL,
	[COGPercent] [float] NOT NULL,
	[ExactFeet] [float] NOT NULL,
	[PrintMSI] [float] NOT NULL,
	[ColorCodeWasteFeet] [float] NOT NULL,
	[JobWasteFeet] [float] NOT NULL,
	[RollChangeWasteFeet] [float] NOT NULL,
	[InlineFinishingWasteFeet] [float] NOT NULL,
	[InlineSupplWasteFeet] [float] NOT NULL,
	[ShiftStartupFeet] [float] NOT NULL,
	[TotalFeet] [float] NOT NULL,
	[MR_ColorCodeHours] [float] NOT NULL,
	[SetupHours] [float] NOT NULL,
	[ShiftStartupHours] [float] NOT NULL,
	[RunHours] [float] NOT NULL,
	[InlineExtraMRHours] [float] NOT NULL,
	[ColorCodeWashHours] [float] NOT NULL,
	[TotalHours] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCQP_GraduatedCalculations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_GraduatedCalculations]') AND name = N'IX_stlQPCohesio_GraduatedCalculations')
CREATE NONCLUSTERED INDEX [IX_stlQPCohesio_GraduatedCalculations] ON [dbo].[stlQPCohesio_GraduatedCalculations]
(
	[Deleted] ASC,
	[QuoteID] ASC
)
INCLUDE([ID],[Quantity],[AdminCost],[MaterialCost],[NumberOfRolls],[PricePer1000],[ExactFeet],[PrintMSI],[InkCost],[TotalCOG],[PDD_Cost],[TotalCost],[InlineSupplWasteFeet],[TotalFeet],[PricePerRoll],[TotalSale],[MarginPercent],[COGPercent],[ColorCodeWashHours],[TotalHours],[ColorCodeWasteFeet],[JobWasteFeet],[RollChangeWasteFeet],[InlineFinishingWasteFeet],[Created],[CreatedBy],[MR_ColorCodeHours],[SetupHours],[RunHours],[InlineExtraMRHours]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_GraduatedCalculations_ShiftStartupFeet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_GraduatedCalculations] ADD  CONSTRAINT [DF_stlQPCohesio_GraduatedCalculations_ShiftStartupFeet]  DEFAULT ((0)) FOR [ShiftStartupFeet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_GraduatedCalculations_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_GraduatedCalculations] ADD  CONSTRAINT [DF_stlCQP_GraduatedCalculations_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_GraduatedCalculations_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_GraduatedCalculations] ADD  CONSTRAINT [DF_stlCQP_GraduatedCalculations_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_GraduatedCalculations_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_GraduatedCalculations] ADD  CONSTRAINT [DF_stlCQP_GraduatedCalculations_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_GraduatedCalculations_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_GraduatedCalculations]'))
ALTER TABLE [dbo].[stlQPCohesio_GraduatedCalculations]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_GraduatedCalculations_stlQPCohesio_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQPCohesio_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_GraduatedCalculations_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_GraduatedCalculations]'))
ALTER TABLE [dbo].[stlQPCohesio_GraduatedCalculations] CHECK CONSTRAINT [FK_stlQPCohesio_GraduatedCalculations_stlQPCohesio_Quotes]
