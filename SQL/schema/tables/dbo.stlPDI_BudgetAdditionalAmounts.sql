SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_BudgetAdditionalAmounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_BudgetAdditionalAmounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[AdditionalBudgetDate] [datetime] NOT NULL,
	[ApprovedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_BudgetAdditionalAmounts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_BudgetAdditionalAmounts_AdditionalBudgetDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_BudgetAdditionalAmounts] ADD  CONSTRAINT [DF_stlPDI_BudgetAdditionalAmounts_AdditionalBudgetDate]  DEFAULT (getdate()) FOR [AdditionalBudgetDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_BudgetAdditionalAmounts_ApprovedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_BudgetAdditionalAmounts] ADD  CONSTRAINT [DF_stlPDI_BudgetAdditionalAmounts_ApprovedBy]  DEFAULT ('') FOR [ApprovedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_BudgetAdditionalAmounts_Amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_BudgetAdditionalAmounts] ADD  CONSTRAINT [DF_stlPDI_BudgetAdditionalAmounts_Amount]  DEFAULT ((0)) FOR [Amount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_BudgetAdditionalAmounts_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_BudgetAdditionalAmounts] ADD  CONSTRAINT [DF_stlPDI_BudgetAdditionalAmounts_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_BudgetAdditionalAmounts_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_BudgetAdditionalAmounts] ADD  CONSTRAINT [DF_stlPDI_BudgetAdditionalAmounts_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_BudgetAdditionalAmounts_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_BudgetAdditionalAmounts] ADD  CONSTRAINT [DF_stlPDI_BudgetAdditionalAmounts_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

