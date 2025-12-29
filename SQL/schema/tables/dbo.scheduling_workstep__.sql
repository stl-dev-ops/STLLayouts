SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_workstep__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_workstep__](
	[job_id] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[workstep_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[delegated] [int] NOT NULL,
	[types] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[details] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[device] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[status] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[availability] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[registered_good_amount] [float] NOT NULL,
	[registered_good_cycle] [float] NOT NULL,
	[registered_waste_amount] [float] NOT NULL,
	[registered_waste_cycle] [float] NOT NULL,
	[planned_good_amount] [float] NOT NULL,
	[planned_waste_amount] [float] NOT NULL,
	[planned_setup_duration] [float] NOT NULL,
	[planned_total_duration] [float] NOT NULL,
	[planned_start] [datetime2](3) NOT NULL,
	[planned_end] [datetime2](3) NOT NULL,
	[last_run_start] [datetime2](3) NOT NULL,
	[last_run_end] [datetime2](3) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_workstepi0] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[workstep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__job_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__job_id]  DEFAULT ('') FOR [job_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__workstep_id]  DEFAULT ('') FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__delegated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__delegated]  DEFAULT ((0)) FOR [delegated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__types]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__types]  DEFAULT ('') FOR [types]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__details]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__details]  DEFAULT ('') FOR [details]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__device]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__device]  DEFAULT ('') FOR [device]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__comment]  DEFAULT ('') FOR [comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__status]  DEFAULT ('') FOR [status]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__availability]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__availability]  DEFAULT ('') FOR [availability]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__registered_good_amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__registered_good_amount]  DEFAULT ((0)) FOR [registered_good_amount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__registered_good_cycle]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__registered_good_cycle]  DEFAULT ((0)) FOR [registered_good_cycle]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__registered_waste_amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__registered_waste_amount]  DEFAULT ((0)) FOR [registered_waste_amount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__registered_waste_cycle]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__registered_waste_cycle]  DEFAULT ((0)) FOR [registered_waste_cycle]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__planned_good_amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__planned_good_amount]  DEFAULT ((0)) FOR [planned_good_amount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__planned_waste_amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__planned_waste_amount]  DEFAULT ((0)) FOR [planned_waste_amount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__planned_setup_duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__planned_setup_duration]  DEFAULT ((0)) FOR [planned_setup_duration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__planned_total_duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__planned_total_duration]  DEFAULT ((0)) FOR [planned_total_duration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__planned_start]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__planned_start]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [planned_start]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__planned_end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__planned_end]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [planned_end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__last_run_start]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__last_run_start]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [last_run_start]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep__last_run_end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep__] ADD  CONSTRAINT [DF_scheduling_workstep__last_run_end]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [last_run_end]
END

