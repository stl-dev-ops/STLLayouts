SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CoatingCardRecordValues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[TemplateID] [int] NOT NULL,
	[Value] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
 CONSTRAINT [PK_stlCC_CoatingCardRecordValues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRecordValues_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRecordValues] ADD  CONSTRAINT [DF_stlCC_CoatingCardRecordValues_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRecordValues_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRecordValues] ADD  CONSTRAINT [DF_stlCC_CoatingCardRecordValues_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRecordValues_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRecordValues] ADD  CONSTRAINT [DF_stlCC_CoatingCardRecordValues_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRecordValues_CreatedBy1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRecordValues] ADD  CONSTRAINT [DF_stlCC_CoatingCardRecordValues_CreatedBy1]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRecordValues_Created1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRecordValues] ADD  CONSTRAINT [DF_stlCC_CoatingCardRecordValues_Created1]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRecordValues_stlCC_CoatingCardRecordTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordValues]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRecordValues]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRecordValues_stlCC_CoatingCardRecordTemplate] FOREIGN KEY([TemplateID])
REFERENCES [dbo].[stlCC_CoatingCardRecordTemplate] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRecordValues_stlCC_CoatingCardRecordTemplate]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRecordValues]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRecordValues] CHECK CONSTRAINT [FK_stlCC_CoatingCardRecordValues_stlCC_CoatingCardRecordTemplate]
