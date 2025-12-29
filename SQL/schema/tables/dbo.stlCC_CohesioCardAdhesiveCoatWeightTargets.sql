SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CohesioCardID] [int] NOT NULL,
	[AdhesiveTypeID] [int] NOT NULL,
	[AdhesiveRangeID] [int] NOT NULL,
	[Value] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_CohesioCardAdhesiveCoatWeights] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardAdhesiveCoatWeights_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets] ADD  CONSTRAINT [DF_stlCC_CohesioCardAdhesiveCoatWeights_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardAdhesiveCoatWeights_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets] ADD  CONSTRAINT [DF_stlCC_CohesioCardAdhesiveCoatWeights_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardAdhesiveCoatWeights_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets] ADD  CONSTRAINT [DF_stlCC_CohesioCardAdhesiveCoatWeights_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveRange]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]'))
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveRange] FOREIGN KEY([AdhesiveRangeID])
REFERENCES [dbo].[stlCC_AdhesiveRange] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveRange]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]'))
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets] CHECK CONSTRAINT [FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveRange]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]'))
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveType] FOREIGN KEY([AdhesiveTypeID])
REFERENCES [dbo].[stlCC_AdhesiveType] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]'))
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets] CHECK CONSTRAINT [FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_AdhesiveType]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]'))
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_CohesioCards] FOREIGN KEY([CohesioCardID])
REFERENCES [dbo].[stlCC_CohesioCards] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets]'))
ALTER TABLE [dbo].[stlCC_CohesioCardAdhesiveCoatWeightTargets] CHECK CONSTRAINT [FK_stlCC_CohesioCardAdhesiveCoatWeights_stlCC_CohesioCards]
