SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_value_set_result__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_value_set_result__](
	[production_flow_id] [int] NOT NULL,
	[value_set_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[run_id] [int] NOT NULL,
	[operation_id] [int] NULL,
	[resource_id] [int] NULL,
	[result_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[amount] [float] NULL,
	[duration] [bigint] NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[papier__] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[total___] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[workstep_operation_id] [int] NULL,
	[resource_instance_id] [int] NULL,
	[lonen__t] [float] NOT NULL,
	[machi__t] [float] NOT NULL,
	[overh__t] [float] NOT NULL,
	[papier_t] [float] NOT NULL,
	[grdvb__t] [float] NOT NULL,
	[oa_____t] [float] NOT NULL,
	[total__t] [float] NOT NULL,
 CONSTRAINT [pf_value_set_resulti0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pf_value_set_result__]') AND name = N'pf_value_set_resulti1')
CREATE NONCLUSTERED INDEX [pf_value_set_resulti1] ON [dbo].[pf_value_set_result__]
(
	[production_flow_id] ASC,
	[value_set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__run_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__run_id]  DEFAULT ((0)) FOR [run_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__result_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__result_type]  DEFAULT ('') FOR [result_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__papier__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__papier__]  DEFAULT ((0)) FOR [papier__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__total___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__total___]  DEFAULT ((0)) FOR [total___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__lonen__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__lonen__t]  DEFAULT ((0)) FOR [lonen__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__machi__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__machi__t]  DEFAULT ((0)) FOR [machi__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__overh__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__overh__t]  DEFAULT ((0)) FOR [overh__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__papier_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__papier_t]  DEFAULT ((0)) FOR [papier_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__grdvb__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__grdvb__t]  DEFAULT ((0)) FOR [grdvb__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__oa_____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__oa_____t]  DEFAULT ((0)) FOR [oa_____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_value_set_result__total__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_value_set_result__] ADD  CONSTRAINT [DF_pf_value_set_result__total__t]  DEFAULT ((0)) FOR [total__t]
END

