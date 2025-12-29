SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQAD_ColorCodeDefaultDocuments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[klcodref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[FileNameID] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQAD_ColorCodeDefaultDocuments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQAD_ColorCodeDefaultDocuments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments] ADD  CONSTRAINT [DF_stlQAD_ColorCodeDefaultDocuments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQAD_ColorCodeDefaultDocuments_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments] ADD  CONSTRAINT [DF_stlQAD_ColorCodeDefaultDocuments_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQAD_ColorCodeDefaultDocuments_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments] ADD  CONSTRAINT [DF_stlQAD_ColorCodeDefaultDocuments_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQAD_ColorCodeDefaultDocuments_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments] ADD  CONSTRAINT [DF_stlQAD_ColorCodeDefaultDocuments_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQAD_ColorCodeDefaultDocuments_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments] ADD  CONSTRAINT [DF_stlQAD_ColorCodeDefaultDocuments_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQAD_ColorCodeDefaultDocuments_klrcod__]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQAD_ColorCodeDefaultDocuments]'))
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments]  WITH CHECK ADD  CONSTRAINT [FK_stlQAD_ColorCodeDefaultDocuments_klrcod__] FOREIGN KEY([klcodref])
REFERENCES [dbo].[klrcod__] ([klcodref])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQAD_ColorCodeDefaultDocuments_klrcod__]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQAD_ColorCodeDefaultDocuments]'))
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments] CHECK CONSTRAINT [FK_stlQAD_ColorCodeDefaultDocuments_klrcod__]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQAD_ColorCodeDefaultDocuments_stlQAD_Documents]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQAD_ColorCodeDefaultDocuments]'))
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments]  WITH CHECK ADD  CONSTRAINT [FK_stlQAD_ColorCodeDefaultDocuments_stlQAD_Documents] FOREIGN KEY([FileNameID])
REFERENCES [dbo].[stlQAD_Documents] ([FileNameID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQAD_ColorCodeDefaultDocuments_stlQAD_Documents]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQAD_ColorCodeDefaultDocuments]'))
ALTER TABLE [dbo].[stlQAD_ColorCodeDefaultDocuments] CHECK CONSTRAINT [FK_stlQAD_ColorCodeDefaultDocuments_stlQAD_Documents]
