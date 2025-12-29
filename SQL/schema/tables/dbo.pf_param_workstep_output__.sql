SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_workstep_output__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_workstep_output__](
	[workstep_template_id] [int] NOT NULL,
	[output_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[resource_class_id] [int] NOT NULL,
	[min_count] [int] NOT NULL,
	[max_count] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[blocked] [bit] NOT NULL,
 CONSTRAINT [pf_param_workstep_outputi0] PRIMARY KEY CLUSTERED 
(
	[workstep_template_id] ASC,
	[output_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_output__workstep_template_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_output__] ADD  CONSTRAINT [DF_pf_param_workstep_output__workstep_template_id]  DEFAULT ((0)) FOR [workstep_template_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_output__output_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_output__] ADD  CONSTRAINT [DF_pf_param_workstep_output__output_id]  DEFAULT ((0)) FOR [output_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_output__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_output__] ADD  CONSTRAINT [DF_pf_param_workstep_output__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_output__resource_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_output__] ADD  CONSTRAINT [DF_pf_param_workstep_output__resource_class_id]  DEFAULT ((0)) FOR [resource_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_output__min_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_output__] ADD  CONSTRAINT [DF_pf_param_workstep_output__min_count]  DEFAULT ((1)) FOR [min_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_output__max_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_output__] ADD  CONSTRAINT [DF_pf_param_workstep_output__max_count]  DEFAULT ((1)) FOR [max_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_output__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_output__] ADD  CONSTRAINT [DF_pf_param_workstep_output__blocked]  DEFAULT ((0)) FOR [blocked]
END

