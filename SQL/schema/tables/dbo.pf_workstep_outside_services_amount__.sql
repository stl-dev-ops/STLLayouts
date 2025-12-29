SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_workstep_outside_services_amount__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_workstep_outside_services_amount__](
	[production_flow_id] [int] NOT NULL,
	[value_set_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[price_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[duration] [bigint] NOT NULL,
	[fixed_price] [float] NOT NULL,
	[unit_price] [float] NOT NULL,
	[min_price] [float] NOT NULL,
	[transport_cost] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_workstep_outside_services_amounti0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[value_set_id] ASC,
	[workstep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__price_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__price_type]  DEFAULT ('') FOR [price_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__duration]  DEFAULT ((0)) FOR [duration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__fixed_price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__fixed_price]  DEFAULT ((0)) FOR [fixed_price]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__unit_price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__unit_price]  DEFAULT ((0)) FOR [unit_price]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__min_price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__min_price]  DEFAULT ((0)) FOR [min_price]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_outside_services_amount__transport_cost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_outside_services_amount__] ADD  CONSTRAINT [DF_pf_workstep_outside_services_amount__transport_cost]  DEFAULT ((0)) FOR [transport_cost]
END

