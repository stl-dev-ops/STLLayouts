SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersContactInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectionsOfFutureCustomersID] [int] NOT NULL,
	[Phone] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Contact] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[State] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsOfFutureCustomersContactInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersContactInfo_Phone]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersContactInfo_Phone]  DEFAULT ('') FOR [Phone]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersContactInfo_Contact]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersContactInfo_Contact]  DEFAULT ('') FOR [Contact]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersContactInfo_State]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersContactInfo_State]  DEFAULT ('') FOR [State]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersContactInfo_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersContactInfo_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersContactInfo_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersContactInfo_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersContactInfo_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersContactInfo_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsOfFutureCustomersContactInfo_stlProjectionsOfFutureCustomers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersContactInfo]'))
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsOfFutureCustomersContactInfo_stlProjectionsOfFutureCustomers] FOREIGN KEY([ProjectionsOfFutureCustomersID])
REFERENCES [dbo].[stlProjectionsOfFutureCustomers] ([ProjectionsOfFutureCustomersID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsOfFutureCustomersContactInfo_stlProjectionsOfFutureCustomers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersContactInfo]'))
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersContactInfo] CHECK CONSTRAINT [FK_stlProjectionsOfFutureCustomersContactInfo_stlProjectionsOfFutureCustomers]
