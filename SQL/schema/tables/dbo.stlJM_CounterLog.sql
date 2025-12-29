SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJM_CounterLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJM_CounterLog](
	[stlJM_CounterLogID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[counterLogDt] [datetime] NOT NULL,
	[plcFt] [float] NOT NULL,
	[counterFt] [float] NOT NULL,
	[consumptionFt] [float] NOT NULL,
	[activeRollFt] [float] NOT NULL,
	[totalConsumptionFt] [float] NOT NULL,
	[consumptionDiffPct] [float] NOT NULL,
 CONSTRAINT [PK_stlJM_CounterLog] PRIMARY KEY CLUSTERED 
(
	[stlJM_CounterLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_vrs__ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_counterLogDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_counterLogDt]  DEFAULT (getdate()) FOR [counterLogDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_plcFtRan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_Table_1_plcFtRan]  DEFAULT ((0)) FOR [plcFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_counterFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_counterFt]  DEFAULT ((0)) FOR [counterFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_consumptionFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_consumptionFt]  DEFAULT ((0)) FOR [consumptionFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_activeRollFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_activeRollFt]  DEFAULT ((0)) FOR [activeRollFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_totalConsumptionFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_totalConsumptionFt]  DEFAULT ((0)) FOR [totalConsumptionFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_CounterLog_consumptionDiffPct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_CounterLog] ADD  CONSTRAINT [DF_stlJM_CounterLog_consumptionDiffPct]  DEFAULT ((0)) FOR [consumptionDiffPct]
END

