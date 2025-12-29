SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Applications](
	[ApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[JobOpeningID] [int] NULL,
	[ApplicationDate] [datetime] NOT NULL,
	[SourceID] [int] NULL,
	[CurrentStageID] [int] NULL,
	[CurrentStatusID] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Applications] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]') AND name = N'idx_stlRecruiting_Applications_CandidateID')
CREATE NONCLUSTERED INDEX [idx_stlRecruiting_Applications_CandidateID] ON [dbo].[stlRecruiting_Applications]
(
	[CandidateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]') AND name = N'idx_stlRecruiting_Applications_CurrentStageID')
CREATE NONCLUSTERED INDEX [idx_stlRecruiting_Applications_CurrentStageID] ON [dbo].[stlRecruiting_Applications]
(
	[CurrentStageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]') AND name = N'idx_stlRecruiting_Applications_JobOpeningID')
CREATE NONCLUSTERED INDEX [idx_stlRecruiting_Applications_JobOpeningID] ON [dbo].[stlRecruiting_Applications]
(
	[JobOpeningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Appli__33DA76C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Applications] ADD  CONSTRAINT [DF__stlRecrui__Appli__33DA76C3]  DEFAULT (getdate()) FOR [ApplicationDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_Applications_CurrentStatusID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Applications] ADD  CONSTRAINT [DF_stlRecruiting_Applications_CurrentStatusID]  DEFAULT ((1)) FOR [CurrentStatusID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__35C2BF35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Applications] ADD  CONSTRAINT [DF__stlRecrui__Creat__35C2BF35]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__36B6E36E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Applications] ADD  CONSTRAINT [DF__stlRecrui__Creat__36B6E36E]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__37AB07A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Applications] ADD  CONSTRAINT [DF__stlRecrui__Updat__37AB07A7]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__389F2BE0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Applications] ADD  CONSTRAINT [DF__stlRecrui__Updat__389F2BE0]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Applications_stlRecruiting_ApplicationStages]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]'))
ALTER TABLE [dbo].[stlRecruiting_Applications]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Applications_stlRecruiting_ApplicationStages] FOREIGN KEY([CurrentStageID])
REFERENCES [dbo].[stlRecruiting_ApplicationStages] ([StageID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Applications_stlRecruiting_ApplicationStages]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]'))
ALTER TABLE [dbo].[stlRecruiting_Applications] CHECK CONSTRAINT [FK_stlRecruiting_Applications_stlRecruiting_ApplicationStages]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Applications_stlRecruiting_ApplicationStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]'))
ALTER TABLE [dbo].[stlRecruiting_Applications]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Applications_stlRecruiting_ApplicationStatus] FOREIGN KEY([CurrentStatusID])
REFERENCES [dbo].[stlRecruiting_ApplicationStatus] ([StatusID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Applications_stlRecruiting_ApplicationStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]'))
ALTER TABLE [dbo].[stlRecruiting_Applications] CHECK CONSTRAINT [FK_stlRecruiting_Applications_stlRecruiting_ApplicationStatus]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Applications_stlRecruiting_Sources]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]'))
ALTER TABLE [dbo].[stlRecruiting_Applications]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_Applications_stlRecruiting_Sources] FOREIGN KEY([SourceID])
REFERENCES [dbo].[stlRecruiting_Sources] ([SourceID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_Applications_stlRecruiting_Sources]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Applications]'))
ALTER TABLE [dbo].[stlRecruiting_Applications] CHECK CONSTRAINT [FK_stlRecruiting_Applications_stlRecruiting_Sources]
