SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_workstep_formula_class__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_workstep_formula_class__](
	[workstep_formula_class_id] [int] NOT NULL,
	[blocked] [bit] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_workstep_formula_classi0] PRIMARY KEY CLUSTERED 
(
	[workstep_formula_class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula_class__workstep_formula_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula_class__] ADD  CONSTRAINT [DF_pf_param_workstep_formula_class__workstep_formula_class_id]  DEFAULT ((0)) FOR [workstep_formula_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula_class__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula_class__] ADD  CONSTRAINT [DF_pf_param_workstep_formula_class__blocked]  DEFAULT ((0)) FOR [blocked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula_class__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula_class__] ADD  CONSTRAINT [DF_pf_param_workstep_formula_class__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula_class__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula_class__] ADD  CONSTRAINT [DF_pf_param_workstep_formula_class__description]  DEFAULT ('') FOR [description]
END

