SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses](
	[ManufacturingProcessID] [int] IDENTITY(1,1) NOT NULL,
	[CommercializationPlanID] [int] NOT NULL,
	[ManufacturingOrder] [int] NULL,
	[MachineID] [int] NULL,
	[MachineNotes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Coatings] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Dies] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Lineal] [int] NULL,
	[Slitting] [int] NULL,
	[EdgeTrimRemoval] [int] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_CommercializationPlanManufacturingProcesses] PRIMARY KEY CLUSTERED 
(
	[ManufacturingProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_MachineNotes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_MachineNotes]  DEFAULT ('') FOR [MachineNotes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_Coatings]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_Coatings]  DEFAULT ('') FOR [Coatings]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_Dies]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_Dies]  DEFAULT ('') FOR [Dies]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationManufacturingProcesses_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] ADD  CONSTRAINT [DF_stlPDI_CommercializationManufacturingProcesses_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationManufacturingProcesses_stlPDI_CommercializationPlan]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationManufacturingProcesses_stlPDI_CommercializationPlan] FOREIGN KEY([CommercializationPlanID])
REFERENCES [dbo].[stlPDI_CommercializationPlan] ([CommercializationPlanID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationManufacturingProcesses_stlPDI_CommercializationPlan]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] CHECK CONSTRAINT [FK_stlPDI_CommercializationManufacturingProcesses_stlPDI_CommercializationPlan]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_Machines] FOREIGN KEY([MachineID])
REFERENCES [dbo].[stlPDI_Machines] ([MachineID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_Machines]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_SortOrders]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_SortOrders] FOREIGN KEY([ManufacturingOrder])
REFERENCES [dbo].[stlPDI_SortOrders] ([OrderID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_SortOrders]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_SortOrders]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo] FOREIGN KEY([Lineal])
REFERENCES [dbo].[stlPDI_YesNo] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo1] FOREIGN KEY([Slitting])
REFERENCES [dbo].[stlPDI_YesNo] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo1]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo2] FOREIGN KEY([EdgeTrimRemoval])
REFERENCES [dbo].[stlPDI_YesNo] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlanManufacturingProcesses]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlanManufacturingProcesses] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlanManufacturingProcesses_stlPDI_YesNo2]
