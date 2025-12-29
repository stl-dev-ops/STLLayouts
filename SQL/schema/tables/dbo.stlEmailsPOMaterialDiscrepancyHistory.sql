SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmailsPOMaterialDiscrepancyHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmailsPOMaterialDiscrepancyHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderLineItemID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[DeliveredQuantity] [float] NOT NULL,
	[OrderedPrice] [float] NOT NULL,
	[InvoicedPrice] [float] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_stlEmailsPOMaterialDiscrepancyHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsPOMaterialDiscrepancyHistory_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsPOMaterialDiscrepancyHistory] ADD  CONSTRAINT [DF_stlEmailsPOMaterialDiscrepancyHistory_Created]  DEFAULT (getdate()) FOR [Created]
END

