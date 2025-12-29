SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Budget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_Budget](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[BudgetDate] [datetime] NULL,
	[BudgetNotes] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[MachineCost] [int] NOT NULL,
	[NoOfTimesToMachine] [int] NOT NULL,
	[HoursPerTime] [decimal](19, 2) NOT NULL,
	[BudgetSourceID] [int] NOT NULL,
	[BudgetPercent] [decimal](5, 2) NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_Budget] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Budget]') AND name = N'IX_stlPDI_Budget')
CREATE NONCLUSTERED INDEX [IX_stlPDI_Budget] ON [dbo].[stlPDI_Budget]
(
	[stlPDI_ID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Budget_BudgetNotes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Budget] ADD  CONSTRAINT [DF_stlPDI_Budget_BudgetNotes]  DEFAULT ('') FOR [BudgetNotes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Budget_BudgetSourceID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Budget] ADD  CONSTRAINT [DF_stlPDI_Budget_BudgetSourceID]  DEFAULT ((0)) FOR [BudgetSourceID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Budget_BudgetPercent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Budget] ADD  CONSTRAINT [DF_stlPDI_Budget_BudgetPercent]  DEFAULT ((0)) FOR [BudgetPercent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Budget_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Budget] ADD  CONSTRAINT [DF_stlPDI_Budget_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Budget_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Budget] ADD  CONSTRAINT [DF_stlPDI_Budget_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Budget_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Budget] ADD  CONSTRAINT [DF_stlPDI_Budget_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Budget_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Budget]'))
ALTER TABLE [dbo].[stlPDI_Budget]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_Budget_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Budget_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Budget]'))
ALTER TABLE [dbo].[stlPDI_Budget] CHECK CONSTRAINT [FK_stlPDI_Budget_stlPDI_ProductDevelopmentOrImprovement]
