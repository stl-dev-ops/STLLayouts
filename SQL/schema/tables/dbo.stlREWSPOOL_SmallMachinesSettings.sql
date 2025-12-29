SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_SmallMachinesSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_SmallMachinesSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlREWSPOOL_SmallMachinesSettingsID] [int] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[StartPosition] [float] NULL,
	[Pitch] [float] NULL,
	[MaterialWidth] [float] NULL,
	[PackageWidth] [float] NULL,
	[Dwell] [float] NULL,
	[DancerTension] [float] NULL,
	[LayonPressure] [float] NULL,
	[RanInDoubles] [tinyint] NULL,
	[BestSpeed] [float] NULL,
	[KeypadStamp] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[TaperTensionSetting] [float] NULL,
	[MaxSpoolSize] [float] NULL,
	[DiameterOfMaxSpoolSize] [float] NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlRS_SmallMachinesSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachinesSettings_KeypadStamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachinesSettings] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachinesSettings_KeypadStamp]  DEFAULT ('') FOR [KeypadStamp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachinesSettings_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachinesSettings] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachinesSettings_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_SmallMachinesSettings_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_SmallMachinesSettings] ADD  CONSTRAINT [DF_stlREWSPOOL_SmallMachinesSettings_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

