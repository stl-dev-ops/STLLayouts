SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlTT_TargetTracker]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlTT_TargetTracker](
	[stlTT_TargetTrackerID] [int] IDENTITY(1,1) NOT NULL,
	[insertDt] [datetime] NULL,
	[lastUpdate] [datetime] NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[grossFt] [int] NULL,
	[goodFt] [int] NULL,
	[goodFtMet] [bit] NULL,
	[wasteMet] [bit] NULL,
	[timeMet] [bit] NULL,
	[missedCat1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[missedCat2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[comment] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[signOff] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[wp_naam_] [nvarchar](40) COLLATE Latin1_General_CI_AS NULL,
	[estPressMin] [int] NULL,
	[actPressMin] [int] NULL,
	[rowversion] [timestamp] NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[preventiveAction] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlTT_TargetTracker] PRIMARY KEY CLUSTERED 
(
	[stlTT_TargetTrackerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_insertDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_insertDt]  DEFAULT (getdate()) FOR [insertDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_lastUpdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_lastUpdate]  DEFAULT (getdate()) FOR [lastUpdate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_grossFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_grossFt]  DEFAULT ((0)) FOR [grossFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_goodFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_goodFt]  DEFAULT ((0)) FOR [goodFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_goodFtMet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_goodFtMet]  DEFAULT ((0)) FOR [goodFtMet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_wasteMet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_wasteMet]  DEFAULT ((0)) FOR [wasteMet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_timeMet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_timeMet]  DEFAULT ((0)) FOR [timeMet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_missedCat1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_missedCat1]  DEFAULT ('') FOR [missedCat1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_missedCat2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_missedCat2]  DEFAULT ('') FOR [missedCat2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_comment]  DEFAULT ('') FOR [comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_signOff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_signOff]  DEFAULT ('') FOR [signOff]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_wp_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_wp_naam_]  DEFAULT ('') FOR [wp_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_estPressMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_estPressMin]  DEFAULT ((0)) FOR [estPressMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_actPressMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_actPressMin]  DEFAULT ((0)) FOR [actPressMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlTT_TargetTracker_dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlTT_TargetTracker] ADD  CONSTRAINT [DF_stlTT_TargetTracker_dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

