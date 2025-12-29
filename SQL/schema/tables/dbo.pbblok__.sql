SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pbblok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pbblok__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wnref__b] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[wnref_db] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[wp___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[tijd___b] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[tijd__db] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [blok_id1] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
