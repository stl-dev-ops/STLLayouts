SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlOT_OvertimeTracking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MachineID] [int] NOT NULL,
	[PeriodID] [int] NOT NULL,
	[OT_Date] [date] NOT NULL,
	[Overtime] [tinyint] NOT NULL,
	[ReasonID] [int] NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlOT_OvertimeTracking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]') AND name = N'IX_stlOT_OvertimeTracking_OT_DateMachineIDPeriodID')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlOT_OvertimeTracking_OT_DateMachineIDPeriodID] ON [dbo].[stlOT_OvertimeTracking]
(
	[OT_Date] ASC,
	[MachineID] ASC,
	[PeriodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOT_OvertimeTracking_Overtime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOT_OvertimeTracking] ADD  CONSTRAINT [DF_stlOT_OvertimeTracking_Overtime]  DEFAULT ((0)) FOR [Overtime]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOT_OvertimeTracking_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOT_OvertimeTracking] ADD  CONSTRAINT [DF_stlOT_OvertimeTracking_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOT_OvertimeTracking_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOT_OvertimeTracking] ADD  CONSTRAINT [DF_stlOT_OvertimeTracking_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOT_OvertimeTracking_stlOT_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]'))
ALTER TABLE [dbo].[stlOT_OvertimeTracking]  WITH CHECK ADD  CONSTRAINT [FK_stlOT_OvertimeTracking_stlOT_Machines] FOREIGN KEY([MachineID])
REFERENCES [dbo].[stlOT_Machines] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOT_OvertimeTracking_stlOT_Machines]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]'))
ALTER TABLE [dbo].[stlOT_OvertimeTracking] CHECK CONSTRAINT [FK_stlOT_OvertimeTracking_stlOT_Machines]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOT_OvertimeTracking_stlOT_Periods]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]'))
ALTER TABLE [dbo].[stlOT_OvertimeTracking]  WITH CHECK ADD  CONSTRAINT [FK_stlOT_OvertimeTracking_stlOT_Periods] FOREIGN KEY([PeriodID])
REFERENCES [dbo].[stlOT_Periods] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOT_OvertimeTracking_stlOT_Periods]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]'))
ALTER TABLE [dbo].[stlOT_OvertimeTracking] CHECK CONSTRAINT [FK_stlOT_OvertimeTracking_stlOT_Periods]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOT_OvertimeTracking_stlOT_Reasons]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]'))
ALTER TABLE [dbo].[stlOT_OvertimeTracking]  WITH CHECK ADD  CONSTRAINT [FK_stlOT_OvertimeTracking_stlOT_Reasons] FOREIGN KEY([ReasonID])
REFERENCES [dbo].[stlOT_Reasons] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOT_OvertimeTracking_stlOT_Reasons]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOT_OvertimeTracking]'))
ALTER TABLE [dbo].[stlOT_OvertimeTracking] CHECK CONSTRAINT [FK_stlOT_OvertimeTracking_stlOT_Reasons]
