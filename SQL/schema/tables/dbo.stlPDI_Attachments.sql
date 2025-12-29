SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_Attachments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_Attachments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[FileName] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_Attachments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Attachments_DisplayName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Attachments] ADD  CONSTRAINT [DF_stlPDI_Attachments_DisplayName]  DEFAULT ('') FOR [DisplayName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Attachments_FileName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Attachments] ADD  CONSTRAINT [DF_stlPDI_Attachments_FileName]  DEFAULT ('') FOR [FileName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Attachments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Attachments] ADD  CONSTRAINT [DF_stlPDI_Attachments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Attachments_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Attachments] ADD  CONSTRAINT [DF_stlPDI_Attachments_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_Attachments_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_Attachments] ADD  CONSTRAINT [DF_stlPDI_Attachments_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Attachments_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Attachments]'))
ALTER TABLE [dbo].[stlPDI_Attachments]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_Attachments_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_Attachments_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_Attachments]'))
ALTER TABLE [dbo].[stlPDI_Attachments] CHECK CONSTRAINT [FK_stlPDI_Attachments_stlPDI_ProductDevelopmentOrImprovement]
