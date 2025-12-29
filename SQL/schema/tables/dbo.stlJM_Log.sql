SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJM_Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJM_Log](
	[stlJM_LogID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[JID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[lblActivityContent] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[lblStatusLabelContent] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[CurrentClass] [nvarchar](1) COLLATE Latin1_General_CI_AS NULL,
	[JobMin] [int] NULL,
	[UsedMin] [int] NULL,
	[RemainingMin] [int] NULL,
	[MinutesOnSchedule] [int] NULL,
	[EstFpm] [float] NULL,
	[AvgGoodFtPerMin] [float] NULL,
	[MakeReadyMin] [int] NULL,
	[PrintMin] [int] NULL,
	[TearDownMin] [int] NULL,
	[BreakMin] [int] NULL,
	[InterruptMin] [int] NULL,
 CONSTRAINT [PK_stlJM_Log] PRIMARY KEY CLUSTERED 
(
	[stlJM_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_LogDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_LogDate]  DEFAULT (getdate()) FOR [LogDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_JID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_JID]  DEFAULT ('') FOR [JID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_lblActivityContent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_lblActivityContent]  DEFAULT ('') FOR [lblActivityContent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_lblStatusLabelContent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_lblStatusLabelContent]  DEFAULT ('') FOR [lblStatusLabelContent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_StatusClass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_StatusClass]  DEFAULT ('') FOR [CurrentClass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_JobMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_JobMin]  DEFAULT ((0)) FOR [JobMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_UsedMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_UsedMin]  DEFAULT ((0)) FOR [UsedMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_RemainingMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_RemainingMin]  DEFAULT ((0)) FOR [RemainingMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_MinutesOnSchedule]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_MinutesOnSchedule]  DEFAULT ((0)) FOR [MinutesOnSchedule]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_EstFpm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_EstFpm]  DEFAULT ((0)) FOR [EstFpm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_AvgGoodFtPerMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_AvgGoodFtPerMin]  DEFAULT ((0)) FOR [AvgGoodFtPerMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_MakeReadyMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_MakeReadyMin]  DEFAULT ((0)) FOR [MakeReadyMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_PrintMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_PrintMin]  DEFAULT ((0)) FOR [PrintMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_TearDownMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_TearDownMin]  DEFAULT ((0)) FOR [TearDownMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_OtherMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_OtherMin]  DEFAULT ((0)) FOR [BreakMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_Log_InterruptMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_Log] ADD  CONSTRAINT [DF_stlJM_Log_InterruptMin]  DEFAULT ((0)) FOR [InterruptMin]
END

