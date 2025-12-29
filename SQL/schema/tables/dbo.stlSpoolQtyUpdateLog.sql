SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSpoolQtyUpdateLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSpoolQtyUpdateLog](
	[stlSpoolQtyUpdateLogID] [int] IDENTITY(1,1) NOT NULL,
	[spoolID] [int] NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[OldQty] [int] NULL,
	[NewQty] [int] NULL,
	[LogDate] [datetime] NULL,
 CONSTRAINT [PK_stlSpoolQtyUpdateLog] PRIMARY KEY CLUSTERED 
(
	[stlSpoolQtyUpdateLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
