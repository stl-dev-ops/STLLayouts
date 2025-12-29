SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSamplesSent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSamplesSent](
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[SalesRepID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[UpFrontContractDate] [date] NULL,
	[ApprovalStatusID] [tinyint] NULL,
	[ApprovalStatusChangedDate] [date] NULL,
 CONSTRAINT [PK_stlSamplesSent] PRIMARY KEY CLUSTERED 
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSamplesSent_stlSamplesApprovalStatusTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSamplesSent]'))
ALTER TABLE [dbo].[stlSamplesSent]  WITH CHECK ADD  CONSTRAINT [FK_stlSamplesSent_stlSamplesApprovalStatusTypes] FOREIGN KEY([ApprovalStatusID])
REFERENCES [dbo].[stlSamplesApprovalStatusTypes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSamplesSent_stlSamplesApprovalStatusTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSamplesSent]'))
ALTER TABLE [dbo].[stlSamplesSent] CHECK CONSTRAINT [FK_stlSamplesSent_stlSamplesApprovalStatusTypes]
