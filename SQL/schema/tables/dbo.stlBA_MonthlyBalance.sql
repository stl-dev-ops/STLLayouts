SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBA_MonthlyBalance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBA_MonthlyBalance](
	[stlBA_MonthlyBalanceID] [int] IDENTITY(1,1) NOT NULL,
	[RecType] [int] NOT NULL,
	[RecDesc] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[GLAcct] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[GLDesc] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[BudgetDt] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[Balance] [money] NOT NULL,
	[PERIODID] [int] NOT NULL,
	[YEAR1] [int] NOT NULL,
 CONSTRAINT [PK_stlBA_MonthlyBalance] PRIMARY KEY CLUSTERED 
(
	[stlBA_MonthlyBalanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_RecType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_RecType]  DEFAULT ((4)) FOR [RecType]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_RecDesc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_RecDesc]  DEFAULT ('') FOR [RecDesc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_GLAcct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_GLAcct]  DEFAULT ('') FOR [GLAcct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_GLDesc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_GLDesc]  DEFAULT ('') FOR [GLDesc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_BudgetDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_BudgetDt]  DEFAULT ('') FOR [BudgetDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_Balance]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_Balance]  DEFAULT ((0)) FOR [Balance]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_PERIODID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_PERIODID]  DEFAULT ((0)) FOR [PERIODID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_MonthlyBalance_YEAR1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_MonthlyBalance] ADD  CONSTRAINT [DF_stlBA_MonthlyBalance_YEAR1]  DEFAULT ((0)) FOR [YEAR1]
END

