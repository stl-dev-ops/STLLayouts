SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJM_StoppageLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJM_StoppageLog](
	[stlJM_StoppageLogID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[stoppageStartTime] [datetime] NOT NULL,
	[stoppageEndTime] [datetime] NOT NULL,
	[stoppageSeconds] [int] NOT NULL,
	[rewindCaused] [bit] NOT NULL,
 CONSTRAINT [PK_stlJM_StoppageLog] PRIMARY KEY CLUSTERED 
(
	[stlJM_StoppageLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_StoppageLog_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_StoppageLog] ADD  CONSTRAINT [DF_stlJM_StoppageLog_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_StoppageLog_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_StoppageLog] ADD  CONSTRAINT [DF_stlJM_StoppageLog_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_StoppageLog_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_StoppageLog] ADD  CONSTRAINT [DF_stlJM_StoppageLog_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_StoppageLog_stoppageSeconds]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_StoppageLog] ADD  CONSTRAINT [DF_stlJM_StoppageLog_stoppageSeconds]  DEFAULT ((0)) FOR [stoppageSeconds]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_StoppageLog_rewindCaused]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_StoppageLog] ADD  CONSTRAINT [DF_stlJM_StoppageLog_rewindCaused]  DEFAULT ((0)) FOR [rewindCaused]
END

