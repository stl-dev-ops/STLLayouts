SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pressRollWaste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pressRollWaste](
	[pressRollWasteID] [int] IDENTITY(1,1) NOT NULL,
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inh__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[pressGoodLabels] [int] NOT NULL,
	[actualGoodLabels] [int] NOT NULL,
	[rewindWasteFt] [real] NOT NULL,
	[pressBadMaterialFt] [real] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[rewindBrickID] [int] NOT NULL,
	[aantm_in] [real] NOT NULL,
	[carryOverGoodLabels] [int] NOT NULL,
	[badRowsMaterialFt] [real] NOT NULL,
	[goodCount] [real] NOT NULL,
	[carryOverCount] [real] NOT NULL,
	[actualGoodFt] [real] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
	[noCarryover] [bit] NOT NULL,
	[carryOverGoodFt] [real] NOT NULL,
	[closed] [bit] NOT NULL,
	[flatrolls] [int] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[grossGoodLabels] [int] NOT NULL,
	[noTraceabilityNT] [bit] NOT NULL,
	[numberOfBricksNT] [int] NOT NULL,
	[countPerBrickNT] [int] NOT NULL,
 CONSTRAINT [PK_pressRollWaste] PRIMARY KEY CLUSTERED 
(
	[pressRollWasteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_inh__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_inh__oms]  DEFAULT ('') FOR [inh__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_pressGoodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_pressGoodLabels]  DEFAULT ((0)) FOR [pressGoodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_actualGoodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_actualGoodLabels]  DEFAULT ((0)) FOR [actualGoodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_rewindWasteFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_rewindWasteFt]  DEFAULT ((0)) FOR [rewindWasteFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_pressBadMaterialFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_pressBadMaterialFt]  DEFAULT ((0)) FOR [pressBadMaterialFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_aantm_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_aantm_in]  DEFAULT ((0)) FOR [aantm_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_carryOverGoodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_carryOverGoodLabels]  DEFAULT ((0)) FOR [carryOverGoodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_badRowsMaterialFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_badRowsMaterialFt]  DEFAULT ((0)) FOR [badRowsMaterialFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_goodCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_goodCount]  DEFAULT ((0)) FOR [goodCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_carryOverCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_carryOverCount]  DEFAULT ((0)) FOR [carryOverCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_actualGoodFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_actualGoodFt]  DEFAULT ((0)) FOR [actualGoodFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_noCarryover]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_noCarryover]  DEFAULT ((0)) FOR [noCarryover]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_carryOverGoodFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_carryOverGoodFt]  DEFAULT ((0)) FOR [carryOverGoodFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_closed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_closed]  DEFAULT ((0)) FOR [closed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_flatrolls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_flatrolls]  DEFAULT ((0)) FOR [flatrolls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_tssnaf_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_tssnaf_h]  DEFAULT ((0)) FOR [tssnaf_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_grossGoodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_grossGoodLabels]  DEFAULT ((0)) FOR [grossGoodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_noTraceabilityNT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_noTraceabilityNT]  DEFAULT ((0)) FOR [noTraceabilityNT]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_numberOfBricksNT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_numberOfBricksNT]  DEFAULT ((0)) FOR [numberOfBricksNT]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollWaste_countPerBrickNT]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollWaste] ADD  CONSTRAINT [DF_pressRollWaste_countPerBrickNT]  DEFAULT ((0)) FOR [countPerBrickNT]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollWaste_pressRollWaste]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollWaste]'))
ALTER TABLE [dbo].[pressRollWaste]  WITH CHECK ADD  CONSTRAINT [FK_pressRollWaste_pressRollWaste] FOREIGN KEY([pressRollWasteID])
REFERENCES [dbo].[pressRollWaste] ([pressRollWasteID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollWaste_pressRollWaste]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollWaste]'))
ALTER TABLE [dbo].[pressRollWaste] CHECK CONSTRAINT [FK_pressRollWaste_pressRollWaste]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollWaste_rewindBrick]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollWaste]'))
ALTER TABLE [dbo].[pressRollWaste]  WITH CHECK ADD  CONSTRAINT [FK_pressRollWaste_rewindBrick] FOREIGN KEY([rewindBrickID])
REFERENCES [dbo].[rewindBrick] ([rewindBrickID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollWaste_rewindBrick]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollWaste]'))
ALTER TABLE [dbo].[pressRollWaste] CHECK CONSTRAINT [FK_pressRollWaste_rewindBrick]
