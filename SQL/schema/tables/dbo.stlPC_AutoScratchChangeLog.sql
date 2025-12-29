SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_AutoScratchChangeLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_AutoScratchChangeLog](
	[stlPC_AutoScratchChangeLogID] [int] IDENTITY(1,1) NOT NULL,
	[tableName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[keyFieldName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[keyFieldValue] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[nextKeyFieldName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[nextKeyFieldValue] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fieldName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[oldValue] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[newValue] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[changeDt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlPC_AutoScratchChangeLog] PRIMARY KEY CLUSTERED 
(
	[stlPC_AutoScratchChangeLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_tableName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_tableName]  DEFAULT ('') FOR [tableName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_keyFieldName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_keyFieldName]  DEFAULT ('') FOR [keyFieldName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_keyFieldValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_keyFieldValue]  DEFAULT ('') FOR [keyFieldValue]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_nextKeyFieldName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_nextKeyFieldName]  DEFAULT ('') FOR [nextKeyFieldName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_nextKeyFieldValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_nextKeyFieldValue]  DEFAULT ('') FOR [nextKeyFieldValue]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_fieldName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_fieldName]  DEFAULT ('') FOR [fieldName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_oldValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_oldValue]  DEFAULT ('') FOR [oldValue]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AutoScratchChangeLog_newValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AutoScratchChangeLog] ADD  CONSTRAINT [DF_stlPC_AutoScratchChangeLog_newValue]  DEFAULT ('') FOR [newValue]
END

