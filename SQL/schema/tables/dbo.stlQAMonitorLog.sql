SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQAMonitorLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQAMonitorLog](
	[stlQAMonitorLogID] [int] IDENTITY(1,1) NOT NULL,
	[tableName] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[columnName] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[refValue] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[value] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[timeStamp] [datetime] NOT NULL,
 CONSTRAINT [PK_QAMonitorLog] PRIMARY KEY CLUSTERED 
(
	[stlQAMonitorLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_QAMonitorLog_tableName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAMonitorLog] ADD  CONSTRAINT [DF_QAMonitorLog_tableName]  DEFAULT ('') FOR [tableName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_QAMonitorLog_columnName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAMonitorLog] ADD  CONSTRAINT [DF_QAMonitorLog_columnName]  DEFAULT ('') FOR [columnName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_QAMonitorLog_refValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAMonitorLog] ADD  CONSTRAINT [DF_QAMonitorLog_refValue]  DEFAULT ('') FOR [refValue]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_QAMonitorLog_timeStamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQAMonitorLog] ADD  CONSTRAINT [DF_QAMonitorLog_timeStamp]  DEFAULT (getdate()) FOR [timeStamp]
END

