SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_workstep__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_workstep__](
	[production_flow_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[workstep_template_id] [int] NOT NULL,
	[device_id] [int] NULL,
	[execution_sequence] [int] NOT NULL,
	[instructions] [varchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[main_workstep] [bit] NOT NULL,
	[unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[waste_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[waste_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[dimension_x] [float] NULL,
	[dimension_x_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[dimension_y] [float] NULL,
	[dimension_y_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_workstepi0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[workstep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep__] ADD  CONSTRAINT [DF_pf_workstep__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep__] ADD  CONSTRAINT [DF_pf_workstep__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep__] ADD  CONSTRAINT [DF_pf_workstep__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep__workstep_template_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep__] ADD  CONSTRAINT [DF_pf_workstep__workstep_template_id]  DEFAULT ((0)) FOR [workstep_template_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep__execution_sequence]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep__] ADD  CONSTRAINT [DF_pf_workstep__execution_sequence]  DEFAULT ((0)) FOR [execution_sequence]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep__instructions]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep__] ADD  CONSTRAINT [DF_pf_workstep__instructions]  DEFAULT ('') FOR [instructions]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep__main_workstep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep__] ADD  CONSTRAINT [DF_pf_workstep__main_workstep]  DEFAULT ((0)) FOR [main_workstep]
END

