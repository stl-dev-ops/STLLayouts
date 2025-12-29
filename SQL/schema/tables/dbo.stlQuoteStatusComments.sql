SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQuoteStatusComments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQuoteStatusComments](
	[QuoteCommentID] [int] IDENTITY(1,1) NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[QPID] [int] NULL,
	[Comment] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQuoteStatusComents] PRIMARY KEY CLUSTERED 
(
	[QuoteCommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQuoteStatusComments_Comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQuoteStatusComments] ADD  CONSTRAINT [DF_stlQuoteStatusComments_Comment]  DEFAULT ('') FOR [Comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQuoteStatusComents_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQuoteStatusComments] ADD  CONSTRAINT [DF_stlQuoteStatusComents_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQuoteStatusComents_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQuoteStatusComments] ADD  CONSTRAINT [DF_stlQuoteStatusComents_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQuoteStatusComents_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQuoteStatusComments] ADD  CONSTRAINT [DF_stlQuoteStatusComents_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQuoteStatusComments_Created1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQuoteStatusComments] ADD  CONSTRAINT [DF_stlQuoteStatusComments_Created1]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQuoteStatusComments_CreatedBy1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQuoteStatusComments] ADD  CONSTRAINT [DF_stlQuoteStatusComments_CreatedBy1]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

