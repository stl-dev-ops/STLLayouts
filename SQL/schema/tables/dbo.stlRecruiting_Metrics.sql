SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Metrics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Metrics](
	[MetricID] [int] IDENTITY(1,1) NOT NULL,
	[JobOpeningID] [int] NULL,
	[MetricType] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Value] [decimal](15, 2) NOT NULL,
	[CalculatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Metrics] PRIMARY KEY CLUSTERED 
(
	[MetricID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Metrics]') AND name = N'idx_stlRecruiting_Metrics_JobOpeningID')
CREATE NONCLUSTERED INDEX [idx_stlRecruiting_Metrics_JobOpeningID] ON [dbo].[stlRecruiting_Metrics]
(
	[JobOpeningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Calcu__6665F690]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Metrics] ADD  DEFAULT (getdate()) FOR [CalculatedAt]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__stlRecrui__JobOp__675A1AC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Metrics]'))
ALTER TABLE [dbo].[stlRecruiting_Metrics]  WITH CHECK ADD  CONSTRAINT [FK__stlRecrui__JobOp__675A1AC9] FOREIGN KEY([JobOpeningID])
REFERENCES [dbo].[stlRecruiting_JobOpenings] ([JobOpeningID])
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__stlRecrui__JobOp__675A1AC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Metrics]'))
ALTER TABLE [dbo].[stlRecruiting_Metrics] CHECK CONSTRAINT [FK__stlRecrui__JobOp__675A1AC9]
