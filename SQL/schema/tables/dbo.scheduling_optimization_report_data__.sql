SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_optimization_report_data__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_optimization_report_data__](
	[scheduling_optimization_id] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[scheduling_optimization_report_data_id] [int] NOT NULL,
	[report_data_time] [datetime2](3) NOT NULL,
	[response_code] [int] NOT NULL,
	[stage_nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_number_of_days_future] [int] NOT NULL,
	[param_number_of_days_past] [int] NOT NULL,
	[param_frozen_hours] [int] NOT NULL,
	[param_start_after_x_minutes] [int] NOT NULL,
	[param_slack_capacity] [int] NOT NULL,
	[param_max_compute_time] [int] NOT NULL,
	[param_extra_hours_delivery] [int] NOT NULL,
	[param_max_weeks] [int] NOT NULL,
	[param_granularity] [int] NOT NULL,
	[param_logical_order_job_percentage] [float] NOT NULL,
	[param_solver_planning] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_gain_calculation] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_availability_resources] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_availability_resources_tools] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_apply_gains] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_unpin_job_actions] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_strong_machine] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_high_memory] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_ignore_linked_actions] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_ignore_waiting_times_linked_actions] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_soft_pin] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_logical_order_stage] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_original_number_of_late_jobs] [int] NOT NULL,
	[kpi_original_number_of_past_due_jobs] [int] NOT NULL,
	[kpi_original_percentage_of_late_jobs] [float] NOT NULL,
	[kpi_original_number_of_jobs_with_misorderings] [int] NOT NULL,
	[kpi_original_percentage_of_jobs_with_misorderings] [float] NOT NULL,
	[kpi_original_number_of_machines_with_overlaps] [int] NOT NULL,
	[kpi_original_percentage_of_machines_with_overlaps] [float] NOT NULL,
	[kpi_original_number_of_late_minutes] [int] NOT NULL,
	[kpi_original_number_of_resources_with_overconsumption] [int] NOT NULL,
	[kpi_original_percentage_of_resources_with_overconsumption] [float] NOT NULL,
	[kpi_original_total_setup_time] [int] NOT NULL,
	[kpi_original_overlap_scheduling_machines] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_original_gain_scheduling_machines] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_original_overconsumption_of_resources] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_recalc_number_of_late_jobs] [int] NOT NULL,
	[kpi_recalc_number_of_past_due_jobs] [int] NOT NULL,
	[kpi_recalc_percentage_of_late_jobs] [float] NOT NULL,
	[kpi_recalc_number_of_jobs_with_misorderings] [int] NOT NULL,
	[kpi_recalc_percentage_of_jobs_with_misorderings] [float] NOT NULL,
	[kpi_recalc_number_of_machines_with_overlaps] [int] NOT NULL,
	[kpi_recalc_percentage_of_machines_with_overlaps] [float] NOT NULL,
	[kpi_recalc_number_of_resources_with_overconsumption] [int] NOT NULL,
	[kpi_recalc_percentage_of_resources_with_overconsumption] [float] NOT NULL,
	[kpi_recalc_number_of_late_minutes] [int] NOT NULL,
	[kpi_recalc_total_setup_time] [int] NOT NULL,
	[kpi_recalc_overlap_scheduling_machines] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_recalc_gain_scheduling_machines] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_recalc_overconsumption_of_resources] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_optimized_number_of_late_jobs] [int] NOT NULL,
	[kpi_optimized_number_of_past_due_jobs] [int] NOT NULL,
	[kpi_optimized_percentage_of_late_jobs] [float] NOT NULL,
	[kpi_optimized_number_of_jobs_with_misorderings] [int] NOT NULL,
	[kpi_optimized_percentage_of_jobs_with_misorderings] [float] NOT NULL,
	[kpi_optimized_number_of_machines_with_overlaps] [int] NOT NULL,
	[kpi_optimized_percentage_of_machines_with_overlaps] [float] NOT NULL,
	[kpi_optimized_number_of_resources_with_overconsumption] [int] NOT NULL,
	[kpi_optimized_percentage_of_resources_with_overconsumption] [float] NOT NULL,
	[kpi_optimized_number_of_late_minutes] [int] NOT NULL,
	[kpi_optimized_total_setup_time] [int] NOT NULL,
	[kpi_optimized_overlap_scheduling_machines] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_optimized_gain_scheduling_machines] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpi_optimized_overconsumption_of_resources] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_optimization_report_datai0] PRIMARY KEY CLUSTERED 
(
	[scheduling_optimization_report_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_optimization_report_data__]') AND name = N'scheduling_optimization_report_datai1')
CREATE NONCLUSTERED INDEX [scheduling_optimization_report_datai1] ON [dbo].[scheduling_optimization_report_data__]
(
	[scheduling_optimization_id] ASC,
	[report_data_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__scheduling_optimization_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__scheduling_optimization_id]  DEFAULT ('') FOR [scheduling_optimization_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__scheduling_optimization_report_data_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__scheduling_optimization_report_data_id]  DEFAULT ((0)) FOR [scheduling_optimization_report_data_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__report_data_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__report_data_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [report_data_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__response_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__response_code]  DEFAULT ((0)) FOR [response_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__stage_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__stage_nr]  DEFAULT ('') FOR [stage_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_number_of_days_future]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_number_of_days_future]  DEFAULT ((0)) FOR [param_number_of_days_future]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_number_of_days_past]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_number_of_days_past]  DEFAULT ((0)) FOR [param_number_of_days_past]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_frozen_hours]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_frozen_hours]  DEFAULT ((0)) FOR [param_frozen_hours]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_start_after_x_minutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_start_after_x_minutes]  DEFAULT ((0)) FOR [param_start_after_x_minutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_slack_capacity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_slack_capacity]  DEFAULT ((0)) FOR [param_slack_capacity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_max_compute_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_max_compute_time]  DEFAULT ((0)) FOR [param_max_compute_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_extra_hours_delivery]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_extra_hours_delivery]  DEFAULT ((0)) FOR [param_extra_hours_delivery]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_max_weeks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_max_weeks]  DEFAULT ((0)) FOR [param_max_weeks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_granularity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_granularity]  DEFAULT ((0)) FOR [param_granularity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_logical_order_job_percentage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_logical_order_job_percentage]  DEFAULT ((0)) FOR [param_logical_order_job_percentage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_solver_planning]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_solver_planning]  DEFAULT ('') FOR [param_solver_planning]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_gain_calculation]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_gain_calculation]  DEFAULT ('') FOR [param_gain_calculation]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_availability_resources]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_availability_resources]  DEFAULT ('') FOR [param_availability_resources]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_availability_resources_tools]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_availability_resources_tools]  DEFAULT ('') FOR [param_availability_resources_tools]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_apply_gains]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_apply_gains]  DEFAULT ('') FOR [param_apply_gains]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_unpin_job_actions]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_unpin_job_actions]  DEFAULT ('') FOR [param_unpin_job_actions]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_strong_machine]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_strong_machine]  DEFAULT ('') FOR [param_strong_machine]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_high_memory]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_high_memory]  DEFAULT ('') FOR [param_high_memory]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_ignore_linked_actions]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_ignore_linked_actions]  DEFAULT ('') FOR [param_ignore_linked_actions]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_ignore_waiting_times_linked_actions]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_ignore_waiting_times_linked_actions]  DEFAULT ('') FOR [param_ignore_waiting_times_linked_actions]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_soft_pin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_soft_pin]  DEFAULT ('') FOR [param_soft_pin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__param_logical_order_stage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__param_logical_order_stage]  DEFAULT ('') FOR [param_logical_order_stage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_number_of_late_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_number_of_late_jobs]  DEFAULT ((0)) FOR [kpi_original_number_of_late_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_number_of_past_due_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_number_of_past_due_jobs]  DEFAULT ((0)) FOR [kpi_original_number_of_past_due_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_percentage_of_late_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_percentage_of_late_jobs]  DEFAULT ((0)) FOR [kpi_original_percentage_of_late_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_number_of_jobs_with_misorderings]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_number_of_jobs_with_misorderings]  DEFAULT ((0)) FOR [kpi_original_number_of_jobs_with_misorderings]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_percentage_of_jobs_with_misorderings]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_percentage_of_jobs_with_misorderings]  DEFAULT ((0)) FOR [kpi_original_percentage_of_jobs_with_misorderings]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_number_of_machines_with_overlaps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_number_of_machines_with_overlaps]  DEFAULT ((0)) FOR [kpi_original_number_of_machines_with_overlaps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_percentage_of_machines_with_overlaps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_percentage_of_machines_with_overlaps]  DEFAULT ((0)) FOR [kpi_original_percentage_of_machines_with_overlaps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_number_of_late_minutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_number_of_late_minutes]  DEFAULT ((0)) FOR [kpi_original_number_of_late_minutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_number_of_resources_with_overconsumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_number_of_resources_with_overconsumption]  DEFAULT ((0)) FOR [kpi_original_number_of_resources_with_overconsumption]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_percentage_of_resources_with_overconsumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_percentage_of_resources_with_overconsumption]  DEFAULT ((0)) FOR [kpi_original_percentage_of_resources_with_overconsumption]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_total_setup_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_total_setup_time]  DEFAULT ((0)) FOR [kpi_original_total_setup_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_overlap_scheduling_machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_overlap_scheduling_machines]  DEFAULT ('') FOR [kpi_original_overlap_scheduling_machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_gain_scheduling_machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_gain_scheduling_machines]  DEFAULT ('') FOR [kpi_original_gain_scheduling_machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_original_overconsumption_of_resources]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_original_overconsumption_of_resources]  DEFAULT ('') FOR [kpi_original_overconsumption_of_resources]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_number_of_late_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_number_of_late_jobs]  DEFAULT ((0)) FOR [kpi_recalc_number_of_late_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_number_of_past_due_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_number_of_past_due_jobs]  DEFAULT ((0)) FOR [kpi_recalc_number_of_past_due_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_late_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_late_jobs]  DEFAULT ((0)) FOR [kpi_recalc_percentage_of_late_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_number_of_jobs_with_misorderings]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_number_of_jobs_with_misorderings]  DEFAULT ((0)) FOR [kpi_recalc_number_of_jobs_with_misorderings]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_jobs_with_misorderings]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_jobs_with_misorderings]  DEFAULT ((0)) FOR [kpi_recalc_percentage_of_jobs_with_misorderings]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_number_of_machines_with_overlaps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_number_of_machines_with_overlaps]  DEFAULT ((0)) FOR [kpi_recalc_number_of_machines_with_overlaps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_machines_with_overlaps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_machines_with_overlaps]  DEFAULT ((0)) FOR [kpi_recalc_percentage_of_machines_with_overlaps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_number_of_resources_with_overconsumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_number_of_resources_with_overconsumption]  DEFAULT ((0)) FOR [kpi_recalc_number_of_resources_with_overconsumption]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_resources_with_overconsumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_percentage_of_resources_with_overconsumption]  DEFAULT ((0)) FOR [kpi_recalc_percentage_of_resources_with_overconsumption]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_number_of_late_minutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_number_of_late_minutes]  DEFAULT ((0)) FOR [kpi_recalc_number_of_late_minutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_total_setup_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_total_setup_time]  DEFAULT ((0)) FOR [kpi_recalc_total_setup_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_overlap_scheduling_machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_overlap_scheduling_machines]  DEFAULT ('') FOR [kpi_recalc_overlap_scheduling_machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_gain_scheduling_machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_gain_scheduling_machines]  DEFAULT ('') FOR [kpi_recalc_gain_scheduling_machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_recalc_overconsumption_of_resources]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_recalc_overconsumption_of_resources]  DEFAULT ('') FOR [kpi_recalc_overconsumption_of_resources]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_number_of_late_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_number_of_late_jobs]  DEFAULT ((0)) FOR [kpi_optimized_number_of_late_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_number_of_past_due_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_number_of_past_due_jobs]  DEFAULT ((0)) FOR [kpi_optimized_number_of_past_due_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_late_jobs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_late_jobs]  DEFAULT ((0)) FOR [kpi_optimized_percentage_of_late_jobs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_number_of_jobs_with_misorderings]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_number_of_jobs_with_misorderings]  DEFAULT ((0)) FOR [kpi_optimized_number_of_jobs_with_misorderings]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_jobs_with_misorderings]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_jobs_with_misorderings]  DEFAULT ((0)) FOR [kpi_optimized_percentage_of_jobs_with_misorderings]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_number_of_machines_with_overlaps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_number_of_machines_with_overlaps]  DEFAULT ((0)) FOR [kpi_optimized_number_of_machines_with_overlaps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_machines_with_overlaps]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_machines_with_overlaps]  DEFAULT ((0)) FOR [kpi_optimized_percentage_of_machines_with_overlaps]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_number_of_resources_with_overconsumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_number_of_resources_with_overconsumption]  DEFAULT ((0)) FOR [kpi_optimized_number_of_resources_with_overconsumption]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_resources_with_overconsumption]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_percentage_of_resources_with_overconsumption]  DEFAULT ((0)) FOR [kpi_optimized_percentage_of_resources_with_overconsumption]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_number_of_late_minutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_number_of_late_minutes]  DEFAULT ((0)) FOR [kpi_optimized_number_of_late_minutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_total_setup_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_total_setup_time]  DEFAULT ((0)) FOR [kpi_optimized_total_setup_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_overlap_scheduling_machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_overlap_scheduling_machines]  DEFAULT ('') FOR [kpi_optimized_overlap_scheduling_machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_gain_scheduling_machines]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_gain_scheduling_machines]  DEFAULT ('') FOR [kpi_optimized_gain_scheduling_machines]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization_report_data__kpi_optimized_overconsumption_of_resources]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization_report_data__] ADD  CONSTRAINT [DF_scheduling_optimization_report_data__kpi_optimized_overconsumption_of_resources]  DEFAULT ('') FOR [kpi_optimized_overconsumption_of_resources]
END

