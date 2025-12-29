SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCC_OperatorInterventions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCC_OperatorInterventions](
	[ID] [int] NOT NULL,
	[StationID] [int] NOT NULL,
	[InterventionID] [int] NOT NULL,
 CONSTRAINT [PK_stlCC_OperatorInterventions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_OperatorInterventions_stlCC_OperatorInterventionTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_OperatorInterventions]'))
ALTER TABLE [dbo].[stlCC_OperatorInterventions]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_OperatorInterventions_stlCC_OperatorInterventionTypes] FOREIGN KEY([InterventionID])
REFERENCES [dbo].[stlCC_OperatorInterventionTypes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_OperatorInterventions_stlCC_OperatorInterventionTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_OperatorInterventions]'))
ALTER TABLE [dbo].[stlCC_OperatorInterventions] CHECK CONSTRAINT [FK_stlCC_OperatorInterventions_stlCC_OperatorInterventionTypes]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_OperatorInterventions_stlCC_Stations]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_OperatorInterventions]'))
ALTER TABLE [dbo].[stlCC_OperatorInterventions]  WITH CHECK ADD  CONSTRAINT [FK_stlCC_OperatorInterventions_stlCC_Stations] FOREIGN KEY([StationID])
REFERENCES [dbo].[stlCC_Stations] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlCC_OperatorInterventions_stlCC_Stations]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlCC_OperatorInterventions]'))
ALTER TABLE [dbo].[stlCC_OperatorInterventions] CHECK CONSTRAINT [FK_stlCC_OperatorInterventions_stlCC_Stations]
