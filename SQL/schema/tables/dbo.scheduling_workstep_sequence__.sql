SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_workstep_sequence__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_workstep_sequence__](
	[job_id] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[parent_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[child_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_workstep_sequencei0] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[parent_id] ASC,
	[child_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_sequence__job_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_sequence__] ADD  CONSTRAINT [DF_scheduling_workstep_sequence__job_id]  DEFAULT ('') FOR [job_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_sequence__parent_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_sequence__] ADD  CONSTRAINT [DF_scheduling_workstep_sequence__parent_id]  DEFAULT ('') FOR [parent_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_workstep_sequence__child_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_workstep_sequence__] ADD  CONSTRAINT [DF_scheduling_workstep_sequence__child_id]  DEFAULT ('') FOR [child_id]
END

