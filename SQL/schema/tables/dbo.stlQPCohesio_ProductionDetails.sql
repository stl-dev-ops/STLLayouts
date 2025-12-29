SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_ProductionDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_ProductionDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[NumberAcross] [int] NOT NULL,
	[TrimWaste] [float] NOT NULL,
	[CostPerHour] [float] NOT NULL,
	[PDD_Cost] [float] NOT NULL,
	[RewindWastePercent] [float] NOT NULL,
	[ColorCodeExtraWasteFeetPerPass] [float] NOT NULL,
	[ColorCodeExtraMR_MinutesPerPass] [int] NOT NULL,
	[ColorCodeWasteFeetPercentPerPass] [float] NOT NULL,
	[ColorCodeWashingMinutesPerPass] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCQP_ProductionDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_ProductionDetails]') AND name = N'IX_stlQPCohesio_ProductionDetails')
CREATE NONCLUSTERED INDEX [IX_stlQPCohesio_ProductionDetails] ON [dbo].[stlQPCohesio_ProductionDetails]
(
	[Deleted] ASC,
	[QuoteID] ASC
)
INCLUDE([ID],[NumberAcross],[TrimWaste],[CostPerHour],[PDD_Cost],[RewindWastePercent],[ColorCodeExtraWasteFeetPerPass],[ColorCodeExtraMR_MinutesPerPass],[ColorCodeWasteFeetPercentPerPass],[ColorCodeWashingMinutesPerPass],[Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_ProductionDetails_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_ProductionDetails] ADD  CONSTRAINT [DF_stlCQP_ProductionDetails_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_ProductionDetails_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_ProductionDetails] ADD  CONSTRAINT [DF_stlCQP_ProductionDetails_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_ProductionDetails_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_ProductionDetails] ADD  CONSTRAINT [DF_stlCQP_ProductionDetails_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_ProductionDetails_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_ProductionDetails]'))
ALTER TABLE [dbo].[stlQPCohesio_ProductionDetails]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_ProductionDetails_stlQPCohesio_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQPCohesio_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_ProductionDetails_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_ProductionDetails]'))
ALTER TABLE [dbo].[stlQPCohesio_ProductionDetails] CHECK CONSTRAINT [FK_stlQPCohesio_ProductionDetails_stlQPCohesio_Quotes]
