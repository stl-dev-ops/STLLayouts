SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_QuoteNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[NoteType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Notes] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_QuoteNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteNotes] ADD  CONSTRAINT [DF_stlQP_QuoteNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteNotes] ADD  CONSTRAINT [DF_stlQP_QuoteNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteNotes] ADD  CONSTRAINT [DF_stlQP_QuoteNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteNotes_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteNotes]'))
ALTER TABLE [dbo].[stlQP_QuoteNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuoteNotes_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteNotes_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteNotes]'))
ALTER TABLE [dbo].[stlQP_QuoteNotes] CHECK CONSTRAINT [FK_stlQP_QuoteNotes_stlQP_Quotes]
