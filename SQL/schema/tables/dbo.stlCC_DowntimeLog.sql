SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_DowntimeLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_DowntimeLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[EntryDateTime] [datetime] NULL,
	[ProblemTypeID] [int] NULL,
	[MachineStoppedAt] [datetime] NULL,
	[ReasonForStop] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[RootCauseID] [int] NULL,
	[CorrectiveAction] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[MachineRestartedAt] [datetime] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_DowntimeLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_DowntimeLog_ReasonForStop]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_DowntimeLog] ADD  CONSTRAINT [DF_stlCC_DowntimeLog_ReasonForStop]  DEFAULT ('') FOR [ReasonForStop]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_DowntimeLog_CorrectiveAction]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_DowntimeLog] ADD  CONSTRAINT [DF_stlCC_DowntimeLog_CorrectiveAction]  DEFAULT ('') FOR [CorrectiveAction]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_DowntimeLog_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_DowntimeLog] ADD  CONSTRAINT [DF_stlCC_DowntimeLog_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_DowntimeLog_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_DowntimeLog] ADD  CONSTRAINT [DF_stlCC_DowntimeLog_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_DowntimeLog_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_DowntimeLog] ADD  CONSTRAINT [DF_stlCC_DowntimeLog_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_DowntimeLog_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_DowntimeLog] ADD  CONSTRAINT [DF_stlCC_DowntimeLog_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_DowntimeLog_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_DowntimeLog] ADD  CONSTRAINT [DF_stlCC_DowntimeLog_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_DowntimeLog_stlCC_Problem]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_DowntimeLog]'))
ALTER TABLE [dbo].[stlCC_DowntimeLog]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_DowntimeLog_stlCC_Problem] FOREIGN KEY([ProblemTypeID])
REFERENCES [dbo].[stlCC_Problem] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_DowntimeLog_stlCC_Problem]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_DowntimeLog]'))
ALTER TABLE [dbo].[stlCC_DowntimeLog] CHECK CONSTRAINT [FK_stlCC_DowntimeLog_stlCC_Problem]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_DowntimeLog_stlCC_RootCause]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_DowntimeLog]'))
ALTER TABLE [dbo].[stlCC_DowntimeLog]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_DowntimeLog_stlCC_RootCause] FOREIGN KEY([RootCauseID])
REFERENCES [dbo].[stlCC_RootCause] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_DowntimeLog_stlCC_RootCause]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_DowntimeLog]'))
ALTER TABLE [dbo].[stlCC_DowntimeLog] CHECK CONSTRAINT [FK_stlCC_DowntimeLog_stlCC_RootCause]
