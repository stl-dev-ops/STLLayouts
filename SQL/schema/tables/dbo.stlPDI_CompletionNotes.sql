SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_CompletionNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_CompletionNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[HowWillWeKnowWeAreDone] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_CompletionNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_CompletionNotes]') AND name = N'IX_stlPDI_CompletionNotes')
CREATE NONCLUSTERED INDEX [IX_stlPDI_CompletionNotes] ON [dbo].[stlPDI_CompletionNotes]
(
	[stlPDI_ID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CompletionNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CompletionNotes] ADD  CONSTRAINT [DF_stlPDI_CompletionNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CompletionNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CompletionNotes] ADD  CONSTRAINT [DF_stlPDI_CompletionNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CompletionNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CompletionNotes] ADD  CONSTRAINT [DF_stlPDI_CompletionNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CompletionNotes_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CompletionNotes]'))
ALTER TABLE [dbo].[stlPDI_CompletionNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CompletionNotes_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CompletionNotes_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CompletionNotes]'))
ALTER TABLE [dbo].[stlPDI_CompletionNotes] CHECK CONSTRAINT [FK_stlPDI_CompletionNotes_stlPDI_ProductDevelopmentOrImprovement]
