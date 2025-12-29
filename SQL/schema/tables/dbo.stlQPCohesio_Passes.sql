SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Passes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_Passes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[PassNumber] [int] NOT NULL,
	[JobSetupFeet] [float] NOT NULL,
	[WasteFeet] [float] NOT NULL,
	[WasteFeetInterval] [float] NOT NULL,
	[RollChangeWasteFeet] [float] NOT NULL,
	[RollChangeWasteFeetInterval] [float] NOT NULL,
	[SetupHours] [float] NOT NULL,
	[RunSpeedFPM] [float] NOT NULL,
	[TearDownHours] [float] NOT NULL,
	[ShiftStartupFeet] [float] NOT NULL,
	[ShiftStartupHours] [float] NOT NULL,
	[ShiftStartupHoursFeetInterval] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCQP_Passes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Passes]') AND name = N'IX_stlQPCohesio_Passes')
CREATE NONCLUSTERED INDEX [IX_stlQPCohesio_Passes] ON [dbo].[stlQPCohesio_Passes]
(
	[Deleted] ASC,
	[QuoteID] ASC
)
INCLUDE([ID],[prs__ref],[PassNumber],[JobSetupFeet],[TearDownHours],[ShiftStartupHours],[ShiftStartupHoursFeetInterval],[Created],[CreatedBy],[WasteFeet],[WasteFeetInterval],[RollChangeWasteFeet],[RollChangeWasteFeetInterval],[SetupHours],[RunSpeedFPM]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Passes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Passes] ADD  CONSTRAINT [DF_stlCQP_Passes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Passes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Passes] ADD  CONSTRAINT [DF_stlCQP_Passes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Passes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Passes] ADD  CONSTRAINT [DF_stlCQP_Passes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_Passes_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Passes]'))
ALTER TABLE [dbo].[stlQPCohesio_Passes]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_Passes_stlQPCohesio_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQPCohesio_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_Passes_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Passes]'))
ALTER TABLE [dbo].[stlQPCohesio_Passes] CHECK CONSTRAINT [FK_stlQPCohesio_Passes_stlQPCohesio_Quotes]
