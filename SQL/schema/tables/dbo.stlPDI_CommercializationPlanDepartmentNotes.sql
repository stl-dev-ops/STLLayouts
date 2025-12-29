SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanDepartmentNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes](
	[DepartmentNotesID] [int] IDENTITY(1,1) NOT NULL,
	[CommercializationPlanID] [int] NOT NULL,
	[NoteOrder] [int] NULL,
	[MachineID] [int] NULL,
	[Notes] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_CommercializationPlanDepartmentNotes_1] PRIMARY KEY CLUSTERED 
(
	[DepartmentNotesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlanDepartmentNotes_Notes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlanDepartmentNotes_Notes]  DEFAULT ('') FOR [Notes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlanDepartmentNotes_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlanDepartmentNotes_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlanDepartmentNotes_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlanDepartmentNotes_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlanDepartmentNotes_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlanDepartmentNotes_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlanDepartmentNotes_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlanDepartmentNotes_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlanDepartmentNotes_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlanDepartmentNotes_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_CommercializationPlan]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanDepartmentNotes]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_CommercializationPlan] FOREIGN KEY([CommercializationPlanID])
REFERENCES [dbo].[stlPDI_CommercializationPlan] ([CommercializationPlanID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_CommercializationPlan]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanDepartmentNotes]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_CommercializationPlan]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanDepartmentNotes]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_Machines] FOREIGN KEY([MachineID])
REFERENCES [dbo].[stlPDI_Machines] ([MachineID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanDepartmentNotes]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_Machines]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_SortOrders]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanDepartmentNotes]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_SortOrders] FOREIGN KEY([NoteOrder])
REFERENCES [dbo].[stlPDI_SortOrders] ([OrderID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_SortOrders]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanDepartmentNotes]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanDepartmentNotes] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanDepartmentNotes_stlPDI_SortOrders]
