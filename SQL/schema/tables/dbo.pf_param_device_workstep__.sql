SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_device_workstep__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_device_workstep__](
	[device_id] [int] NOT NULL,
	[workstep_template_id] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[default_] [bit] NOT NULL,
 CONSTRAINT [pf_param_device_workstepi0] PRIMARY KEY CLUSTERED 
(
	[device_id] ASC,
	[workstep_template_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device_workstep__device_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device_workstep__] ADD  CONSTRAINT [DF_pf_param_device_workstep__device_id]  DEFAULT ((0)) FOR [device_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device_workstep__workstep_template_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device_workstep__] ADD  CONSTRAINT [DF_pf_param_device_workstep__workstep_template_id]  DEFAULT ((0)) FOR [workstep_template_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device_workstep__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device_workstep__] ADD  CONSTRAINT [DF_pf_param_device_workstep__default_]  DEFAULT ((0)) FOR [default_]
END

