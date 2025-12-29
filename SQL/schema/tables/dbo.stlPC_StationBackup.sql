SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_StationBackup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_StationBackup](
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
	[stampNo] [int] NULL,
	[lineCount] [int] NULL,
	[BCM] [money] NULL,
	[newDate] [datetime] NULL,
	[klr___nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NULL,
	[scratchCodeStationNo] [int] NOT NULL,
	[stlPC_AniloxRevisionID] [int] NOT NULL,
	[revisionNo] [int] NOT NULL,
	[airDrying] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[UVCartridgeId] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[inkBatch] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
END
