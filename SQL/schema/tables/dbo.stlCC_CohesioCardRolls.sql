SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CohesioCardRolls](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CohesioCardID] [int] NOT NULL,
	[FinishedRollSKU] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[RollNumber] [int] NULL,
	[FacesheetOr1stPassSKU] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[LinerSKU] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[MachineSpeedFPM] [float] NULL,
	[GravureAniloxSpeedRatio] [float] NULL,
	[RollFootage] [float] NULL,
	[GlowOpSide] [float] NULL,
	[GlowCenter] [float] NULL,
	[GlowGearSide] [float] NULL,
	[Ftm4PassFailID] [int] NULL,
	[RollsBetweenTests] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Flexo1PrimerBatchNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[GravureAdhesiveBatchNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Flexo2PrimerBatchNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[GravureOperatorInterventionID] [int] NULL,
	[SiliconeOperatorInterventionID] [int] NULL,
	[HotMeltOperatorInterventionID] [int] NULL,
	[AdditionalOperatorInterventionID] [int] NULL,
	[AdhesionTestPassFailID] [int] NULL,
	[QAHoldYesNoID] [int] NULL,
	[OperatorQAComment] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_CohesioCardRolls] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRolls_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] ADD  CONSTRAINT [DF_stlCC_CohesioCardRolls_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRolls_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] ADD  CONSTRAINT [DF_stlCC_CohesioCardRolls_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRolls_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] ADD  CONSTRAINT [DF_stlCC_CohesioCardRolls_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRolls_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] ADD  CONSTRAINT [DF_stlCC_CohesioCardRolls_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CohesioCardRolls_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] ADD  CONSTRAINT [DF_stlCC_CohesioCardRolls_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_CohesioCards] FOREIGN KEY([CohesioCardID])
REFERENCES [dbo].[stlCC_CohesioCards] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_CohesioCards]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_CohesioCards]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions] FOREIGN KEY([GravureOperatorInterventionID])
REFERENCES [dbo].[stlCC_OperatorInterventions] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions1] FOREIGN KEY([SiliconeOperatorInterventionID])
REFERENCES [dbo].[stlCC_OperatorInterventions] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions1]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions2] FOREIGN KEY([HotMeltOperatorInterventionID])
REFERENCES [dbo].[stlCC_OperatorInterventions] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions2]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions2]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions3]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions3] FOREIGN KEY([AdditionalOperatorInterventionID])
REFERENCES [dbo].[stlCC_OperatorInterventions] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions3]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_OperatorInterventions3]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_PassFail]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_PassFail] FOREIGN KEY([Ftm4PassFailID])
REFERENCES [dbo].[stlCC_PassFail] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_PassFail]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_PassFail]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_PassFail1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_PassFail1] FOREIGN KEY([AdhesionTestPassFailID])
REFERENCES [dbo].[stlCC_PassFail] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_PassFail1]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_PassFail1]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_YesNoNa]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_YesNoNa] FOREIGN KEY([QAHoldYesNoID])
REFERENCES [dbo].[stlCC_YesNoNa] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CohesioCardRolls_stlCC_YesNoNa]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CohesioCardRolls]'))
ALTER TABLE [dbo].[stlCC_CohesioCardRolls] CHECK CONSTRAINT [FK_stlCC_CohesioCardRolls_stlCC_YesNoNa]
