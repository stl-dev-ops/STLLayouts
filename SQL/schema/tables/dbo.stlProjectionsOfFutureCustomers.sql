SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsOfFutureCustomers](
	[ProjectionsOfFutureCustomersID] [int] IDENTITY(1,1) NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProjectionDescription] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsOfFutureCustomers] PRIMARY KEY CLUSTERED 
(
	[ProjectionsOfFutureCustomersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomers_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomers] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomers_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomers_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomers] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomers_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomers_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomers] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomers_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomers_Created1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomers] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomers_Created1]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomers_CreatedBy1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomers] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomers_CreatedBy1]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

