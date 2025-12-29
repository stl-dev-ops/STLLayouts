SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlNIP_PaychexPayrollBasedJournal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlNIP_PaychexPayrollBasedJournal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeID] [int] NOT NULL,
	[FirstName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[LastName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[JobTitle] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[PayTypesDescription] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Date] [datetime] NOT NULL,
	[Hours] [float] NOT NULL,
	[HireDate] [datetime] NOT NULL,
	[Level1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Level2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlNIP_PaychexPayrollBasedJournal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
