SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pln_param_capacity_timeslot__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pln_param_capacity_timeslot__](
	[capacity_id] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[week_day] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_time] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duration] [bigint] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pln_param_capacity_timesloti1] PRIMARY KEY CLUSTERED 
(
	[capacity_id] ASC,
	[week_day] ASC,
	[start_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity_timeslot__capacity_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity_timeslot__] ADD  CONSTRAINT [DF_pln_param_capacity_timeslot__capacity_id]  DEFAULT ((0)) FOR [capacity_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity_timeslot__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity_timeslot__] ADD  CONSTRAINT [DF_pln_param_capacity_timeslot__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity_timeslot__week_day]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity_timeslot__] ADD  CONSTRAINT [DF_pln_param_capacity_timeslot__week_day]  DEFAULT ('') FOR [week_day]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity_timeslot__start_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity_timeslot__] ADD  CONSTRAINT [DF_pln_param_capacity_timeslot__start_time]  DEFAULT ('') FOR [start_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity_timeslot__duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity_timeslot__] ADD  CONSTRAINT [DF_pln_param_capacity_timeslot__duration]  DEFAULT ((0)) FOR [duration]
END

