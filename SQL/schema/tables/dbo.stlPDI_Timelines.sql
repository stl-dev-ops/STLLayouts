SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Timelines]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_Timelines](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[DeadlineForCompletion] [datetime] NULL,
	[PhaseID] [int] NULL,
	[RawGoodsToolingDeliverBy] [datetime] NULL,
	[DeadlineForCompletionNotes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[NextUpdateBy] [datetime] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_Timelines] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Timelines]') AND name = N'IX_stlPDI_Timelines')
CREATE NONCLUSTERED INDEX [IX_stlPDI_Timelines] ON [dbo].[stlPDI_Timelines]
(
	[stlPDI_ID] ASC,
	[Deleted] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Timelines_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Timelines] ADD  CONSTRAINT [DF_stlPDI_Timelines_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Timelines_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Timelines] ADD  CONSTRAINT [DF_stlPDI_Timelines_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Timelines_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Timelines] ADD  CONSTRAINT [DF_stlPDI_Timelines_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Timelines_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Timelines]'))
ALTER TABLE [dbo].[stlPDI_Timelines]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_Timelines_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Timelines_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Timelines]'))
ALTER TABLE [dbo].[stlPDI_Timelines] CHECK CONSTRAINT [FK_stlPDI_Timelines_stlPDI_ProductDevelopmentOrImprovement]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Timelines_stlPDI_TimelinePhases]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Timelines]'))
ALTER TABLE [dbo].[stlPDI_Timelines]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_Timelines_stlPDI_TimelinePhases] FOREIGN KEY([PhaseID])
REFERENCES [dbo].[stlPDI_TimelinePhases] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Timelines_stlPDI_TimelinePhases]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Timelines]'))
ALTER TABLE [dbo].[stlPDI_Timelines] CHECK CONSTRAINT [FK_stlPDI_Timelines_stlPDI_TimelinePhases]
