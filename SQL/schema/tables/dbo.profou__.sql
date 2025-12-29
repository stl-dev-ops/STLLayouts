SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[profou__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[profou__](
	[prft_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prft_id1] PRIMARY KEY CLUSTERED 
(
	[prft_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_profou__prft_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[profou__] ADD  CONSTRAINT [DF_profou__prft_ref]  DEFAULT ('') FOR [prft_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_profou__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[profou__] ADD  CONSTRAINT [DF_profou__omschr__]  DEFAULT ('') FOR [omschr__]
END

