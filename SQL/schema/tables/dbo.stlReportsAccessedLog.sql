SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlReportsAccessedLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlReportsAccessedLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[FileName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[CheckPassed] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlReportsAccessedLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlReportsAccessedLog_Path]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlReportsAccessedLog] ADD  CONSTRAINT [DF_stlReportsAccessedLog_Path]  DEFAULT ('') FOR [Path]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlReportsAccessedLog_FileName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlReportsAccessedLog] ADD  CONSTRAINT [DF_stlReportsAccessedLog_FileName]  DEFAULT ('') FOR [FileName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlReportsAccessedLog_CheckPassed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlReportsAccessedLog] ADD  CONSTRAINT [DF_stlReportsAccessedLog_CheckPassed]  DEFAULT ((0)) FOR [CheckPassed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlReportsAccessedLog_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlReportsAccessedLog] ADD  CONSTRAINT [DF_stlReportsAccessedLog_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlReportsAccessedLog_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlReportsAccessedLog] ADD  CONSTRAINT [DF_stlReportsAccessedLog_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

