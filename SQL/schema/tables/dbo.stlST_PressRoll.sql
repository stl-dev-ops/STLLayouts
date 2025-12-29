SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_PressRoll]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_PressRoll](
	[stlST_PressRollID] [int] IDENTITY(1,1) NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inh__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pressGoodLabels] [int] NOT NULL,
	[badRowsWasteLabels] [int] NOT NULL,
	[rewindWasteLabels] [int] NOT NULL,
	[rewindGoodLabels] [int] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[aantm_in] [real] NOT NULL,
	[goodCount] [int] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
	[flatrolls] [int] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[breedte_] [float] NOT NULL,
	[spoolJob] [bit] NOT NULL,
	[noTraceabilityNT] [bit] NOT NULL,
	[countPerBrickNT] [int] NOT NULL,
	[numberOfBricksNT] [int] NOT NULL,
	[vrs__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[exactLblPerRow] [bit] NOT NULL,
	[exactLblPerRowCount] [int] NOT NULL,
	[exactLblPerRowQty] [int] NOT NULL,
	[pressDefectCount] [int] NOT NULL,
	[pressDefectReason] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[pressDefectComment] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pressDefectLabels] [int] NOT NULL,
	[pressDefectDept] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlST_PressRoll] PRIMARY KEY CLUSTERED 
(
	[stlST_PressRollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_inh__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_inh__oms]  DEFAULT ('') FOR [inh__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_pressGoodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_pressGoodLabels]  DEFAULT ((0)) FOR [pressGoodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_badRowsWasteLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_badRowsWasteLabels]  DEFAULT ((0)) FOR [badRowsWasteLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_rewindWasteLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_rewindWasteLabels]  DEFAULT ((0)) FOR [rewindWasteLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_rewindGoodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_rewindGoodLabels]  DEFAULT ((0)) FOR [rewindGoodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_aantm_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_aantm_in]  DEFAULT ((0)) FOR [aantm_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_goodCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_goodCount]  DEFAULT ((0)) FOR [goodCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_flatrolls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_flatrolls]  DEFAULT ((0)) FOR [flatrolls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_tssnaf_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_tssnaf_h]  DEFAULT ((0)) FOR [tssnaf_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_spoolJob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_spoolJob]  DEFAULT ((0)) FOR [spoolJob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_noTraceabilityNT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_noTraceabilityNT]  DEFAULT ((0)) FOR [noTraceabilityNT]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_countPerBrickNT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_countPerBrickNT]  DEFAULT ((0)) FOR [countPerBrickNT]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_numberOfBricksNT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_numberOfBricksNT]  DEFAULT ((0)) FOR [numberOfBricksNT]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_exactLblPerRow]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_exactLblPerRow]  DEFAULT ((0)) FOR [exactLblPerRow]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_exactLblPerRowCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_exactLblPerRowCount]  DEFAULT ((0)) FOR [exactLblPerRowCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_exactLblPerRowQty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_exactLblPerRowQty]  DEFAULT ((0)) FOR [exactLblPerRowQty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_defectCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_defectCount]  DEFAULT ((0)) FOR [pressDefectCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_pressDefectReason]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_pressDefectReason]  DEFAULT ('') FOR [pressDefectReason]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_pressDefectComment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_pressDefectComment]  DEFAULT ('') FOR [pressDefectComment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_pressDefectLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_pressDefectLabels]  DEFAULT ((0)) FOR [pressDefectLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRoll_pressDefectDept]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRoll] ADD  CONSTRAINT [DF_stlST_PressRoll_pressDefectDept]  DEFAULT ('') FOR [pressDefectDept]
END

