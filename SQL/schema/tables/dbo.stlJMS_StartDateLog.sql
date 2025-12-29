SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJMS_StartDateLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJMS_StartDateLog](
	[stlJMS_StartDateLogID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[PreviousDate] [datetime] NOT NULL,
	[LastLogDate] [datetime] NOT NULL,
	[LastResetDate] [datetime] NOT NULL,
	[Machine] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[PreviousMachine] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[NewJob] [bit] NOT NULL,
 CONSTRAINT [PK_stlJMS_StartDateLog] PRIMARY KEY CLUSTERED 
(
	[stlJMS_StartDateLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_StartDateLog_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_StartDateLog] ADD  CONSTRAINT [DF_stlJMS_StartDateLog_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_StartDateLog_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_StartDateLog] ADD  CONSTRAINT [DF_stlJMS_StartDateLog_StartDate]  DEFAULT (getdate()) FOR [StartDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_StartDateLog_Machine]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_StartDateLog] ADD  CONSTRAINT [DF_stlJMS_StartDateLog_Machine]  DEFAULT ('') FOR [Machine]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_StartDateLog_PreviousMachine]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_StartDateLog] ADD  CONSTRAINT [DF_stlJMS_StartDateLog_PreviousMachine]  DEFAULT ('') FOR [PreviousMachine]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJMS_StartDateLog_New]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJMS_StartDateLog] ADD  CONSTRAINT [DF_stlJMS_StartDateLog_New]  DEFAULT ((1)) FOR [NewJob]
END

