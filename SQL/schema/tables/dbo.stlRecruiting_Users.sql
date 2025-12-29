SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[LastName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Email] [varchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[Role] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__014EF6F6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Users] ADD  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Creat__02431B2F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Users] ADD  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__03373F68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Users] ADD  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlRecrui__Updat__042B63A1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_Users] ADD  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__stlRecruit__Role__005AD2BD]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlRecruiting_Users]'))
ALTER TABLE [dbo].[stlRecruiting_Users]  WITH CHECK ADD CHECK  (([role]='Admin' OR [role]='Hiring Manager' OR [role]='Recruiter'))
