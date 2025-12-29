SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_workstep_operation__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_workstep_operation__](
	[workstep_template_id] [int] NOT NULL,
	[workstep_operation_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[operation_id] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_workstep_operationi0] PRIMARY KEY CLUSTERED 
(
	[workstep_template_id] ASC,
	[workstep_operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_operation__workstep_template_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_operation__] ADD  CONSTRAINT [DF_pf_param_workstep_operation__workstep_template_id]  DEFAULT ((0)) FOR [workstep_template_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_operation__workstep_operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_operation__] ADD  CONSTRAINT [DF_pf_param_workstep_operation__workstep_operation_id]  DEFAULT ((0)) FOR [workstep_operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_operation__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_operation__] ADD  CONSTRAINT [DF_pf_param_workstep_operation__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_operation__operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_operation__] ADD  CONSTRAINT [DF_pf_param_workstep_operation__operation_id]  DEFAULT ((0)) FOR [operation_id]
END

