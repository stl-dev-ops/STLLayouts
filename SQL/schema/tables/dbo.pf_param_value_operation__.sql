SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_value_operation__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_value_operation__](
	[value_set_id] [int] NOT NULL,
	[device_id] [int] NULL,
	[workstep_template_id] [int] NULL,
	[operation_id] [int] NULL,
	[production_speed_value] [float] NULL,
	[production_speed_duration] [bigint] NULL,
	[production_waste_pct] [float] NULL,
	[pre_production_rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[pre_production_kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[production_rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[production_kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[post_production_rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[post_production_kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[pre_production_duration_first] [bigint] NULL,
	[pre_production_duration_next] [bigint] NULL,
	[pre_production_waste_first] [float] NULL,
	[pre_production_waste_first_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[pre_production_waste_first_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[pre_production_waste_next] [float] NULL,
	[pre_production_waste_next_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[pre_production_waste_next_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[production_speed_value_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[production_speed_value_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[post_production_duration_previous] [bigint] NULL,
	[post_production_duration_last] [bigint] NULL,
	[post_production_waste_previous] [float] NULL,
	[post_production_waste_previous_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[post_production_waste_previous_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[post_production_waste_last] [float] NULL,
	[post_production_waste_last_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[post_production_waste_last_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[outside_services_price_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[outside_services_duration] [bigint] NULL,
	[outside_services_fixed_price] [float] NULL,
	[outside_services_unit_price] [float] NULL,
	[outside_services_min_price] [float] NULL,
	[outside_services_transport_cost] [float] NULL,
 CONSTRAINT [pf_param_value_operationi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_operation__value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_operation__] ADD  CONSTRAINT [DF_pf_param_value_operation__value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

