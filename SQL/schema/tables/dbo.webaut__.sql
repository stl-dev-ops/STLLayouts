SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webaut__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webaut__](
	[supervis] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [webauti0] PRIMARY KEY CLUSTERED 
(
	[supervis] ASC,
	[user____] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_webaut__supervis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webaut__] ADD  CONSTRAINT [DF_webaut__supervis]  DEFAULT ('') FOR [supervis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_webaut__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webaut__] ADD  CONSTRAINT [DF_webaut__user____]  DEFAULT ('') FOR [user____]
END

