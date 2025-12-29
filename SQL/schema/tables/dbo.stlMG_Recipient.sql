SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMG_Recipient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMG_Recipient](
	[stlMG_RecipientID] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[recipientName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[block] [bit] NOT NULL,
 CONSTRAINT [PK_stlMG_Recipient] PRIMARY KEY CLUSTERED 
(
	[stlMG_RecipientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMG_Recipient_address]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMG_Recipient] ADD  CONSTRAINT [DF_stlMG_Recipient_address]  DEFAULT ('') FOR [address]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMG_Recipient_recipientName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMG_Recipient] ADD  CONSTRAINT [DF_stlMG_Recipient_recipientName]  DEFAULT ('') FOR [recipientName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMG_Recipient_block]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMG_Recipient] ADD  CONSTRAINT [DF_stlMG_Recipient_block]  DEFAULT ((0)) FOR [block]
END

