SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmails](
	[EmailID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](255) COLLATE Latin1_General_100_CI_AS_SC NULL,
	[Body] [nvarchar](max) COLLATE Latin1_General_100_CI_AS_SC NULL,
	[AttachmentFullPath] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[RecipientsCSV] [nvarchar](500) COLLATE Latin1_General_CI_AS NOT NULL,
	[Sent] [tinyint] NOT NULL,
	[SentTime] [datetime] NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_stlEmails] PRIMARY KEY CLUSTERED 
(
	[EmailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmails_Subject]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmails] ADD  CONSTRAINT [DF_stlEmails_Subject]  DEFAULT ('') FOR [Subject]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmails_Body]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmails] ADD  CONSTRAINT [DF_stlEmails_Body]  DEFAULT ('') FOR [Body]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmails_AttachmentFullPath]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmails] ADD  CONSTRAINT [DF_stlEmails_AttachmentFullPath]  DEFAULT ('') FOR [AttachmentFullPath]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmails_RecipientsCSV]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmails] ADD  CONSTRAINT [DF_stlEmails_RecipientsCSV]  DEFAULT ('') FOR [RecipientsCSV]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmails_Sent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmails] ADD  CONSTRAINT [DF_stlEmails_Sent]  DEFAULT ((0)) FOR [Sent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmails_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmails] ADD  CONSTRAINT [DF_stlEmails_Created]  DEFAULT (getdate()) FOR [Created]
END

