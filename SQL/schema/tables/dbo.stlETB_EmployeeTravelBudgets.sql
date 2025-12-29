SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlETB_EmployeeTravelBudgets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlETB_EmployeeTravelBudgets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeKeyword] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Budget] [decimal](18, 2) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlETB_EmployeeTravelBudgets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlETB_EmployeeTravelBudgets_Budget]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlETB_EmployeeTravelBudgets] ADD  CONSTRAINT [DF_stlETB_EmployeeTravelBudgets_Budget]  DEFAULT ((0)) FOR [Budget]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlETB_EmployeeTravelBudgets_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlETB_EmployeeTravelBudgets] ADD  CONSTRAINT [DF_stlETB_EmployeeTravelBudgets_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlETB_EmployeeTravelBudgets_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlETB_EmployeeTravelBudgets] ADD  CONSTRAINT [DF_stlETB_EmployeeTravelBudgets_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlETB_EmployeeTravelBudgets_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlETB_EmployeeTravelBudgets] ADD  CONSTRAINT [DF_stlETB_EmployeeTravelBudgets_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlETB_EmployeeTravelBudgets_Created1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlETB_EmployeeTravelBudgets] ADD  CONSTRAINT [DF_stlETB_EmployeeTravelBudgets_Created1]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlETB_EmployeeTravelBudgets_CreatedBy1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlETB_EmployeeTravelBudgets] ADD  CONSTRAINT [DF_stlETB_EmployeeTravelBudgets_CreatedBy1]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

