SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRecruiting_ApplicationStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRecruiting_ApplicationStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[StatusOrder] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRecruiting_ApplicationStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatus_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatus] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatus_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatus_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatus] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatus_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatus_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatus] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatus_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatus_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatus] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatus_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlRecruiting_ApplicationStatus_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlRecruiting_ApplicationStatus] ADD  CONSTRAINT [DF_stlRecruiting_ApplicationStatus_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

