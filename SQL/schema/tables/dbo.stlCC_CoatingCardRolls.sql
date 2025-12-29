SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CoatingCardRolls](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CoatingCardID] [int] NULL,
	[SKU] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[RollNumber] [int] NULL,
	[FacesheetSKU] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[FacesheetManufacturerRollNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[LinerSKU] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[LinerManufacturerRollNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[F_S_Footage] [int] NULL,
	[LinerFootage] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[FlagIn] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[TotalGoodFeet] [int] NULL,
	[PumpSpeed] [float] NULL,
	[LinerReleasesFromAdhesive] [int] NULL,
	[LinerReleasesFromAdhesivePassFail] [int] NULL,
	[BreakawayPeelTestCleanPeelOffGlossCard] [int] NULL,
	[BreakawayPeelTestCleanPeelOffGlossCardPassFail] [int] NULL,
	[MagneticMaterialAdhesiveAppliedToShinySideOfMag] [int] NULL,
	[MagneticMaterialAdhesiveAppliedToShinySideOfMagPassFail] [int] NULL,
	[VoidTextCheckPassFail] [int] NULL,
	[DashCColorCheckPassFail] [int] NULL,
	[PSI] [float] NULL,
	[OnQaHold] [tinyint] NULL,
	[QA_Approval] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[QAHold] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PSIDate] [datetime] NULL,
	[PalletNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Comment] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Face] [float] NULL,
	[Liner] [float] NULL,
	[AdhesiveTarget] [float] NULL,
	[ToleranceID] [int] NULL,
	[AdhesiveThickness] [float] NULL,
	[LockMeasurements] [tinyint] NULL,
	[SplicesInRoll] [int] NULL,
 CONSTRAINT [PK_stlCC_CoatingCardRollValues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRolls_OnQaHold]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] ADD  CONSTRAINT [DF_stlCC_CoatingCardRolls_OnQaHold]  DEFAULT ((0)) FOR [OnQaHold]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollValues_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollValues_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollValues_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollValues_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollValues_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollValues_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollValues_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollValues_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollValues_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollValues_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRolls_LockMeasurements]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] ADD  CONSTRAINT [DF_stlCC_CoatingCardRolls_LockMeasurements]  DEFAULT ((0)) FOR [LockMeasurements]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_CoatingCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_CoatingCards] FOREIGN KEY([CoatingCardID])
REFERENCES [dbo].[stlCC_CoatingCards] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_CoatingCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] CHECK CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_CoatingCards]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail] FOREIGN KEY([LinerReleasesFromAdhesivePassFail])
REFERENCES [dbo].[stlCC_PassFail] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] CHECK CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail1] FOREIGN KEY([BreakawayPeelTestCleanPeelOffGlossCardPassFail])
REFERENCES [dbo].[stlCC_PassFail] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] CHECK CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail1]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail2] FOREIGN KEY([MagneticMaterialAdhesiveAppliedToShinySideOfMagPassFail])
REFERENCES [dbo].[stlCC_PassFail] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] CHECK CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail2]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail3]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail3] FOREIGN KEY([VoidTextCheckPassFail])
REFERENCES [dbo].[stlCC_PassFail] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail3]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] CHECK CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail3]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail4]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail4] FOREIGN KEY([DashCColorCheckPassFail])
REFERENCES [dbo].[stlCC_PassFail] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_PassFail4]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] CHECK CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_PassFail4]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_Tolerances]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_Tolerances] FOREIGN KEY([ToleranceID])
REFERENCES [dbo].[stlCC_Tolerances] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRolls_stlCC_Tolerances]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRolls]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRolls] CHECK CONSTRAINT [FK_stlCC_CoatingCardRolls_stlCC_Tolerances]
