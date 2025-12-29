SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_value_input_resource__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_value_input_resource__](
	[value_set_id] [int] NOT NULL,
	[device_id] [int] NULL,
	[workstep_template_id] [int] NULL,
	[operation_id] [int] NULL,
	[resource_class_id] [int] NOT NULL,
	[amount] [float] NULL,
	[per_amount] [float] NULL,
	[cost_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[cost] [float] NULL,
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[amount_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[amount_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[amount_pct] [float] NULL,
	[per_amount_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[per_amount_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [pf_param_value_input_resourcei0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_input_resource__value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_input_resource__] ADD  CONSTRAINT [DF_pf_param_value_input_resource__value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_input_resource__resource_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_input_resource__] ADD  CONSTRAINT [DF_pf_param_value_input_resource__resource_class_id]  DEFAULT ((0)) FOR [resource_class_id]
END

