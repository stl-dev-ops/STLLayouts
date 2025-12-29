SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlNIP_EmployeeAssignments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[PositionID] [int] NULL,
	[ShiftID] [int] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlNIP_EmployeeAssignments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_EmployeeAssignments_ShiftID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] ADD  CONSTRAINT [DF_stlNIP_EmployeeAssignments_ShiftID]  DEFAULT ((1)) FOR [ShiftID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_EmployeeAssignments_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] ADD  CONSTRAINT [DF_stlNIP_EmployeeAssignments_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_EmployeeAssignments_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] ADD  CONSTRAINT [DF_stlNIP_EmployeeAssignments_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_EmployeeAssignments_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] ADD  CONSTRAINT [DF_stlNIP_EmployeeAssignments_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_EmployeeAssignments_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] ADD  CONSTRAINT [DF_stlNIP_EmployeeAssignments_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_EmployeeAssignments_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] ADD  CONSTRAINT [DF_stlNIP_EmployeeAssignments_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlNIP_EmployeeAssignments_stlNIP_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignments]'))
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments]  WITH CHECK ADD  CONSTRAINT [FK_stlNIP_EmployeeAssignments_stlNIP_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[stlNIP_Department] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlNIP_EmployeeAssignments_stlNIP_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignments]'))
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] CHECK CONSTRAINT [FK_stlNIP_EmployeeAssignments_stlNIP_Department]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlNIP_EmployeeAssignments_stlNIP_Position]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignments]'))
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments]  WITH CHECK ADD  CONSTRAINT [FK_stlNIP_EmployeeAssignments_stlNIP_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[stlNIP_Position] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlNIP_EmployeeAssignments_stlNIP_Position]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignments]'))
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] CHECK CONSTRAINT [FK_stlNIP_EmployeeAssignments_stlNIP_Position]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlNIP_EmployeeAssignments_stlNIP_Shift]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignments]'))
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments]  WITH CHECK ADD  CONSTRAINT [FK_stlNIP_EmployeeAssignments_stlNIP_Shift] FOREIGN KEY([ShiftID])
REFERENCES [dbo].[stlNIP_Shift] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlNIP_EmployeeAssignments_stlNIP_Shift]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlNIP_EmployeeAssignments]'))
ALTER TABLE [dbo].[stlNIP_EmployeeAssignments] CHECK CONSTRAINT [FK_stlNIP_EmployeeAssignments_stlNIP_Shift]
