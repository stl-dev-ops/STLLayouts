SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRollMeasurements]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_CoatingCardRollMeasurements](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CoatingCardRollID] [int] NOT NULL,
	[MeasurementNumber] [int] NOT NULL,
	[Measurement] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlCC_CoatingCardRollMeasurements] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollMeasurements_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollMeasurements_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollMeasurements_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollMeasurements_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollMeasurements_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollMeasurements_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollMeasurements_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollMeasurements_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCC_CoatingCardRollMeasurements_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCC_CoatingCardRollMeasurements] ADD  CONSTRAINT [DF_stlCC_CoatingCardRollMeasurements_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRollMeasurements_stlCC_CoatingCardRolls]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRollMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_CoatingCardRollMeasurements_stlCC_CoatingCardRolls] FOREIGN KEY([CoatingCardRollID])
REFERENCES [dbo].[stlCC_CoatingCardRolls] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_CoatingCardRollMeasurements_stlCC_CoatingCardRolls]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_CoatingCardRollMeasurements]'))
ALTER TABLE [dbo].[stlCC_CoatingCardRollMeasurements] CHECK CONSTRAINT [FK_stlCC_CoatingCardRollMeasurements_stlCC_CoatingCardRolls]
