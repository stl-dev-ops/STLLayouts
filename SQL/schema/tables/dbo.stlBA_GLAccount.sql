SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBA_GLAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBA_GLAccount](
	[stlBA_GLAccountID] [int] IDENTITY(1,1) NOT NULL,
	[GLAccount] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[msi] [bit] NOT NULL,
	[RDAccount] [bit] NOT NULL,
	[GPExpense] [bit] NOT NULL,
 CONSTRAINT [PK_stlBA_GLAccount] PRIMARY KEY CLUSTERED 
(
	[stlBA_GLAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_GLAccount_GLAcct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_GLAccount] ADD  CONSTRAINT [DF_stlBA_GLAccount_GLAcct]  DEFAULT ('') FOR [GLAccount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_GLAccount_msi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_GLAccount] ADD  CONSTRAINT [DF_stlBA_GLAccount_msi]  DEFAULT ((0)) FOR [msi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_GLAccount_RDAccount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_GLAccount] ADD  CONSTRAINT [DF_stlBA_GLAccount_RDAccount]  DEFAULT ((0)) FOR [RDAccount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBA_GLAccount_GPExpense]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBA_GLAccount] ADD  CONSTRAINT [DF_stlBA_GLAccount_GPExpense]  DEFAULT ((0)) FOR [GPExpense]
END

