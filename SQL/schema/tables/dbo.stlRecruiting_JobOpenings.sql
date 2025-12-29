SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_JobOpenings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_JobOpenings](
	[JobOpeningID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Department] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Location] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[JobStatusID] [int] NULL,
	[ClosedAt] [datetime] NULL,
	[HiringManagerID] [int] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_JobOpenings] PRIMARY KEY CLUSTERED 
(
	[JobOpeningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_JobOpenings_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_JobOpenings] ADD  CONSTRAINT [DF_stlRecruiting_JobOpenings_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__1555EFA3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_JobOpenings] ADD  CONSTRAINT [DF__stlRecrui__Creat__1555EFA3]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__164A13DC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_JobOpenings] ADD  CONSTRAINT [DF__stlRecrui__Creat__164A13DC]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__173E3815]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_JobOpenings] ADD  CONSTRAINT [DF__stlRecrui__Updat__173E3815]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__18325C4E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_JobOpenings] ADD  CONSTRAINT [DF__stlRecrui__Updat__18325C4E]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_JobOpenings_stlRecruiting_JobStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_JobOpenings]'))
ALTER TABLE [dbo].[stlRecruiting_JobOpenings]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_JobOpenings_stlRecruiting_JobStatuses] FOREIGN KEY([JobStatusID])
REFERENCES [dbo].[stlRecruiting_JobStatuses] ([JobStatusID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_JobOpenings_stlRecruiting_JobStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_JobOpenings]'))
ALTER TABLE [dbo].[stlRecruiting_JobOpenings] CHECK CONSTRAINT [FK_stlRecruiting_JobOpenings_stlRecruiting_JobStatuses]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_JobOpenings_stlRecruiting_Manager]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_JobOpenings]'))
ALTER TABLE [dbo].[stlRecruiting_JobOpenings]  WITH CHECK ADD  CONSTRAINT [FK_stlRecruiting_JobOpenings_stlRecruiting_Manager] FOREIGN KEY([HiringManagerID])
REFERENCES [dbo].[stlRecruiting_Manager] ([ManagerID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlRecruiting_JobOpenings_stlRecruiting_Manager]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_JobOpenings]'))
ALTER TABLE [dbo].[stlRecruiting_JobOpenings] CHECK CONSTRAINT [FK_stlRecruiting_JobOpenings_stlRecruiting_Manager]
