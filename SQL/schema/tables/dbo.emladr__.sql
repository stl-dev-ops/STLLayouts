SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emladr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[emladr__](
	[eml__srt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[from____] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcc_____] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[cc______] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [emladri0] PRIMARY KEY CLUSTERED 
(
	[eml__srt] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emladr__eml__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emladr__] ADD  CONSTRAINT [DF_emladr__eml__srt]  DEFAULT ('') FOR [eml__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emladr__from____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emladr__] ADD  CONSTRAINT [DF_emladr__from____]  DEFAULT ('') FOR [from____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emladr__bcc_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emladr__] ADD  CONSTRAINT [DF_emladr__bcc_____]  DEFAULT ('') FOR [bcc_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_emladr__cc______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[emladr__] ADD  CONSTRAINT [DF_emladr__cc______]  DEFAULT ('') FOR [cc______]
END

