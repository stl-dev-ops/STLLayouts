SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_PressCard]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_PressCard](
	[stlPC_PressCardID] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[stlPC_PressID] [int] NOT NULL,
	[temperature] [int] NULL,
	[pressRollFt] [int] NULL,
	[unwindBrakeTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[inFeedDriveSetting] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[inFeedNipPressure] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[middleNipPressure] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[exitNipPressure] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[rewindTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[recordPressSpeed] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[locked] [bit] NOT NULL,
	[pressRollFrom] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[pressRollTo] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[stlPC_ScratchCodeID] [int] NULL,
	[scratchCodeVersion] [int] NULL,
	[note] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[pressCardVersion] [int] NULL,
	[coronaTreatSide] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[strippingBarNo] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[vpak_oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[meter_mx_msg] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[pressRunStartDate] [datetime] NULL,
	[materialType] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[midFeedNumerator] [float] NULL,
	[outFeedNumerator] [float] NULL,
	[drawSpeedPct] [float] NULL,
	[coldFoilStartTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[coldFoilEndTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[laminationStartTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[laminationEndTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[wasteStartTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[wasteEndTension] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[autoRegistration] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[vdpUsed] [bit] NULL,
	[vdpb4StationNo] [int] NULL,
 CONSTRAINT [PK_stlPC_PressCard] PRIMARY KEY CLUSTERED 
(
	[stlPC_PressCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_stlPC_PressID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_stlPC_PressID]  DEFAULT ('') FOR [stlPC_PressID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_temperature]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_temperature]  DEFAULT ((0)) FOR [temperature]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_pressRollFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_pressRollFt]  DEFAULT ((0)) FOR [pressRollFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_unwindBrakeTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_unwindBrakeTension]  DEFAULT ('') FOR [unwindBrakeTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_inFeedDriveSetting]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_inFeedDriveSetting]  DEFAULT ('') FOR [inFeedDriveSetting]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_inFeedNipPressure]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_inFeedNipPressure]  DEFAULT ('') FOR [inFeedNipPressure]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_middleNipPressure]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_middleNipPressure]  DEFAULT ('') FOR [middleNipPressure]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_exitNipPressure]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_exitNipPressure]  DEFAULT ('') FOR [exitNipPressure]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_rewindTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_rewindTension]  DEFAULT ('') FOR [rewindTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_recordPressSpeed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_recordPressSpeed]  DEFAULT ('') FOR [recordPressSpeed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_locked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_locked]  DEFAULT ((0)) FOR [locked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_pressRollFrom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_pressRollFrom]  DEFAULT ('') FOR [pressRollFrom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_pressRollTo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_pressRollTo]  DEFAULT (N'''') FOR [pressRollTo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_stlPC_ScratchCodeID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_stlPC_ScratchCodeID]  DEFAULT ((0)) FOR [stlPC_ScratchCodeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_scratchCodeVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_scratchCodeVersion]  DEFAULT ((0)) FOR [scratchCodeVersion]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_note]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_note]  DEFAULT ('') FOR [note]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_pressCardVersion]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_pressCardVersion]  DEFAULT ((1)) FOR [pressCardVersion]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_coronaTreatSide]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_coronaTreatSide]  DEFAULT ('') FOR [coronaTreatSide]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_strippingBarNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_strippingBarNo]  DEFAULT ('') FOR [strippingBarNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_vpak_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_vpak_oms]  DEFAULT ('') FOR [vpak_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_estPressRollFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_estPressRollFt]  DEFAULT ('') FOR [meter_mx_msg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_materialType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_materialType]  DEFAULT ('') FOR [materialType]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_midFeedNumerator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_midFeedNumerator]  DEFAULT ((0.0)) FOR [midFeedNumerator]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_outFeedNumerator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_outFeedNumerator]  DEFAULT ((0.0)) FOR [outFeedNumerator]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_drawSpeedPct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_drawSpeedPct]  DEFAULT ((0.0)) FOR [drawSpeedPct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_coldFoilStartTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_coldFoilStartTension]  DEFAULT ('') FOR [coldFoilStartTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_coldFoilEndTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_coldFoilEndTension]  DEFAULT ('') FOR [coldFoilEndTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_laminationStartTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_laminationStartTension]  DEFAULT ('') FOR [laminationStartTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_laminationEndTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_laminationEndTension]  DEFAULT ('') FOR [laminationEndTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_wasteStartTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_wasteStartTension]  DEFAULT ('') FOR [wasteStartTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_wasteEndTension]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_wasteEndTension]  DEFAULT ('') FOR [wasteEndTension]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_autoRegistration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_autoRegistration]  DEFAULT ('') FOR [autoRegistration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_VDPUsed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_VDPUsed]  DEFAULT ((0)) FOR [vdpUsed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_PressCard_b4StationNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_PressCard] ADD  CONSTRAINT [DF_stlPC_PressCard_b4StationNo]  DEFAULT ((0)) FOR [vdpb4StationNo]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_PressCard_stlPC_Press]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_PressCard]'))
ALTER TABLE [dbo].[stlPC_PressCard]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_PressCard_stlPC_Press] FOREIGN KEY([stlPC_PressID])
REFERENCES [dbo].[stlPC_Press] ([stlPC_PressID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_PressCard_stlPC_Press]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_PressCard]'))
ALTER TABLE [dbo].[stlPC_PressCard] CHECK CONSTRAINT [FK_stlPC_PressCard_stlPC_Press]
