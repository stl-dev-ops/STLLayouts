SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPaychexImportOLD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPaychexImportOLD](
	[stlPaychexImportID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
	[lastName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[firstName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[clockingDate] [date] NOT NULL,
	[clockInType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[clockInTime] [time](7) NOT NULL,
	[clockOutType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[clockOutTime] [time](7) NOT NULL,
	[regular] [float] NOT NULL,
	[ot] [float] NOT NULL,
	[totalPaid] [float] NOT NULL,
	[unpaid] [float] NOT NULL
) ON [PRIMARY]
END
