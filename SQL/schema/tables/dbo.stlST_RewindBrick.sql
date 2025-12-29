SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_RewindBrick]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_RewindBrick](
	[stlST_RewindBrickID] [int] IDENTITY(1,1) NOT NULL,
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
	[wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[splices] [int] NOT NULL,
	[brickDefectReason] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[brickDefectComment] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brickDefectDept] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[QACheck] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlST_RewindBrick] PRIMARY KEY CLUSTERED 
(
	[stlST_RewindBrickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_closed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_closed]  DEFAULT ((0)) FOR [closed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_spoolJob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_spoolJob]  DEFAULT ((0)) FOR [spoolJob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_qaHold]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_qaHold]  DEFAULT ((0)) FOR [qaHold]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_rewindBrickNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_rewindBrickNo]  DEFAULT ((0)) FOR [rewindBrickNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_goodCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_goodCount]  DEFAULT ((0)) FOR [goodCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_goodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_goodLabels]  DEFAULT ((0)) FOR [goodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_grossLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_grossLabels]  DEFAULT ((0)) FOR [grossLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_roundedLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_roundedLabels]  DEFAULT ((0)) FOR [roundedLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_labelsPerRow]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_labelsPerRow]  DEFAULT ((0)) FOR [labelsPerRow]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_created_hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_created_hlf__ref]  DEFAULT ('') FOR [created_hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_splices]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_splices]  DEFAULT ((0)) FOR [splices]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlST_Rew__brick__7221C1FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  DEFAULT ('') FOR [brickDefectReason]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlST_Rew__brick__7315E638]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  DEFAULT ('') FOR [brickDefectComment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stlST_Rew__brick__740A0A71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  DEFAULT ('') FOR [brickDefectDept]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrick_QACheck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_RewindBrick_QACheck]  DEFAULT ('') FOR [QACheck]
END

