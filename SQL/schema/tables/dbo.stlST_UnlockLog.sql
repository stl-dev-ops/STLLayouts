SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_UnlockLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_UnlockLog](
	[stlST_UnlockLogID] [int] IDENTITY(1,1) NOT NULL,
	[logDt] [datetime] NOT NULL,
	[operator_wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[code_wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[message] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlST_UnlockLog] PRIMARY KEY CLUSTERED 
(
	[stlST_UnlockLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_UnlockLog_logDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_UnlockLog] ADD  CONSTRAINT [DF_stlST_UnlockLog_logDt]  DEFAULT (getdate()) FOR [logDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_operater_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_UnlockLog] ADD  CONSTRAINT [DF_Table_1_operater_wn___ref]  DEFAULT ('') FOR [operator_wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_UnlockLog_code_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_UnlockLog] ADD  CONSTRAINT [DF_stlST_UnlockLog_code_wn___ref]  DEFAULT ('') FOR [code_wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_UnlockLog_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_UnlockLog] ADD  CONSTRAINT [DF_stlST_UnlockLog_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_UnlockLog_hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_UnlockLog] ADD  CONSTRAINT [DF_stlST_UnlockLog_hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_UnlockLog_sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_UnlockLog] ADD  CONSTRAINT [DF_stlST_UnlockLog_sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_UnlockLog_message]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_UnlockLog] ADD  CONSTRAINT [DF_stlST_UnlockLog_message]  DEFAULT ('') FOR [message]
END

