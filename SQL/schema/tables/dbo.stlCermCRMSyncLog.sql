SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCermCRMSyncLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCermCRMSyncLog](
	[stlCermCRMSyncLogID] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[logDate] [datetime] NOT NULL,
 CONSTRAINT [PK_stlCermCRMSyncLog] PRIMARY KEY CLUSTERED 
(
	[stlCermCRMSyncLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCermCRMSyncLog_message]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCermCRMSyncLog] ADD  CONSTRAINT [DF_stlCermCRMSyncLog_message]  DEFAULT ('') FOR [message]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCermCRMSyncLog_logDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCermCRMSyncLog] ADD  CONSTRAINT [DF_stlCermCRMSyncLog_logDate]  DEFAULT (getdate()) FOR [logDate]
END

