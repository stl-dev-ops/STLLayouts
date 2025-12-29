SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJMS_JobsPulled]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJMS_JobsPulled](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[JobPulled] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlJMS_JobsPulled] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlJMS_JobsPulled]') AND name = N'IX_stlJMS_JobsPulled_ord__ref')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlJMS_JobsPulled_ord__ref] ON [dbo].[stlJMS_JobsPulled]
(
	[ord__ref] ASC
)
INCLUDE([JobPulled],[Created],[CreatedBy],[Updated],[UpdatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_JobsPulled_JobPulled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobsPulled] ADD  CONSTRAINT [DF_stlJMS_JobsPulled_JobPulled]  DEFAULT ((0)) FOR [JobPulled]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_JobsPulled_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobsPulled] ADD  CONSTRAINT [DF_stlJMS_JobsPulled_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_JobsPulled_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobsPulled] ADD  CONSTRAINT [DF_stlJMS_JobsPulled_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_JobsPulled_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobsPulled] ADD  CONSTRAINT [DF_stlJMS_JobsPulled_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_JobsPulled_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_JobsPulled] ADD  CONSTRAINT [DF_stlJMS_JobsPulled_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

