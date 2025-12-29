SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_workstep_run_output__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_workstep_run_output__](
	[production_flow_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[run_id] [int] NOT NULL,
	[output_id] [int] NOT NULL,
	[output_index_id] [int] NOT NULL,
	[resource_id] [int] NOT NULL,
	[resource_index_id] [int] NOT NULL,
	[resource_instance_id] [int] NOT NULL,
	[count] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_workstep_run_outputi0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[workstep_id] ASC,
	[run_id] ASC,
	[output_id] ASC,
	[output_index_id] ASC,
	[resource_index_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__run_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__run_id]  DEFAULT ((0)) FOR [run_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__output_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__output_id]  DEFAULT ((0)) FOR [output_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__output_index_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__output_index_id]  DEFAULT ((0)) FOR [output_index_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__resource_id]  DEFAULT ((0)) FOR [resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__resource_index_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__resource_index_id]  DEFAULT ((0)) FOR [resource_index_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__resource_instance_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__resource_instance_id]  DEFAULT ((0)) FOR [resource_instance_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_output__count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_output__] ADD  CONSTRAINT [DF_pf_workstep_run_output__count]  DEFAULT ((0)) FOR [count]
END

