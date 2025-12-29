SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStatusHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_ApplicationStatusHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[TransitionDate] [datetime] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_ApplicationStatusHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatusHistory_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatusHistory_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatusHistory_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatusHistory_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatusHistory_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatusHistory_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatusHistory_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatusHistory_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatusHistory_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatusHistory_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStatusHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_Applications] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[stlRecruiting_Applications] ([ApplicationID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStatusHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory] CHECK CONSTRAINT [FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_Applications]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_ApplicationStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStatusHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_ApplicationStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[stlRecruiting_ApplicationStatus] ([StatusID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_ApplicationStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStatusHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatusHistory] CHECK CONSTRAINT [FK_stlRecruiting_ApplicationStatusHistory_stlRecruiting_ApplicationStatus]
