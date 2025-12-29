SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersMonthlyProjections]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjections](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectionsOfFutureCustomersID] [int] NOT NULL,
	[ProjectionYear] [int] NOT NULL,
	[ProjectionMonth] [int] NOT NULL,
	[ProjectionValue] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsOfFutureCustomersMonthlyProjections] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersMonthlyProjections_ProjectionValue]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjections] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersMonthlyProjections_ProjectionValue]  DEFAULT ((0)) FOR [ProjectionValue]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersMonthlyProjections_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjections] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersMonthlyProjections_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersMonthlyProjections_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjections] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersMonthlyProjections_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsOfFutureCustomersMonthlyProjections_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjections] ADD  CONSTRAINT [DF_stlProjectionsOfFutureCustomersMonthlyProjections_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsOfFutureCustomersMonthlyProjections_stlProjectionsOfFutureCustomers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersMonthlyProjections]'))
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjections]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsOfFutureCustomersMonthlyProjections_stlProjectionsOfFutureCustomers] FOREIGN KEY([ProjectionsOfFutureCustomersID])
REFERENCES [dbo].[stlProjectionsOfFutureCustomers] ([ProjectionsOfFutureCustomersID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsOfFutureCustomersMonthlyProjections_stlProjectionsOfFutureCustomers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersMonthlyProjections]'))
ALTER TABLE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjections] CHECK CONSTRAINT [FK_stlProjectionsOfFutureCustomersMonthlyProjections_stlProjectionsOfFutureCustomers]
