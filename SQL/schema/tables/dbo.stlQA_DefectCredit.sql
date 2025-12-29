SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQA_DefectCredit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQA_DefectCredit](
	[stlQA_DefectCreditID] [int] IDENTITY(1,1) NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[creditDt] [datetime] NOT NULL,
	[creditAmount] [money] NOT NULL,
	[lastUpdate] [datetime] NOT NULL,
	[insertDt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlQA_DefectCredit] PRIMARY KEY CLUSTERED 
(
	[stlQA_DefectCreditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCredit_kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCredit] ADD  CONSTRAINT [DF_stlQA_DefectCredit_kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCredit_kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCredit] ADD  CONSTRAINT [DF_stlQA_DefectCredit_kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCredit_naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCredit] ADD  CONSTRAINT [DF_stlQA_DefectCredit_naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCredit_creditDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCredit] ADD  CONSTRAINT [DF_stlQA_DefectCredit_creditDt]  DEFAULT (getdate()) FOR [creditDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCredit_lastUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCredit] ADD  CONSTRAINT [DF_stlQA_DefectCredit_lastUpdate]  DEFAULT (getdate()) FOR [lastUpdate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCredit_insertDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCredit] ADD  CONSTRAINT [DF_stlQA_DefectCredit_insertDt]  DEFAULT (getdate()) FOR [insertDt]
END

