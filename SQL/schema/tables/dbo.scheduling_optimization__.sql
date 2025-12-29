SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_optimization__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_optimization__](
	[scheduling_optimization_id] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[status] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[submit_time] [datetime2](3) NOT NULL,
	[submit_user] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[submit_error] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[submit_response_code] [int] NOT NULL,
	[update_time] [datetime2](3) NOT NULL,
	[update_user] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[update_error] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[update_response_code] [int] NOT NULL,
	[delete_time] [datetime2](3) NOT NULL,
	[delete_user] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[delete_error] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[delete_response_code] [int] NOT NULL,
	[start_time] [datetime2](3) NOT NULL,
	[solution_time] [datetime2](3) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_optimizationi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_optimization__]') AND name = N'scheduling_optimizationi1')
CREATE UNIQUE NONCLUSTERED INDEX [scheduling_optimizationi1] ON [dbo].[scheduling_optimization__]
(
	[scheduling_optimization_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__scheduling_optimization_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__scheduling_optimization_id]  DEFAULT ('') FOR [scheduling_optimization_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__status]  DEFAULT ('') FOR [status]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__submit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__submit_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [submit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__submit_user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__submit_user]  DEFAULT ('') FOR [submit_user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__submit_error]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__submit_error]  DEFAULT ('') FOR [submit_error]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__submit_response_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__submit_response_code]  DEFAULT ((0)) FOR [submit_response_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__update_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__update_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [update_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__update_user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__update_user]  DEFAULT ('') FOR [update_user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__update_error]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__update_error]  DEFAULT ('') FOR [update_error]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__update_response_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__update_response_code]  DEFAULT ((0)) FOR [update_response_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__delete_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__delete_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [delete_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__delete_user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__delete_user]  DEFAULT ('') FOR [delete_user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__delete_error]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__delete_error]  DEFAULT ('') FOR [delete_error]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__delete_response_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__delete_response_code]  DEFAULT ((0)) FOR [delete_response_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__start_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__start_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [start_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_optimization__solution_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_optimization__] ADD  CONSTRAINT [DF_scheduling_optimization__solution_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [solution_time]
END

