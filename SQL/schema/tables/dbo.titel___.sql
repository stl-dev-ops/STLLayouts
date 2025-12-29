SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[titel___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[titel___](
	[titel___] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[tit__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_titl] PRIMARY KEY CLUSTERED 
(
	[titel___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_titel___titel___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[titel___] ADD  CONSTRAINT [DF_titel___titel___]  DEFAULT ('') FOR [titel___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_titel___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[titel___] ADD  CONSTRAINT [DF_titel___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_titel___tit__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[titel___] ADD  CONSTRAINT [DF_titel___tit__srt]  DEFAULT ('') FOR [tit__srt]
END

