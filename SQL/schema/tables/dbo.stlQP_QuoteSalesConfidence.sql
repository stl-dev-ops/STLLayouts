SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesConfidence]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_QuoteSalesConfidence](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[ConfidenceLevelID] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_QuoteSalesConfidence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteSalesConfidence_ConfidenceLevelID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence] ADD  CONSTRAINT [DF_stlQP_QuoteSalesConfidence_ConfidenceLevelID]  DEFAULT ((0)) FOR [ConfidenceLevelID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteSalesConfidence_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence] ADD  CONSTRAINT [DF_stlQP_QuoteSalesConfidence_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteSalesConfidence_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence] ADD  CONSTRAINT [DF_stlQP_QuoteSalesConfidence_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteSalesConfidence_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence] ADD  CONSTRAINT [DF_stlQP_QuoteSalesConfidence_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteSalesConfidence_stlQP_QuoteConfidenceLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesConfidence]'))
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuoteSalesConfidence_stlQP_QuoteConfidenceLevel] FOREIGN KEY([ConfidenceLevelID])
REFERENCES [dbo].[stlQP_QuoteConfidenceLevel] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteSalesConfidence_stlQP_QuoteConfidenceLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesConfidence]'))
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence] CHECK CONSTRAINT [FK_stlQP_QuoteSalesConfidence_stlQP_QuoteConfidenceLevel]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteSalesConfidence_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesConfidence]'))
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuoteSalesConfidence_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteSalesConfidence_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesConfidence]'))
ALTER TABLE [dbo].[stlQP_QuoteSalesConfidence] CHECK CONSTRAINT [FK_stlQP_QuoteSalesConfidence_stlQP_Quotes]
