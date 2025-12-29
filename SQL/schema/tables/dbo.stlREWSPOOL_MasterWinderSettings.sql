SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_MasterWinderSettings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlREWSPOOL_MasterWinderSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stlREWSPOOL_MasterWinderSettingsID] [int] NOT NULL,
	[StartPosition] [float] NULL,
	[MaterialWidth] [float] NULL,
	[PackageWidth] [float] NULL,
	[Pitch] [float] NULL,
	[Dwell] [float] NULL,
	[RecipeNumber] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[TensionSetPoint] [float] NULL,
	[TaperTensionSetting] [float] NULL,
	[BrakesetPoint] [float] NULL,
	[EndOfRollSetPoint] [float] NULL,
	[BestSpeed] [float] NULL,
	[UWTaper] [float] NULL,
	[LittleNips] [float] NULL,
	[LayonPressure] [float] NULL,
	[MaxSpoolSize] [float] NULL,
	[DiameterOfMaxSpoolSize] [float] NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlREWSPOOL_MasterWinderSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_MasterWinderSettings_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_MasterWinderSettings] ADD  CONSTRAINT [DF_stlREWSPOOL_MasterWinderSettings_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlREWSPOOL_MasterWinderSettings_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlREWSPOOL_MasterWinderSettings] ADD  CONSTRAINT [DF_stlREWSPOOL_MasterWinderSettings_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_MasterWinderSettings_stlREWSPOOL_MasterWinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_MasterWinderSettings]'))
ALTER TABLE [dbo].[stlREWSPOOL_MasterWinderSettings]  WITH CHECK ADD  CONSTRAINT [FK_stlREWSPOOL_MasterWinderSettings_stlREWSPOOL_MasterWinder] FOREIGN KEY([stlREWSPOOL_MasterWinderSettingsID])
REFERENCES [dbo].[stlREWSPOOL_MasterWinder] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlREWSPOOL_MasterWinderSettings_stlREWSPOOL_MasterWinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlREWSPOOL_MasterWinderSettings]'))
ALTER TABLE [dbo].[stlREWSPOOL_MasterWinderSettings] CHECK CONSTRAINT [FK_stlREWSPOOL_MasterWinderSettings_stlREWSPOOL_MasterWinder]
