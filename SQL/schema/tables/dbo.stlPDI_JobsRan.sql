SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_JobsRan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_JobsRan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[TimesFellOffPress] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_Jobs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Jobs_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_JobsRan] ADD  CONSTRAINT [DF_stlPDI_Jobs_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_JobsRan_TimesFellOffPress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_JobsRan] ADD  CONSTRAINT [DF_stlPDI_JobsRan_TimesFellOffPress]  DEFAULT ((0)) FOR [TimesFellOffPress]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Jobs_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_JobsRan] ADD  CONSTRAINT [DF_stlPDI_Jobs_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Jobs_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_JobsRan] ADD  CONSTRAINT [DF_stlPDI_Jobs_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Jobs_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_JobsRan] ADD  CONSTRAINT [DF_stlPDI_Jobs_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Jobs_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_JobsRan]'))
ALTER TABLE [dbo].[stlPDI_JobsRan]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_Jobs_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Jobs_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_JobsRan]'))
ALTER TABLE [dbo].[stlPDI_JobsRan] CHECK CONSTRAINT [FK_stlPDI_Jobs_stlPDI_ProductDevelopmentOrImprovement]
