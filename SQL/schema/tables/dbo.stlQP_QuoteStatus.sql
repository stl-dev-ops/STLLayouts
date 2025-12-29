SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_QuoteStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[StatusDate] [datetime] NOT NULL,
	[Notes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_QuoteStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteStatus_StatusDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteStatus] ADD  CONSTRAINT [DF_stlQP_QuoteStatus_StatusDate]  DEFAULT (getdate()) FOR [StatusDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteStatus_Notes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteStatus] ADD  CONSTRAINT [DF_stlQP_QuoteStatus_Notes]  DEFAULT ('') FOR [Notes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteStatus_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteStatus] ADD  CONSTRAINT [DF_stlQP_QuoteStatus_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteStatus_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteStatus] ADD  CONSTRAINT [DF_stlQP_QuoteStatus_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteStatus_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteStatus] ADD  CONSTRAINT [DF_stlQP_QuoteStatus_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteStatus_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteStatus]'))
ALTER TABLE [dbo].[stlQP_QuoteStatus]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuoteStatus_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteStatus_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteStatus]'))
ALTER TABLE [dbo].[stlQP_QuoteStatus] CHECK CONSTRAINT [FK_stlQP_QuoteStatus_stlQP_Quotes]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteStatus_stlQP_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteStatus]'))
ALTER TABLE [dbo].[stlQP_QuoteStatus]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuoteStatus_stlQP_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[stlQP_Status] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteStatus_stlQP_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteStatus]'))
ALTER TABLE [dbo].[stlQP_QuoteStatus] CHECK CONSTRAINT [FK_stlQP_QuoteStatus_stlQP_Status]
