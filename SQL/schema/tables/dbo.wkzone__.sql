SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wkzone__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wkzone__](
	[wkzone__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_wkzo] PRIMARY KEY CLUSTERED 
(
	[wkzone__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wkzone__wkzone__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wkzone__] ADD  CONSTRAINT [DF_wkzone__wkzone__]  DEFAULT ('') FOR [wkzone__]
END

