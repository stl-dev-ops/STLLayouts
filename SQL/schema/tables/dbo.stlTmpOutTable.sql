SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlTmpOutTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlTmpOutTable](
	[batch] [datetime] NULL,
	[datum___] [datetime] NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[jobCounterNeeded] [int] NULL,
	[jobCounterRemaining] [int] NULL,
	[stns_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[stns_rpn] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[sku] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[currentSkuCounter] [int] NULL,
	[remainingBeforeJobSkuCounter] [int] NULL,
	[remainingAfterJobSkuCounter] [int] NULL,
	[dieCheck] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
END
