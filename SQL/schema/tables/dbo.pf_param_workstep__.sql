SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_workstep__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_workstep__](
	[workstep_template_id] [int] NOT NULL,
	[blocked] [bit] NOT NULL,
	[removed] [bit] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[workstep_class_id] [int] NOT NULL,
	[calculation_source] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[workstep_formula_class_id] [int] NULL,
	[required_1by1] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_workstepi0] PRIMARY KEY CLUSTERED 
(
	[workstep_template_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__workstep_template_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__workstep_template_id]  DEFAULT ((0)) FOR [workstep_template_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__blocked]  DEFAULT ((0)) FOR [blocked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__removed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__removed]  DEFAULT ((0)) FOR [removed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__workstep_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__workstep_class_id]  DEFAULT ((0)) FOR [workstep_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__calculation_source]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__calculation_source]  DEFAULT ('input') FOR [calculation_source]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep__required_1by1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep__] ADD  CONSTRAINT [DF_pf_param_workstep__required_1by1]  DEFAULT ((0)) FOR [required_1by1]
END

