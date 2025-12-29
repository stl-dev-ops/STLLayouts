SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_OfflineFinishings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_OfflineFinishings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Comment] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[MR_Minutes] [int] NOT NULL,
	[Extra_tools_minutes] [int] NOT NULL,
	[MR_waste_feet] [int] NOT NULL,
	[Production_waste_percent] [float] NOT NULL,
	[Wage_cost] [float] NOT NULL,
	[Machine_cost] [float] NOT NULL,
	[Roll_change_waste] [int] NOT NULL,
	[Roll_change_MR_minutes] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_OfflineFinishings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_OfflineFinishings]') AND name = N'IX_stlQP_OfflineFinishings')
CREATE NONCLUSTERED INDEX [IX_stlQP_OfflineFinishings] ON [dbo].[stlQP_OfflineFinishings]
(
	[QuoteID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_OfflineFinishings_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_OfflineFinishings] ADD  CONSTRAINT [DF_stlQP_OfflineFinishings_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_OfflineFinishings_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_OfflineFinishings] ADD  CONSTRAINT [DF_stlQP_OfflineFinishings_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_OfflineFinishings_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_OfflineFinishings] ADD  CONSTRAINT [DF_stlQP_OfflineFinishings_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_OfflineFinishings_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_OfflineFinishings]'))
ALTER TABLE [dbo].[stlQP_OfflineFinishings]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_OfflineFinishings_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_OfflineFinishings_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_OfflineFinishings]'))
ALTER TABLE [dbo].[stlQP_OfflineFinishings] CHECK CONSTRAINT [FK_stlQP_OfflineFinishings_stlQP_Quotes]
