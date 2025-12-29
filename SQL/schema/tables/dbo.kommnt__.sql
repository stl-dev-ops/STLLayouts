SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kommnt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kommnt__](
	[kmnt_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kmnt_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kmnt_txt] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_kmnt] PRIMARY KEY CLUSTERED 
(
	[kmnt_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kommnt__kmnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kommnt__] ADD  CONSTRAINT [DF_kommnt__kmnt_ref]  DEFAULT ('') FOR [kmnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kommnt__kmnt_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kommnt__] ADD  CONSTRAINT [DF_kommnt__kmnt_srt]  DEFAULT ('') FOR [kmnt_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kommnt__kmnt_txt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kommnt__] ADD  CONSTRAINT [DF_kommnt__kmnt_txt]  DEFAULT ('') FOR [kmnt_txt]
END

