SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearMonthRevisions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsByCustomerByYearMonthRevisions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectionsByCustomerByYearID] [int] NOT NULL,
	[ProjectionMonth] [int] NOT NULL,
	[RevisedProjectedValue] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsByCustomerByYearMonthRevisions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearMonthRevisions_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearMonthRevisions] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearMonthRevisions_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearMonthRevisions_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearMonthRevisions] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearMonthRevisions_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearMonthRevisions_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearMonthRevisions] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearMonthRevisions_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByYearMonthRevisions_stlProjectionsByCustomerByYear]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearMonthRevisions]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearMonthRevisions]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsByCustomerByYearMonthRevisions_stlProjectionsByCustomerByYear] FOREIGN KEY([ProjectionsByCustomerByYearID])
REFERENCES [dbo].[stlProjectionsByCustomerByYear] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByYearMonthRevisions_stlProjectionsByCustomerByYear]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearMonthRevisions]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearMonthRevisions] CHECK CONSTRAINT [FK_stlProjectionsByCustomerByYearMonthRevisions_stlProjectionsByCustomerByYear]
