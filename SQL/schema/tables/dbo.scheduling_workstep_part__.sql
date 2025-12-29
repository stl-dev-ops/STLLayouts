SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_workstep_part__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_workstep_part__](
	[job_id] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[workstep_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[part] [int] NOT NULL,
	[key_name] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[value] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[key_index] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_workstep_parti0] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[workstep_id] ASC,
	[part] ASC,
	[key_index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_part__job_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_part__] ADD  CONSTRAINT [DF_scheduling_workstep_part__job_id]  DEFAULT ('') FOR [job_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_part__workstep_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_part__] ADD  CONSTRAINT [DF_scheduling_workstep_part__workstep_id]  DEFAULT ('') FOR [workstep_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_part__part]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_part__] ADD  CONSTRAINT [DF_scheduling_workstep_part__part]  DEFAULT ((0)) FOR [part]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_part__key_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_part__] ADD  CONSTRAINT [DF_scheduling_workstep_part__key_name]  DEFAULT ('') FOR [key_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_part__value]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_part__] ADD  CONSTRAINT [DF_scheduling_workstep_part__value]  DEFAULT ('') FOR [value]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_part__key_index]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_part__] ADD  CONSTRAINT [DF_scheduling_workstep_part__key_index]  DEFAULT ((0)) FOR [key_index]
END

