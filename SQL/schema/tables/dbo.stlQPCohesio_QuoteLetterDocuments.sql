SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_QuoteLetterDocuments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQPCohesio_QuoteLetterDocuments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[FileName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQPCohesio_QuoteLetterDocuments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteLetterDocuments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteLetterDocuments] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteLetterDocuments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteLetterDocuments_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteLetterDocuments] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteLetterDocuments_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQPCohesio_QuoteLetterDocuments_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQPCohesio_QuoteLetterDocuments] ADD  CONSTRAINT [DF_stlQPCohesio_QuoteLetterDocuments_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_QuoteLetterDocuments_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_QuoteLetterDocuments]'))
ALTER TABLE [dbo].[stlQPCohesio_QuoteLetterDocuments]  WITH CHECK ADD  CONSTRAINT [FK_stlQPCohesio_QuoteLetterDocuments_stlQPCohesio_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQPCohesio_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQPCohesio_QuoteLetterDocuments_stlQPCohesio_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_QuoteLetterDocuments]'))
ALTER TABLE [dbo].[stlQPCohesio_QuoteLetterDocuments] CHECK CONSTRAINT [FK_stlQPCohesio_QuoteLetterDocuments_stlQPCohesio_Quotes]
