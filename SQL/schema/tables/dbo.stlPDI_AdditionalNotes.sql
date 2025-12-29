SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_AdditionalNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_AdditionalNotes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[Notes] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Pinned] [tinyint] NOT NULL,
	[Hidden] [tinyint] NOT NULL,
	[ToBeCompleted] [datetime] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_AdditionalNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_AdditionalNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] ADD  CONSTRAINT [DF_stlPDI_AdditionalNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_AdditionalNotes_Pinned]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] ADD  CONSTRAINT [DF_stlPDI_AdditionalNotes_Pinned]  DEFAULT ((0)) FOR [Pinned]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_AdditionalNotes_Hide]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] ADD  CONSTRAINT [DF_stlPDI_AdditionalNotes_Hide]  DEFAULT ((0)) FOR [Hidden]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_AdditionalNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] ADD  CONSTRAINT [DF_stlPDI_AdditionalNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_AdditionalNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] ADD  CONSTRAINT [DF_stlPDI_AdditionalNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_AdditionalNotes_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] ADD  CONSTRAINT [DF_stlPDI_AdditionalNotes_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_AdditionalNotes_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] ADD  CONSTRAINT [DF_stlPDI_AdditionalNotes_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_AdditionalNotes_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_AdditionalNotes]'))
ALTER TABLE [dbo].[stlPDI_AdditionalNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_AdditionalNotes_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_AdditionalNotes_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_AdditionalNotes]'))
ALTER TABLE [dbo].[stlPDI_AdditionalNotes] CHECK CONSTRAINT [FK_stlPDI_AdditionalNotes_stlPDI_ProductDevelopmentOrImprovement]
