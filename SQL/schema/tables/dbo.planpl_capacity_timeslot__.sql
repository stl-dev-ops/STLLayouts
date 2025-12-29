SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[planpl_capacity_timeslot__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[planpl_capacity_timeslot__](
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[day] [date] NOT NULL,
	[start_time] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duration] [bigint] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[working_hours] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [planpl_capacity_timesloti0] PRIMARY KEY CLUSTERED 
(
	[plpl_ref] ASC,
	[day] ASC,
	[start_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity_timeslot__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity_timeslot__] ADD  CONSTRAINT [DF_planpl_capacity_timeslot__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity_timeslot__day]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity_timeslot__] ADD  CONSTRAINT [DF_planpl_capacity_timeslot__day]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [day]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity_timeslot__start_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity_timeslot__] ADD  CONSTRAINT [DF_planpl_capacity_timeslot__start_time]  DEFAULT ('') FOR [start_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity_timeslot__duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity_timeslot__] ADD  CONSTRAINT [DF_planpl_capacity_timeslot__duration]  DEFAULT ((0)) FOR [duration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity_timeslot__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity_timeslot__] ADD  CONSTRAINT [DF_planpl_capacity_timeslot__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity_timeslot__comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity_timeslot__] ADD  CONSTRAINT [DF_planpl_capacity_timeslot__comment]  DEFAULT ('') FOR [comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_planpl_capacity_timeslot__working_hours]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[planpl_capacity_timeslot__] ADD  CONSTRAINT [DF_planpl_capacity_timeslot__working_hours]  DEFAULT ((1)) FOR [working_hours]
END

