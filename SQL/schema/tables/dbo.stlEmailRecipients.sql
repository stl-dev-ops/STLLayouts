SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmailRecipients]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmailRecipients](
	[EmailRecipientID] [int] IDENTITY(1,1) NOT NULL,
	[EmailName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[EmailAddress] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_stlEmailRecipients] PRIMARY KEY CLUSTERED 
(
	[EmailRecipientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailRecipients_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailRecipients] ADD  CONSTRAINT [DF_stlEmailRecipients_StartDate]  DEFAULT (getdate()) FOR [StartDate]
END

