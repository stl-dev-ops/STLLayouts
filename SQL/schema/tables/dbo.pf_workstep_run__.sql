SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_workstep_run__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_workstep_run__](
	[production_flow_id] [int] NOT NULL,
	[workstep_id] [int] NOT NULL,
	[run_id] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [pf_workstep_runi0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[workstep_id] ASC,
	[run_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run__] ADD  CONSTRAINT [DF_pf_workstep_run__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run__] ADD  CONSTRAINT [DF_pf_workstep_run__workstep_id]  DEFAULT ((0)) FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run__run_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run__] ADD  CONSTRAINT [DF_pf_workstep_run__run_id]  DEFAULT ((0)) FOR [run_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run__] ADD  CONSTRAINT [DF_pf_workstep_run__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_workstep_run__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_workstep_run__] ADD  CONSTRAINT [DF_pf_workstep_run__name]  DEFAULT ('') FOR [name]
END

