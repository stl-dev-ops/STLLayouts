SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlNIP_Approvals]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlNIP_Approvals](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NULL,
	[AprovalFirstDayOfMonth] [datetime] NOT NULL,
	[Approved] [tinyint] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlNIP_Approvals] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_Approvals_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_Approvals] ADD  CONSTRAINT [DF_stlNIP_Approvals_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_Approvals_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_Approvals] ADD  CONSTRAINT [DF_stlNIP_Approvals_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlNIP_Approvals_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlNIP_Approvals] ADD  CONSTRAINT [DF_stlNIP_Approvals_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

