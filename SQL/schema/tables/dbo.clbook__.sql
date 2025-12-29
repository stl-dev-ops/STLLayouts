SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clbook__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[clbook__](
	[book_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bookname] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfcbook] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [clbooki0] PRIMARY KEY CLUSTERED 
(
	[book_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clbook__book_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clbook__] ADD  CONSTRAINT [DF_clbook__book_ref]  DEFAULT ('') FOR [book_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clbook__bookname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clbook__] ADD  CONSTRAINT [DF_clbook__bookname]  DEFAULT ('') FOR [bookname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clbook__jdfcbook]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clbook__] ADD  CONSTRAINT [DF_clbook__jdfcbook]  DEFAULT ('') FOR [jdfcbook]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clbook__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clbook__] ADD  CONSTRAINT [DF_clbook__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

