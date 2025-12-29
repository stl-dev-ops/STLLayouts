SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clstkl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[clstkl__](
	[stgy_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[is___pcm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [clstkli0] PRIMARY KEY CLUSTERED 
(
	[stgy_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstkl__stgy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstkl__] ADD  CONSTRAINT [DF_clstkl__stgy_ref]  DEFAULT ('') FOR [stgy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstkl__klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstkl__] ADD  CONSTRAINT [DF_clstkl__klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstkl__klr__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstkl__] ADD  CONSTRAINT [DF_clstkl__klr__vnr]  DEFAULT ('') FOR [klr__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstkl__is___pcm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstkl__] ADD  CONSTRAINT [DF_clstkl__is___pcm]  DEFAULT ('N') FOR [is___pcm]
END

