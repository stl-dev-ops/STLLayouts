SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCustomerComplaintStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCustomerComplaintStatus](
	[stlCustomerComplaintStatusID] [int] IDENTITY(0,1) NOT NULL,
	[Status] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCustomerComplaintStatus] PRIMARY KEY CLUSTERED 
(
	[stlCustomerComplaintStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
