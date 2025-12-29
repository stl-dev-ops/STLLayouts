SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_InlineFinishing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_InlineFinishing](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[PassNumber] [int] NOT NULL,
	[MaterialDescription] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[ExtraMRMinutes] [int] NOT NULL,
	[ExtraWasteFeet] [int] NOT NULL,
	[InlineSupplWastePercent] [float] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[MSICost] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCQP_InlineFinishing] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_InlineFinishing]') AND name = N'IX_stlQPCohesio_InlineFinishing')
CREATE NONCLUSTERED INDEX [IX_stlQPCohesio_InlineFinishing] ON [dbo].[stlQPCohesio_InlineFinishing]
(
	[Deleted] ASC,
	[QuoteID] ASC
)
INCLUDE([ID],[prs__ref],[PassNumber],[MaterialDescription],[etap_ref],[ExtraMRMinutes],[ExtraWasteFeet],[InlineSupplWastePercent],[art__ref],[MSICost],[Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_InlineFinishing_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_InlineFinishing] ADD  CONSTRAINT [DF_stlCQP_InlineFinishing_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_InlineFinishing_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_InlineFinishing] ADD  CONSTRAINT [DF_stlCQP_InlineFinishing_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCQP_InlineFinishing_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_InlineFinishing] ADD  CONSTRAINT [DF_stlCQP_InlineFinishing_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_InlineFinishing_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_InlineFinishing]'))
ALTER TABLE [dbo].[stlQPCohesio_InlineFinishing]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_InlineFinishing_stlQPCohesio_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQPCohesio_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_InlineFinishing_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_InlineFinishing]'))
ALTER TABLE [dbo].[stlQPCohesio_InlineFinishing] CHECK CONSTRAINT [FK_stlQPCohesio_InlineFinishing_stlQPCohesio_Quotes]
