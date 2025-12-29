SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Label]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_Label](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[WidthAcross] [float] NOT NULL,
	[GapAcross] [float] NOT NULL,
	[RepeatAcross] [float] NOT NULL,
	[LengthAround] [float] NOT NULL,
	[GapAround] [float] NOT NULL,
	[RepeatAround] [float] NOT NULL,
	[LabelsPerRoll] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCQP_Label] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Label]') AND name = N'IX_stlQPCohesio_Label')
CREATE NONCLUSTERED INDEX [IX_stlQPCohesio_Label] ON [dbo].[stlQPCohesio_Label]
(
	[Deleted] ASC,
	[QuoteID] ASC
)
INCLUDE([ID],[WidthAcross],[GapAcross],[LengthAround],[GapAround],[LabelsPerRoll],[Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Label_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Label] ADD  CONSTRAINT [DF_stlCQP_Label_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Label_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Label] ADD  CONSTRAINT [DF_stlCQP_Label_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_Label_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_Label] ADD  CONSTRAINT [DF_stlCQP_Label_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_Label_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Label]'))
ALTER TABLE [dbo].[stlQPCohesio_Label]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_Label_stlQPCohesio_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQPCohesio_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_Label_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_Label]'))
ALTER TABLE [dbo].[stlQPCohesio_Label] CHECK CONSTRAINT [FK_stlQPCohesio_Label_stlQPCohesio_Quotes]
