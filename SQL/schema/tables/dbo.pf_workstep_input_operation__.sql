SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_workstep_input_operation__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_workstep_input_operation__](
	[production_flow_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[workstep_input_id] [int] NOT NULL,
	[workstep_input_index_id] [int] NOT NULL,
	[workstep_operation_id] [int] NOT NULL,
	[side] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_workstep_input_operationi0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[workstep_id] ASC,
	[workstep_input_id] ASC,
	[workstep_input_index_id] ASC,
	[workstep_operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_input_operation__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_input_operation__] ADD  CONSTRAINT [DF_pf_workstep_input_operation__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_input_operation__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_input_operation__] ADD  CONSTRAINT [DF_pf_workstep_input_operation__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_input_operation__workstep_input_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_input_operation__] ADD  CONSTRAINT [DF_pf_workstep_input_operation__workstep_input_id]  DEFAULT ((0)) FOR [workstep_input_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_input_operation__workstep_input_index_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_input_operation__] ADD  CONSTRAINT [DF_pf_workstep_input_operation__workstep_input_index_id]  DEFAULT ((0)) FOR [workstep_input_index_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_input_operation__workstep_operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_input_operation__] ADD  CONSTRAINT [DF_pf_workstep_input_operation__workstep_operation_id]  DEFAULT ((0)) FOR [workstep_operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_input_operation__side]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_input_operation__] ADD  CONSTRAINT [DF_pf_workstep_input_operation__side]  DEFAULT ('') FOR [side]
END

