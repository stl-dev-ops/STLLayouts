SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCJ_RollSize]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCJ_RollSize](
	[stlCJ_RolSizeID] [int] IDENTITY(1,1) NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rollSize] [int] NOT NULL,
	[labelRepeat] [float] NOT NULL,
	[brickFt] [int] NOT NULL,
	[numOfBricks] [int] NOT NULL,
	[secondPassCRFt] [int] NOT NULL,
	[numof2ndPassCR] [int] NOT NULL,
	[firstPassCRFt] [int] NOT NULL,
 CONSTRAINT [PK_stlCJ_RollSize] PRIMARY KEY CLUSTERED 
(
	[stlCJ_RolSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_rollSize]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_rollSize]  DEFAULT ((0)) FOR [rollSize]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_labelRepeat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_labelRepeat]  DEFAULT ((0)) FOR [labelRepeat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_brickFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_brickFt]  DEFAULT ((0)) FOR [brickFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_numOfBricks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_numOfBricks]  DEFAULT ((0)) FOR [numOfBricks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_secondPassCRFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_secondPassCRFt]  DEFAULT ((0)) FOR [secondPassCRFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_numof2ndPassCR]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_numof2ndPassCR]  DEFAULT ((0)) FOR [numof2ndPassCR]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_RollSize_firstPassCRFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_RollSize] ADD  CONSTRAINT [DF_stlCJ_RollSize_firstPassCRFt]  DEFAULT ((0)) FOR [firstPassCRFt]
END

