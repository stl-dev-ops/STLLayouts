SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inkmap__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[inkmap__](
	[srtinkpp] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_inkt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [inkmapi0] PRIMARY KEY CLUSTERED 
(
	[srtinkpp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkmap__srtinkpp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkmap__] ADD  CONSTRAINT [DF_inkmap__srtinkpp]  DEFAULT ('') FOR [srtinkpp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkmap__srt_inkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkmap__] ADD  CONSTRAINT [DF_inkmap__srt_inkt]  DEFAULT ('0') FOR [srt_inkt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_inkmap__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inkmap__] ADD  CONSTRAINT [DF_inkmap__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

