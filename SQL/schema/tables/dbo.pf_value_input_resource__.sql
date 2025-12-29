SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_value_input_resource__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_value_input_resource__](
	[production_flow_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[workstep_operation_id] [int] NOT NULL,
	[input_id] [int] NOT NULL,
	[input_index_id] [int] NOT NULL,
	[amount] [float] NULL,
	[amount_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[amount_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[amount_pct] [float] NULL,
	[per_amount] [float] NULL,
	[per_amount_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[per_amount_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[cost_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[cost] [float] NULL,
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_value_input_resourcei0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[workstep_id] ASC,
	[workstep_operation_id] ASC,
	[input_id] ASC,
	[input_index_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_input_resource__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_input_resource__] ADD  CONSTRAINT [DF_pf_value_input_resource__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_input_resource__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_input_resource__] ADD  CONSTRAINT [DF_pf_value_input_resource__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_input_resource__workstep_operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_input_resource__] ADD  CONSTRAINT [DF_pf_value_input_resource__workstep_operation_id]  DEFAULT ((0)) FOR [workstep_operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_input_resource__input_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_input_resource__] ADD  CONSTRAINT [DF_pf_value_input_resource__input_id]  DEFAULT ((0)) FOR [input_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_input_resource__input_index_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_input_resource__] ADD  CONSTRAINT [DF_pf_value_input_resource__input_index_id]  DEFAULT ((0)) FOR [input_index_id]
END

