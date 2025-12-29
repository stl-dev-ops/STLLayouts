SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_Station]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_Station](
	[stlPC_StationID] [int] IDENTITY(1,1) NOT NULL,
	[stlPC_PressCardID] [int] NOT NULL,
	[stationNo] [int] NOT NULL,
	[ink__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[klpmsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[stlPC_StampID] [int] NULL,
	[IRPct] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[UVPower] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[lampHours] [int] NULL,
	[pmsEditable] [bit] NOT NULL,
	[managerOverrideAnilox] [bit] NOT NULL,
	[managerOverrideCoating] [bit] NOT NULL,
	[managerOverridePMS] [bit] NOT NULL,
	[stampNo] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[lineCount] [int] NULL,
	[BCM] [money] NULL,
	[newDate] [datetime] NULL,
	[klr___nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NULL,
	[scratchCodeStationNo] [int] NOT NULL,
	[stlPC_AniloxRevisionID] [int] NOT NULL,
	[revisionNo] [int] NOT NULL,
	[airDrying] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[UVCartridgeId] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[inkBatch] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlPC_Station] PRIMARY KEY CLUSTERED 
(
	[stlPC_StationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_ink__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_ink__ref]  DEFAULT ('') FOR [ink__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_klpmsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_klpmsref]  DEFAULT ('') FOR [klpmsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_IRPct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_IRPct]  DEFAULT ('') FOR [IRPct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_UVPower]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_UVPower]  DEFAULT ('') FOR [UVPower]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_lampHours]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_lampHours]  DEFAULT ((0)) FOR [lampHours]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_coatingEditable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_coatingEditable]  DEFAULT ((0)) FOR [pmsEditable]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_managerOverride]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_managerOverride]  DEFAULT ((0)) FOR [managerOverrideAnilox]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_managerOverrideCoating]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_managerOverrideCoating]  DEFAULT ((0)) FOR [managerOverrideCoating]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_managerOverridePMS]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_managerOverridePMS]  DEFAULT ((0)) FOR [managerOverridePMS]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_stampNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_stampNo]  DEFAULT ((0)) FOR [stampNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_lineCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_lineCount]  DEFAULT ((0)) FOR [lineCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_BCM]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_BCM]  DEFAULT ((0)) FOR [BCM]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_klr___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_klr___nr]  DEFAULT ('') FOR [klr___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_scratchCodeStationNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_scratchCodeStationNo]  DEFAULT ((0)) FOR [scratchCodeStationNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_stlPC_AniloxRevisionID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_stlPC_AniloxRevisionID]  DEFAULT ((1)) FOR [stlPC_AniloxRevisionID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_revisionNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_revisionNo]  DEFAULT ((15)) FOR [revisionNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_airDrying]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_airDrying]  DEFAULT ('') FOR [airDrying]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_UVCartridgeId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_UVCartridgeId]  DEFAULT ('') FOR [UVCartridgeId]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_Station_inkBatch]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_Station] ADD  CONSTRAINT [DF_stlPC_Station_inkBatch]  DEFAULT ('') FOR [inkBatch]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Station_stlPC_AniloxRevision]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Station]'))
ALTER TABLE [dbo].[stlPC_Station]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_Station_stlPC_AniloxRevision] FOREIGN KEY([stlPC_AniloxRevisionID])
REFERENCES [dbo].[stlPC_AniloxRevision] ([stlPC_AniloxRevisionID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Station_stlPC_AniloxRevision]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Station]'))
ALTER TABLE [dbo].[stlPC_Station] CHECK CONSTRAINT [FK_stlPC_Station_stlPC_AniloxRevision]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Station_stlPC_PressCard]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Station]'))
ALTER TABLE [dbo].[stlPC_Station]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_Station_stlPC_PressCard] FOREIGN KEY([stlPC_PressCardID])
REFERENCES [dbo].[stlPC_PressCard] ([stlPC_PressCardID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Station_stlPC_PressCard]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Station]'))
ALTER TABLE [dbo].[stlPC_Station] CHECK CONSTRAINT [FK_stlPC_Station_stlPC_PressCard]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Station_stlPC_Stamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Station]'))
ALTER TABLE [dbo].[stlPC_Station]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_Station_stlPC_Stamp] FOREIGN KEY([stlPC_StampID])
REFERENCES [dbo].[stlPC_Stamp] ([stlPC_StampID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_Station_stlPC_Stamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_Station]'))
ALTER TABLE [dbo].[stlPC_Station] CHECK CONSTRAINT [FK_stlPC_Station_stlPC_Stamp]
