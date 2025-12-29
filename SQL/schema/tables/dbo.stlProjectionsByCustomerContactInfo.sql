SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerContactInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsByCustomerContactInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Phone] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Contact] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[State] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsByCustomerContactInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerContactInfo_Phone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerContactInfo] ADD  CONSTRAINT [DF_stlProjectionsByCustomerContactInfo_Phone]  DEFAULT ('') FOR [Phone]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerContactInfo_Contact]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerContactInfo] ADD  CONSTRAINT [DF_stlProjectionsByCustomerContactInfo_Contact]  DEFAULT ('') FOR [Contact]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerContactInfo_State]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerContactInfo] ADD  CONSTRAINT [DF_stlProjectionsByCustomerContactInfo_State]  DEFAULT ('') FOR [State]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerContactInfo_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerContactInfo] ADD  CONSTRAINT [DF_stlProjectionsByCustomerContactInfo_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerContactInfo_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerContactInfo] ADD  CONSTRAINT [DF_stlProjectionsByCustomerContactInfo_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerContactInfo_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerContactInfo] ADD  CONSTRAINT [DF_stlProjectionsByCustomerContactInfo_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

