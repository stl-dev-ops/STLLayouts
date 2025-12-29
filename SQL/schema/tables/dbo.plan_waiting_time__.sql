SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plan_waiting_time__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plan_waiting_time__](
	[waiting_time_id] [int] NOT NULL,
	[plwy_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd__] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plan_waiting_timei1] PRIMARY KEY NONCLUSTERED 
(
	[plwy_ref] ASC,
	[plpl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plan_waiting_time__]') AND name = N'plan_waiting_timei0')
CREATE UNIQUE CLUSTERED INDEX [plan_waiting_timei0] ON [dbo].[plan_waiting_time__]
(
	[waiting_time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plan_waiting_time__]') AND name = N'plan_waiting_timei2')
CREATE NONCLUSTERED INDEX [plan_waiting_timei2] ON [dbo].[plan_waiting_time__]
(
	[plpl_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plan_waiting_time__waiting_time_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plan_waiting_time__] ADD  CONSTRAINT [DF_plan_waiting_time__waiting_time_id]  DEFAULT ((0)) FOR [waiting_time_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plan_waiting_time__plwy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plan_waiting_time__] ADD  CONSTRAINT [DF_plan_waiting_time__plwy_ref]  DEFAULT ('') FOR [plwy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plan_waiting_time__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plan_waiting_time__] ADD  CONSTRAINT [DF_plan_waiting_time__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plan_waiting_time__pln_tm__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plan_waiting_time__] ADD  CONSTRAINT [DF_plan_waiting_time__pln_tm__]  DEFAULT ('Y') FOR [pln_tm__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plan_waiting_time__pln_dt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plan_waiting_time__] ADD  CONSTRAINT [DF_plan_waiting_time__pln_dt__]  DEFAULT ('  0:00') FOR [pln_dt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plan_waiting_time__pln_dd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plan_waiting_time__] ADD  CONSTRAINT [DF_plan_waiting_time__pln_dd__]  DEFAULT ((0)) FOR [pln_dd__]
END

