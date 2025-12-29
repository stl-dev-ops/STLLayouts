SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCohesioProductionLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCohesioProductionLog](
	[cohesioProductionLogId] [int] IDENTITY(1,1) NOT NULL,
	[productionDate] [datetime] NULL,
	[JobId] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[hoursOnJob] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[operator1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[operator2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[OldfootageProduced] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[afg_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[managerFeedback] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[insertDate] [datetime] NULL,
	[press] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[footageTarget] [int] NULL,
	[footageProduced] [int] NULL,
	[confidenceLevel] [int] NULL,
	[concerns] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[targetInsertDate] [datetime] NULL,
	[producedInsertDate] [datetime] NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[shift] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlCohesioProductionLog] PRIMARY KEY CLUSTERED 
(
	[cohesioProductionLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_JobId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_JobId]  DEFAULT ('000000') FOR [JobId]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_insertDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_insertDate]  DEFAULT (getdate()) FOR [insertDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_press]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_press]  DEFAULT ('Cohesio') FOR [press]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_footageTarget]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_footageTarget]  DEFAULT ((0)) FOR [footageTarget]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_footageProduced]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_footageProduced]  DEFAULT ((0)) FOR [footageProduced]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_confidenceLevel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_confidenceLevel]  DEFAULT ((0)) FOR [confidenceLevel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_concerns]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_concerns]  DEFAULT ('') FOR [concerns]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCohesioProductionLog_shift]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCohesioProductionLog] ADD  CONSTRAINT [DF_stlCohesioProductionLog_shift]  DEFAULT ('') FOR [shift]
END

