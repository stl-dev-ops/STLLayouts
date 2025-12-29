SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_Cards]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_Cards](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[MachineID] [int] NOT NULL,
	[SpliceTypeID] [int] NULL,
	[Core_art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[NotesID] [int] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlREWSPOOL_SRC_Cards] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_Cards_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Cards] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_Cards_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_Cards_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Cards] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_Cards_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_Cards_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Cards] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_Cards_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SRC_Cards_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_Cards] ADD  CONSTRAINT [DF_stlREWSPOOL_SRC_Cards_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_Cards_stlREWSPOOL_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_Cards]'))
ALTER TABLE [dbo].[stlREWSPOOL_Cards]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_Cards_stlREWSPOOL_Machines] FOREIGN KEY([MachineID])
REFERENCES [dbo].[stlREWSPOOL_Machines] ([MachineID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_Cards_stlREWSPOOL_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_Cards]'))
ALTER TABLE [dbo].[stlREWSPOOL_Cards] CHECK CONSTRAINT [FK_stlREWSPOOL_Cards_stlREWSPOOL_Machines]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_Cards_stlREWSPOOL_SpliceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_Cards]'))
ALTER TABLE [dbo].[stlREWSPOOL_Cards]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_Cards_stlREWSPOOL_SpliceType] FOREIGN KEY([SpliceTypeID])
REFERENCES [dbo].[stlREWSPOOL_SpliceType] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_Cards_stlREWSPOOL_SpliceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_Cards]'))
ALTER TABLE [dbo].[stlREWSPOOL_Cards] CHECK CONSTRAINT [FK_stlREWSPOOL_Cards_stlREWSPOOL_SpliceType]
