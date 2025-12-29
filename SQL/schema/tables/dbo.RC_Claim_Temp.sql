SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RC_Claim_Temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RC_Claim_Temp](
	[RC] [varchar](20) COLLATE Latin1_General_CI_AS NULL,
	[artd_ref] [int] NULL
) ON [PRIMARY]
END
