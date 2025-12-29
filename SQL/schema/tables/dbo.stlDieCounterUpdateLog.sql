SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlDieCounterUpdateLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlDieCounterUpdateLog](
	[stlDieCounterUpdateLogID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[DieID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[DieSKU] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[OldCount] [int] NULL,
	[NewCount] [int] NULL,
 CONSTRAINT [PK_stlDieCounterUpdateLog] PRIMARY KEY CLUSTERED 
(
	[stlDieCounterUpdateLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
