SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQA_DefectCreditDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQA_DefectCreditDetail](
	[stlQA_DefectCreditDetailID] [int] IDENTITY(1,1) NOT NULL,
	[stlQA_DefectCreditID] [int] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lastUpdate] [datetime] NOT NULL,
	[insertDt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlQA_DefectCreditDetail] PRIMARY KEY CLUSTERED 
(
	[stlQA_DefectCreditDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCreditDetail_stlQA_DefectCreditID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCreditDetail] ADD  CONSTRAINT [DF_stlQA_DefectCreditDetail_stlQA_DefectCreditID]  DEFAULT ((0)) FOR [stlQA_DefectCreditID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCreditDetail_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCreditDetail] ADD  CONSTRAINT [DF_stlQA_DefectCreditDetail_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCreditDetail_lastUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCreditDetail] ADD  CONSTRAINT [DF_stlQA_DefectCreditDetail_lastUpdate]  DEFAULT (getdate()) FOR [lastUpdate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_DefectCreditDetail_insertDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_DefectCreditDetail] ADD  CONSTRAINT [DF_stlQA_DefectCreditDetail_insertDt]  DEFAULT (getdate()) FOR [insertDt]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQA_DefectCreditDetail_stlQA_DefectCredit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQA_DefectCreditDetail]'))
ALTER TABLE [dbo].[stlQA_DefectCreditDetail]  WITH CHECK ADD  CONSTRAINT [FK_stlQA_DefectCreditDetail_stlQA_DefectCredit] FOREIGN KEY([stlQA_DefectCreditID])
REFERENCES [dbo].[stlQA_DefectCredit] ([stlQA_DefectCreditID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQA_DefectCreditDetail_stlQA_DefectCredit]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQA_DefectCreditDetail]'))
ALTER TABLE [dbo].[stlQA_DefectCreditDetail] CHECK CONSTRAINT [FK_stlQA_DefectCreditDetail_stlQA_DefectCredit]
