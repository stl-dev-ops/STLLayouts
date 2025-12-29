SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduling_element__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[scheduling_element__](
	[job_id] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[element_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[type] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[sheet_name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[descriptive_name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[tool_id] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [scheduling_elementi0] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC,
	[element_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element__job_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element__] ADD  CONSTRAINT [DF_scheduling_element__job_id]  DEFAULT ('') FOR [job_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element__element_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element__] ADD  CONSTRAINT [DF_scheduling_element__element_id]  DEFAULT ('') FOR [element_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element__type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element__] ADD  CONSTRAINT [DF_scheduling_element__type]  DEFAULT ('') FOR [type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element__sheet_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element__] ADD  CONSTRAINT [DF_scheduling_element__sheet_name]  DEFAULT ('') FOR [sheet_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element__descriptive_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element__] ADD  CONSTRAINT [DF_scheduling_element__descriptive_name]  DEFAULT ('') FOR [descriptive_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_scheduling_element__tool_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[scheduling_element__] ADD  CONSTRAINT [DF_scheduling_element__tool_id]  DEFAULT ('') FOR [tool_id]
END

