SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cerm8_command_status__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cerm8_command_status__](
	[action_id] [nvarchar](36) COLLATE Latin1_General_CI_AS NOT NULL,
	[action_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[reference] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[submit_time] [datetime2](3) NOT NULL,
	[status] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[action_data] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [cerm8_command_statusi0] PRIMARY KEY CLUSTERED 
(
	[action_type] ASC,
	[action_id] ASC,
	[reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_command_status__action_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_command_status__] ADD  CONSTRAINT [DF_cerm8_command_status__action_id]  DEFAULT ('') FOR [action_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_command_status__action_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_command_status__] ADD  CONSTRAINT [DF_cerm8_command_status__action_type]  DEFAULT ('') FOR [action_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_command_status__reference]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_command_status__] ADD  CONSTRAINT [DF_cerm8_command_status__reference]  DEFAULT ('') FOR [reference]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_command_status__submit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_command_status__] ADD  CONSTRAINT [DF_cerm8_command_status__submit_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [submit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_command_status__status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_command_status__] ADD  CONSTRAINT [DF_cerm8_command_status__status]  DEFAULT ('') FOR [status]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_command_status__action_data]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_command_status__] ADD  CONSTRAINT [DF_cerm8_command_status__action_data]  DEFAULT ('') FOR [action_data]
END

