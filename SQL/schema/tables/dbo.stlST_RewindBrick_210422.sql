SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_RewindBrick_210422]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_RewindBrick_210422](
	[stlST_RewindBrickID] [int] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[closed] [bit] NOT NULL,
	[spoolJob] [bit] NOT NULL,
	[qaHold] [bit] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[rewindBrickNo] [int] NOT NULL,
	[goodCount] [int] NOT NULL,
	[goodLabels] [int] NOT NULL,
	[grossLabels] [int] NOT NULL,
	[roundedLabels] [int] NOT NULL,
	[labelsPerRow] [int] NOT NULL,
	[created_hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_closed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_closed]  DEFAULT ((0)) FOR [closed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_spoolJob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_spoolJob]  DEFAULT ((0)) FOR [spoolJob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_qaHold]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_qaHold]  DEFAULT ((0)) FOR [qaHold]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_rewindBrickNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_rewindBrickNo]  DEFAULT ((0)) FOR [rewindBrickNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_goodCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_goodCount]  DEFAULT ((0)) FOR [goodCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_goodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_goodLabels]  DEFAULT ((0)) FOR [goodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_grossLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_grossLabels]  DEFAULT ((0)) FOR [grossLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_roundedLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_roundedLabels]  DEFAULT ((0)) FOR [roundedLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_labelsPerRow]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_labelsPerRow]  DEFAULT ((0)) FOR [labelsPerRow]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_created_hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_created_hlf__ref]  DEFAULT ('') FOR [created_hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_210422_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick_210422] ADD  CONSTRAINT [DF_stlST_RewindBrick_210422_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

