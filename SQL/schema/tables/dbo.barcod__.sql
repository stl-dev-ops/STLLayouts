SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[barcod__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[barcod__](
	[bar__ref] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfbarcd] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [barcod_1] PRIMARY KEY CLUSTERED 
(
	[bar__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_barcod__bar__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[barcod__] ADD  CONSTRAINT [DF_barcod__bar__ref]  DEFAULT ('') FOR [bar__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_barcod__jdfbarcd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[barcod__] ADD  CONSTRAINT [DF_barcod__jdfbarcd]  DEFAULT ('') FOR [jdfbarcd]
END

