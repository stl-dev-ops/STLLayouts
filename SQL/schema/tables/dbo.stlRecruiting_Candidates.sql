SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Candidates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Candidates](
	[CandidateID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[LastName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Email] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Phone] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[empNo] [int] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Candidates] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_Candidates_FirstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF_stlRecruiting_Candidates_FirstName]  DEFAULT ('') FOR [FirstName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_Candidates_LastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF_stlRecruiting_Candidates_LastName]  DEFAULT ('') FOR [LastName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_Candidates_Email]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF_stlRecruiting_Candidates_Email]  DEFAULT ('') FOR [Email]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_Candidates_Phone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF_stlRecruiting_Candidates_Phone]  DEFAULT ('') FOR [Phone]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_Candidates_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF_stlRecruiting_Candidates_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__7AA1F967]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF__stlRecrui__Creat__7AA1F967]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__7B961DA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF__stlRecrui__Creat__7B961DA0]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__7C8A41D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF__stlRecrui__Updat__7C8A41D9]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__7D7E6612]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Candidates] ADD  CONSTRAINT [DF__stlRecrui__Updat__7D7E6612]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

