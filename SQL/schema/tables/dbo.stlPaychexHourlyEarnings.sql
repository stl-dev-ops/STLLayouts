SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPaychexHourlyEarnings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPaychexHourlyEarnings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
	[FirstDayOfMonth] [datetime] NOT NULL,
	[RegularAmounts] [float] NULL,
	[RegularHours] [float] NULL,
	[OvertimeAmounts] [float] NULL,
	[OvertimeHours] [float] NULL,
	[TotalEarningsAndReimbursements] [float] NULL,
	[TotalErBenifitsCost] [float] NULL,
	[TotalErTaxes] [float] NULL,
	[TotalLaborCost] [float] NULL,
 CONSTRAINT [PK_stlPaychexHourlyEarnings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
