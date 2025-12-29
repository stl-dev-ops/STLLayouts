SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRollMeasurements]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CohesioCardRollMeasurements](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CohesioRollID] [int] NOT NULL,
	[AdhesiveTypeID] [int] NULL,
	[SideID] [int] NOT NULL,
	[Value] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_CohesioCardRollMeasurements] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRollMeasurements_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CohesioCardRollMeasurements_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRollMeasurements_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CohesioCardRollMeasurements_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRollMeasurements_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CohesioCardRollMeasurements_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRollMeasurements_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CohesioCardRollMeasurements_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRollMeasurements_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CohesioCardRollMeasurements_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRollMeasurements_stlCC_AdhesiveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRollMeasurements_stlCC_AdhesiveType] FOREIGN KEY([AdhesiveTypeID])
REFERENCES [dbo].[stlCC_AdhesiveType] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRollMeasurements_stlCC_AdhesiveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] CHECK CONSTRAINT [FK_stlCC_CohesioCardRollMeasurements_stlCC_AdhesiveType]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRollMeasurements_stlCC_CoatWeightMeasurementSides]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRollMeasurements_stlCC_CoatWeightMeasurementSides] FOREIGN KEY([SideID])
REFERENCES [dbo].[stlCC_CoatWeightMeasurementSides] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRollMeasurements_stlCC_CoatWeightMeasurementSides]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] CHECK CONSTRAINT [FK_stlCC_CohesioCardRollMeasurements_stlCC_CoatWeightMeasurementSides]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRollMeasurements_stlCC_CohesioCardRolls]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRollMeasurements_stlCC_CohesioCardRolls] FOREIGN KEY([CohesioRollID])
REFERENCES [dbo].[stlCC_CohesioCardRolls] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRollMeasurements_stlCC_CohesioCardRolls]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRollMeasurements] CHECK CONSTRAINT [FK_stlCC_CohesioCardRollMeasurements_stlCC_CohesioCardRolls]
