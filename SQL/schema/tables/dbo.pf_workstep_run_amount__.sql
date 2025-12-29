SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_workstep_run_amount__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_workstep_run_amount__](
	[production_flow_id] [int] NOT NULL,
	[value_set_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[run_id] [int] NOT NULL,
	[workstep_operation_id] [int] NULL,
	[result_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[amount] [float] NOT NULL,
	[duration] [bigint] NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[waiting_duration] [bigint] NOT NULL,
 CONSTRAINT [pf_workstep_run_amounti0] PRIMARY KEY NONCLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pf_workstep_run_amount__]') AND name = N'pf_workstep_run_amounti1')
CREATE UNIQUE CLUSTERED INDEX [pf_workstep_run_amounti1] ON [dbo].[pf_workstep_run_amount__]
(
	[production_flow_id] ASC,
	[value_set_id] ASC,
	[workstep_id] ASC,
	[run_id] ASC,
	[workstep_operation_id] ASC,
	[result_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__run_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__run_id]  DEFAULT ((0)) FOR [run_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__result_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__result_type]  DEFAULT ('') FOR [result_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__unit_dimension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__unit_dimension]  DEFAULT ('') FOR [unit_dimension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__amount]  DEFAULT ((0)) FOR [amount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__duration]  DEFAULT ((0)) FOR [duration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__kstd_ref]  DEFAULT ('') FOR [kstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run_amount__waiting_duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run_amount__] ADD  CONSTRAINT [DF_pf_workstep_run_amount__waiting_duration]  DEFAULT ((0)) FOR [waiting_duration]
END

