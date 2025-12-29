SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStageHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_ApplicationStageHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[StageID] [int] NOT NULL,
	[TransitionDate] [datetime] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_ApplicationHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStageHistory]') AND name = N'idx_stlRecruiting_ApplicationHistory_ApplicationID')
CREATE NONCLUSTERED INDEX [idx_stlRecruiting_ApplicationHistory_ApplicationID] ON [dbo].[stlRecruiting_ApplicationStageHistory]
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Trans__3E580536]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] ADD  CONSTRAINT [DF__stlRecrui__Trans__3E580536]  DEFAULT (getdate()) FOR [TransitionDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStageHistory_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStageHistory_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__3F4C296F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] ADD  CONSTRAINT [DF__stlRecrui__Creat__3F4C296F]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__40404DA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] ADD  CONSTRAINT [DF__stlRecrui__Creat__40404DA8]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStageHistory_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStageHistory_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStageHistory_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStageHistory_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__stlRecrui__Appli__413471E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStageHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory]  WITH CHECK ADD  CONSTRAINT [FK__stlRecrui__Appli__413471E1] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[stlRecruiting_Applications] ([ApplicationID])
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__stlRecrui__Appli__413471E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStageHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] CHECK CONSTRAINT [FK__stlRecrui__Appli__413471E1]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__stlRecrui__Stage__4228961A]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStageHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory]  WITH CHECK ADD  CONSTRAINT [FK__stlRecrui__Stage__4228961A] FOREIGN KEY([StageID])
REFERENCES [dbo].[stlRecruiting_ApplicationStages] ([StageID])
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__stlRecrui__Stage__4228961A]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStageHistory]'))
ALTER TABLE [dbo].[stlRecruiting_ApplicationStageHistory] CHECK CONSTRAINT [FK__stlRecrui__Stage__4228961A]
