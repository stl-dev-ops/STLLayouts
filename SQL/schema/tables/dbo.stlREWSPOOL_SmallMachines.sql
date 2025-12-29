SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_SmallMachines]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_SmallMachines](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[SpliceTypeID] [int] NULL,
	[Core_art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[NotesID] [int] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRS_SmallMachines] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_SmallMachines]') AND name = N'IX_stlREWSPOOL_SmallMachines')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlREWSPOOL_SmallMachines] ON [dbo].[stlREWSPOOL_SmallMachines]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachines_Core_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachines_Core_art__ref]  DEFAULT ('') FOR [Core_art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachines_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachines_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachines_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachines_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachines_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachines_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachines_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachines_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_Notes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_SmallMachines]'))
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_Notes] FOREIGN KEY([NotesID])
REFERENCES [dbo].[stlREWSPOOL_Notes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_Notes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_SmallMachines]'))
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines] CHECK CONSTRAINT [FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_Notes]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_SpliceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_SmallMachines]'))
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_SpliceType] FOREIGN KEY([SpliceTypeID])
REFERENCES [dbo].[stlREWSPOOL_SpliceType] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_SpliceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_SmallMachines]'))
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachines] CHECK CONSTRAINT [FK_stlREWSPOOL_SmallMachines_stlREWSPOOL_SpliceType]
