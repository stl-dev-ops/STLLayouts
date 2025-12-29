SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteLetterDocuments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_QuoteLetterDocuments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[FileName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_QuoteLetterDocuments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteLetterDocuments]') AND name = N'IX_stlQP_QuoteLetterDocuments')
CREATE NONCLUSTERED INDEX [IX_stlQP_QuoteLetterDocuments] ON [dbo].[stlQP_QuoteLetterDocuments]
(
	[QuoteID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteLetterDocuments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteLetterDocuments] ADD  CONSTRAINT [DF_stlQP_QuoteLetterDocuments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteLetterDocuments_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteLetterDocuments] ADD  CONSTRAINT [DF_stlQP_QuoteLetterDocuments_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteLetterDocuments_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteLetterDocuments] ADD  CONSTRAINT [DF_stlQP_QuoteLetterDocuments_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteLetterDocuments_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteLetterDocuments]'))
ALTER TABLE [dbo].[stlQP_QuoteLetterDocuments]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuoteLetterDocuments_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteLetterDocuments_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteLetterDocuments]'))
ALTER TABLE [dbo].[stlQP_QuoteLetterDocuments] CHECK CONSTRAINT [FK_stlQP_QuoteLetterDocuments_stlQP_Quotes]
