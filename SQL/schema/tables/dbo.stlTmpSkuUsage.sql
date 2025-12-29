SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlTmpSkuUsage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlTmpSkuUsage](
	[batch] [datetime] NULL,
	[stns_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[sku] [nvarchar](8) COLLATE Latin1_General_CI_AS NULL,
	[usedCounter] [int] NULL,
	[remainingCounter] [int] NULL
) ON [PRIMARY]
END
