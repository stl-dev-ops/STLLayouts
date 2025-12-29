SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYear]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsByCustomerByYear](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectionYear] [int] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProjectedValue] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsByCustomerByYear] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYear_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYear] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYear_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYear_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYear] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYear_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYear_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYear] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYear_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYear_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYear] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYear_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

