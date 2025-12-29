SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSPS_Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSPS_Log](
	[stlSPS_LogID] [int] IDENTITY(1,1) NOT NULL,
	[logType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[logDt] [datetime] NOT NULL,
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[message] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSPS_Log] PRIMARY KEY CLUSTERED 
(
	[stlSPS_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSPS_Log_logType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSPS_Log] ADD  CONSTRAINT [DF_stlSPS_Log_logType]  DEFAULT ('') FOR [logType]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSPS_Log_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSPS_Log] ADD  CONSTRAINT [DF_stlSPS_Log_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSPS_Log_drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSPS_Log] ADD  CONSTRAINT [DF_stlSPS_Log_drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSPS_Log_message]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSPS_Log] ADD  CONSTRAINT [DF_stlSPS_Log_message]  DEFAULT ('') FOR [message]
END

