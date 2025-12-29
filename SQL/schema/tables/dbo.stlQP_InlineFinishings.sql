SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_InlineFinishings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_InlineFinishings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Comment] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[LaminateKeyword] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[LaminateMSI_Cost] [float] NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[WasteFeet] [int] NOT NULL,
	[ExtraMakeReady] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_InlineFinishings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_InlineFinishings]') AND name = N'IX_stlQP_InlineFinishings')
CREATE NONCLUSTERED INDEX [IX_stlQP_InlineFinishings] ON [dbo].[stlQP_InlineFinishings]
(
	[QuoteID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_InlineFinishings_drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_InlineFinishings] ADD  CONSTRAINT [DF_stlQP_InlineFinishings_drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_InlineFinishings_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_InlineFinishings] ADD  CONSTRAINT [DF_stlQP_InlineFinishings_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_InlineFinishings_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_InlineFinishings] ADD  CONSTRAINT [DF_stlQP_InlineFinishings_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_InlineFinishings_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_InlineFinishings] ADD  CONSTRAINT [DF_stlQP_InlineFinishings_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_InlineFinishings_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_InlineFinishings]'))
ALTER TABLE [dbo].[stlQP_InlineFinishings]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_InlineFinishings_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_InlineFinishings_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_InlineFinishings]'))
ALTER TABLE [dbo].[stlQP_InlineFinishings] CHECK CONSTRAINT [FK_stlQP_InlineFinishings_stlQP_Quotes]
