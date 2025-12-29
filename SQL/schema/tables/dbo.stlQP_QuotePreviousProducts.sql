SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuotePreviousProducts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_QuotePreviousProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ReplacementPercent] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_QuotePreviousProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuotePreviousProducts_Percent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts] ADD  CONSTRAINT [DF_stlQP_QuotePreviousProducts_Percent]  DEFAULT ((100)) FOR [ReplacementPercent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuotePreviousProducts_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts] ADD  CONSTRAINT [DF_stlQP_QuotePreviousProducts_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuotePreviousProducts_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts] ADD  CONSTRAINT [DF_stlQP_QuotePreviousProducts_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuotePreviousProducts_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts] ADD  CONSTRAINT [DF_stlQP_QuotePreviousProducts_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuotePreviousProducts_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuotePreviousProducts]'))
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuotePreviousProducts_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuotePreviousProducts_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuotePreviousProducts]'))
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts] CHECK CONSTRAINT [FK_stlQP_QuotePreviousProducts_stlQP_Quotes]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlQP_QuotePreviousProducts_Percent]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuotePreviousProducts]'))
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts]  WITH CHECK ADD  CONSTRAINT [CK_stlQP_QuotePreviousProducts_Percent] CHECK  (([ReplacementPercent]>=(0) AND [ReplacementPercent]<=(100)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlQP_QuotePreviousProducts_Percent]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuotePreviousProducts]'))
ALTER TABLE [dbo].[stlQP_QuotePreviousProducts] CHECK CONSTRAINT [CK_stlQP_QuotePreviousProducts_Percent]
