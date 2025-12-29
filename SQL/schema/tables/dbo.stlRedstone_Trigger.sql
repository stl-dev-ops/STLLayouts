SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRedstone_Trigger]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRedstone_Trigger](
	[stlRedstone_TriggerID] [int] IDENTITY(1,1) NOT NULL,
	[lbn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[processed] [bit] NOT NULL,
	[processedDt] [datetime] NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstone_Trigger_lbn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstone_Trigger] ADD  CONSTRAINT [DF_stlRedstone_Trigger_lbn__ref]  DEFAULT ('') FOR [lbn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstone_Trigger_processed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstone_Trigger] ADD  CONSTRAINT [DF_stlRedstone_Trigger_processed]  DEFAULT ((0)) FOR [processed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRedstone_Trigger_processedDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRedstone_Trigger] ADD  CONSTRAINT [DF_stlRedstone_Trigger_processedDt]  DEFAULT (getdate()) FOR [processedDt]
END

