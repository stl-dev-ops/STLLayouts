SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_workstep_formula__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_workstep_formula__](
	[workstep_formula_id] [int] NOT NULL,
	[workstep_formula_class_id] [int] NOT NULL,
	[value_set_id] [int] NOT NULL,
	[calculation] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_workstep_formulai0] PRIMARY KEY CLUSTERED 
(
	[workstep_formula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_workstep_formula__]') AND name = N'pf_param_workstep_formulai1')
CREATE UNIQUE NONCLUSTERED INDEX [pf_param_workstep_formulai1] ON [dbo].[pf_param_workstep_formula__]
(
	[workstep_formula_class_id] ASC,
	[value_set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula__workstep_formula_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula__] ADD  CONSTRAINT [DF_pf_param_workstep_formula__workstep_formula_id]  DEFAULT ((0)) FOR [workstep_formula_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula__workstep_formula_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula__] ADD  CONSTRAINT [DF_pf_param_workstep_formula__workstep_formula_class_id]  DEFAULT ((0)) FOR [workstep_formula_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula__value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula__] ADD  CONSTRAINT [DF_pf_param_workstep_formula__value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_workstep_formula__calculation]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_workstep_formula__] ADD  CONSTRAINT [DF_pf_param_workstep_formula__calculation]  DEFAULT ('') FOR [calculation]
END

