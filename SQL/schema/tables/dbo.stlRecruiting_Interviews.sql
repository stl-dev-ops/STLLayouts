SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Interviews](
	[InterviewID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[InterviewerID] [int] NULL,
	[InterviewDate] [datetime] NOT NULL,
	[StageID] [int] NOT NULL,
	[Feedback] [text] COLLATE Latin1_General_CI_AS NULL,
	[Score] [int] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Interviews] PRIMARY KEY CLUSTERED 
(
	[InterviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]') AND name = N'idx_stlRecruiting_Interviews_ApplicationID')
CREATE NONCLUSTERED INDEX [idx_stlRecruiting_Interviews_ApplicationID] ON [dbo].[stlRecruiting_Interviews]
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__45F926FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Interviews] ADD  CONSTRAINT [DF__stlRecrui__Creat__45F926FE]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__46ED4B37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Interviews] ADD  CONSTRAINT [DF__stlRecrui__Creat__46ED4B37]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__47E16F70]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Interviews] ADD  CONSTRAINT [DF__stlRecrui__Updat__47E16F70]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__48D593A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Interviews] ADD  CONSTRAINT [DF__stlRecrui__Updat__48D593A9]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Interviews_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Interviews_stlRecruiting_Applications] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[stlRecruiting_Applications] ([ApplicationID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Interviews_stlRecruiting_Applications]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews] CHECK CONSTRAINT [FK_stlRecruiting_Interviews_stlRecruiting_Applications]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Interviews_stlRecruiting_ApplicationStages]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Interviews_stlRecruiting_ApplicationStages] FOREIGN KEY([StageID])
REFERENCES [dbo].[stlRecruiting_ApplicationStages] ([StageID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Interviews_stlRecruiting_ApplicationStages]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews] CHECK CONSTRAINT [FK_stlRecruiting_Interviews_stlRecruiting_ApplicationStages]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Interviews_stlRecruiting_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Interviews_stlRecruiting_Users] FOREIGN KEY([InterviewID])
REFERENCES [dbo].[stlRecruiting_Users] ([UserID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Interviews_stlRecruiting_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews] CHECK CONSTRAINT [FK_stlRecruiting_Interviews_stlRecruiting_Users]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__stlRecrui__Score__450502C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews]  WITH CHECK ADD  CONSTRAINT [CK__stlRecrui__Score__450502C5] CHECK  (([score]>=(1) AND [score]<=(5)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__stlRecrui__Score__450502C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Interviews]'))
ALTER TABLE [dbo].[stlRecruiting_Interviews] CHECK CONSTRAINT [CK__stlRecrui__Score__450502C5]
